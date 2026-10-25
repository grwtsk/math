# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variantbeb3b459a5f8e5249c2d6b816018ed1aa121cd7c0b61608915d6bd84c1d101c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63bf890d8f3f0a0f43b651d49097895079d1e1f6` · SHA-256 `1afe1bd1c13834daba2f28bca5934352406ac0cc84f61a602102474cff3824ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arr.Variant88c4ca51e4b2fc1fcfbc012a8a8839364a7f8cac29a2ab0eaf9bff3090399e1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88c4ca51e4b2fc1fcfbc012a8a8839364a7f8cac29a2ab0eaf9bff3090399e1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Arr.Variant88c4ca51e4b2fc1fcfbc012a8a8839364a7f8cac29a2ab0eaf9bff3090399e1f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"88c4ca51e4b2fc1fcfbc012a8a8839364a7f8cac29a2ab0eaf9bff3090399e1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/riemann/lean/Audit/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

/-!
Engineering inventory producer. It observes the compiled kernel environment; it
does not declare or admit mathematical results. The Node driver captures source,
dependency, and compiled-file identities around this fixed native executable.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arr.Variant88c4ca51e4b2fc1fcfbc012a8a8839364a7f8cac29a2ab0eaf9bff3090399e1f

open Lean Meta

namespace RiemannAudit

def arr (xs : List Json) : Json := .arr xs.toArray

def nameJson : Name → Json
  | .anonymous => arr ["anonymous"]
  | .str p s => arr ["str", nameJson p, .str s]
  | .num p n => arr ["num", nameJson p, .str (toString n)]

def levelJson : Level → Json
  | .zero => arr ["zero"]
  | .succ u => arr ["succ", levelJson u]
  | .max u v => arr ["max", levelJson u, levelJson v]
  | .imax u v => arr ["imax", levelJson u, levelJson v]
  | .param n => arr ["param", nameJson n]
  | .mvar n => arr ["unresolved-level", nameJson n.name]

def binderJson : BinderInfo → Json
  | .default => "explicit"
  | .implicit => "implicit"
  | .strictImplicit => "strictImplicit"
  | .instImplicit => "instance"

def exprJson : Expr → Json
  | .bvar i => arr ["bvar", .str (toString i)]
  | .fvar i => arr ["unresolved-free", nameJson i.name]
  | .mvar i => arr ["unresolved-meta", nameJson i.name]
  | .sort u => arr ["sort", levelJson u]
  | .const n us => arr ["const", nameJson n, .arr (us.toArray.map levelJson)]
  | .app f a => arr ["app", exprJson f, exprJson a]
  | .lam n t b i => arr ["lam", nameJson n, exprJson t, exprJson b, binderJson i]
  | .forallE n t b i => arr ["forall", nameJson n, exprJson t, exprJson b, binderJson i]
  | .letE n t v b d => arr ["let", nameJson n, exprJson t, exprJson v, exprJson b, .bool d]
  | .lit (.natVal n) => arr ["nat", .str (toString n)]
  | .lit (.strVal s) => arr ["string", .str s]
  | .mdata _ e => exprJson e
  | .proj s i e => arr ["proj", nameJson s, .str (toString i), exprJson e]

def kind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

def moduleFor (env : Environment) (n : Name) : String :=
  match env.getModuleIdxFor? n with
  | some i => env.header.moduleNames[i]!.toString
  | none => ""

def constants (e : Expr) : Array Name := e.getUsedConstants.qsort Name.lt

def references (c : ConstantInfo) : Array Name :=
  let values := c.value? (allowOpaque := true) |>.map constants |>.getD #[]
  let constructors := match c with
    | .inductInfo info => info.ctors.toArray
    | _ => #[]
  constants c.type ++ values ++ constructors

partial def closure (env : Environment) (todo : List Name) (seen : NameSet := {})
    (axioms : NameSet := {}) (unsafeNames : NameSet := {}) (partialNames : NameSet := {}) :
    Except String Json := do
  match todo with
  | [] => return Json.mkObj [
      ("constants", toJson (seen.toArray.qsort Name.lt |>.map Name.toString)),
      ("axioms", toJson (axioms.toArray.qsort Name.lt |>.map Name.toString)),
      ("unsafeConstants", toJson (unsafeNames.toArray.qsort Name.lt |>.map Name.toString)),
      ("partialConstants", toJson (partialNames.toArray.qsort Name.lt |>.map Name.toString))]
  | n :: rest =>
    if seen.contains n then closure env rest seen axioms unsafeNames partialNames
    else
      let some info := env.find? n | throw "missing constant in transitive closure"
      closure env ((references info).toList ++ rest) (seen.insert n)
        (if kind info == "axiom" then axioms.insert n else axioms)
        (if info.isUnsafe then unsafeNames.insert n else unsafeNames)
        (if info.isPartial then partialNames.insert n else partialNames)

def binders (type : Expr) : MetaM (Array Json) :=
  forallTelescopeReducing type fun variables _ =>
    variables.mapIdxM fun index bound => do
      let declaration ← getFVarLocalDecl bound
      let proposition ← isProp declaration.type
      return Json.mkObj [
        ("index", toJson index), ("name", nameJson declaration.userName),
        ("binder", binderJson declaration.binderInfo),
        ("type", exprJson (declaration.type.abstractRange index variables)),
        ("isProposition", toJson proposition)]

def observation (env : Environment) (info : ConstantInfo) : MetaM Json := do
  let axioms ← collectAxioms info.name
  let typeText ← ppExpr info.type
  let proof ← isProp info.type
  let typeBinders ← binders info.type
  let value := info.value? (allowOpaque := true)
  let valueConstants := value.map constants |>.getD #[]
  let dependencyClosure ← match closure env [info.name] with
    | .ok result => pure result
    | .error _ => throwError "transitive constant audit failed"
  return Json.mkObj [
    ("name", toJson info.name.toString), ("nameStructure", nameJson info.name),
    ("module", toJson (moduleFor env info.name)), ("kind", toJson (kind info)),
    ("levelParameters", .arr (info.levelParams.toArray.map nameJson)),
    ("type", exprJson info.type), ("typeDisplay", toJson typeText.pretty),
    ("value", value.map exprJson |>.getD .null),
    ("isProposition", toJson proof), ("typeBinders", .arr typeBinders),
    ("typeBinderNormalization", "Lean.Meta.forallTelescopeReducing"),
    ("directTypeConstants", toJson ((constants info.type).map Name.toString)),
    ("directValueConstants", toJson (valueConstants.map Name.toString)),
    ("transitiveAxioms", toJson (axioms.map Name.toString)),
    ("dependencyClosure", dependencyClosure),
    ("isUnsafe", toJson info.isUnsafe), ("isPartial", toJson info.isPartial)]

def boundedObservation (env : Environment) (info : ConstantInfo) : MetaM Json := do
  let result ← observation env info
  checkSystem "formal-inventory"
  return result

def inventory (env : Environment) (root : Name) : IO Json := do
  let context : Core.Context :=
    { fileName := "<formal-inventory>", fileMap := default,
      options := ({} : Options).setBool `pp.universes true |>.setBool `pp.fullNames true }
  let mut coreState : Core.State := { env := env }
  let mut metaState : Meta.State := {}
  let names := env.constants.fold (fun ns n _ =>
    if (moduleFor env n).startsWith "Riemann" then ns.push n else ns) (#[] : Array Name)
    |>.qsort Name.lt
  let mut declarations : Array Json := #[]
  for n in names do
    let some c := env.find? n | throw <| IO.userError "missing compiled declaration"
    let ((result, nextMetaState), nextCoreState) ←
      ((boundedObservation env c).run {} metaState).toIO context coreState
    declarations := declarations.push result
    metaState := nextMetaState
    coreState := nextCoreState
  let some target := env.find? `RiemannHypothesis |
    throw <| IO.userError "literal Mathlib target is missing"
  let ((targetObservation, _), _) ←
    ((boundedObservation env target).run {} metaState).toIO context coreState
  let modules := env.header.moduleNames.mapIdx fun i n => Json.mkObj [
    ("name", toJson n.toString),
    ("directImports", toJson (env.header.moduleData[i]!.imports.map (·.module.toString)))]
  return Json.mkObj [
    ("schema", "riemann.compiled-observations/v1"), ("leanVersion", toJson Lean.versionString),
    ("root", toJson root.toString), ("modules", .arr modules),
    ("declarations", .arr declarations), ("target", targetObservation),
    ("canonicalEndpointPresent", toJson ((env.find? `Riemann.Canonical.Main).isSome))]

end RiemannAudit

unsafe def main (args : List String) : IO UInt32 := do
  try
    let root ← match args with
      | ["canonical"] => pure `Riemann
      | ["all"] => pure `RiemannAll
      | _ => throw <| IO.userError "expected canonical or all"
    initSearchPath (← findSysroot)
    enableInitializersExecution
    let env ← importModules #[{ module := root }] {} (trustLevel := 0) (loadExts := true)
    let output ← RiemannAudit.inventory env root
    IO.println output.compress
    return 0
  catch _ =>
    IO.eprintln "Formal inventory failed."
    return 1
```
