-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtlasHasOmission.Variant692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AtlasHasOmission.Variant692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/69/692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764--ProbeTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import FormalResearch.MathematicalTooling.Semantics.Atlas.ClosureFixtures


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtlasHasOmission.Variant692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764

open Lean Elab Command Meta
set_option pp.all true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 10000000
set_option maxRecDepth 8192
set_option maxHeartbeats 0
private partial def atlasHasOmission (stx : Syntax) : Bool :=
  stx.isOfKind ``Lean.Parser.Term.omission || stx.getArgs.any atlasHasOmission
private partial def atlasCanonicalType : Expr → Expr
  | .app fn arg => .app (atlasCanonicalType fn) (atlasCanonicalType arg)
  | .lam _ type body info => .lam .anonymous (atlasCanonicalType type) (atlasCanonicalType body) info
  | .forallE _ type body info =>
    .forallE .anonymous (atlasCanonicalType type) (atlasCanonicalType body) info
  | .letE _ type value body nondep =>
    .letE .anonymous (atlasCanonicalType type) (atlasCanonicalType value) (atlasCanonicalType body) nondep
  | .mdata _ expr => atlasCanonicalType expr
  | .proj type index expr => .proj type index (atlasCanonicalType expr)
  | expr => expr
private def atlasConstantKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"
run_cmd do
  let env ← getEnv
  for (name, info) in env.constants.toList do
    let some index := env.getModuleIdxFor? name | continue
    let owner := env.header.moduleNames[index.toNat]!
    unless owner.toString == "FormalResearch" || owner.toString.startsWith "FormalResearch." do
      continue
    let statement ← liftTermElabM do
      let rendered ← PrettyPrinter.ppUsing info.type fun expr => do
        let printedTerm ← PrettyPrinter.delab expr
        if atlasHasOmission printedTerm.raw then
          throwError "Atlas inventory type was truncated: {name}"
        pure printedTerm
      return rendered.pretty 100000
    let axioms ← collectAxioms name
    let levels := info.levelParams.zipIdx.map fun (_, index) =>
      Level.param (.str .anonymous ("u" ++ toString index))
    let canonicalType := atlasCanonicalType (info.type.instantiateLevelParams info.levelParams levels)
    let value := match info with
      | .defnInfo definition => some definition.value
      | .opaqueInfo definition => some definition.value
      | _ => none
    let canonicalValue := value.map fun body => reprStr
      (atlasCanonicalType (body.instantiateLevelParams info.levelParams levels))
    let payload := Json.mkObj [
      ("name", toJson name.toString),
      ("user_name", toJson (privateToUserName name).toString),
      ("module", toJson owner.toString),
      ("kind", toJson (atlasConstantKind info)),
      ("level_params", toJson (info.levelParams.map Name.toString)),
      ("type", toJson statement),
      ("type_expr", toJson (reprStr canonicalType)),
      ("value_expr", toJson canonicalValue),
      ("axioms", toJson (axioms.map Name.toString))]
    liftIO <| IO.println ("FORMAL_ATLAS_DECLARATION=" ++ payload.compress)
