# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PublicApi.Variant4909b5c1c8c04e343d7aac0dfd9c044c5365d91f58666fcbdbcfc10ff32d43e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95b349b91be100947c6c46a387527781cc29651a` · SHA-256 `b8d64fbf5346a52978df476e1fbf8b788a53cd54a3c3c1e00ee46aa6bea05694`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PublicDeclarationSnapshot.Variant0d2100203b296a1e015d1b7005169bcc5d50d0627edf713eaaeb8b26b9bdec20","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d2100203b296a1e015d1b7005169bcc5d50d0627edf713eaaeb8b26b9bdec20","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PublicDeclarationSnapshot.Variant0d2100203b296a1e015d1b7005169bcc5d50d0627edf713eaaeb8b26b9bdec20","mathematical_subject":"Computation.DataStructures","original_sha256":"0d2100203b296a1e015d1b7005169bcc5d50d0627edf713eaaeb8b26b9bdec20","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/PublicApi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Validation

/-! # Public API, axiom, and dependency comparisons -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PublicDeclarationSnapshot.Variant0d2100203b296a1e015d1b7005169bcc5d50d0627edf713eaaeb8b26b9bdec20

public section

namespace Surface.Refactor

open Lean

@[surface_novel]
structure PublicDeclarationSnapshot where
  declarationName : Name
  moduleName : LeanModulePath
  normalizedType : String
  typeHash : ContentHash256
  classificationTags : List Name
  axiomClosure : List Name
  sourcePath : ProjectRelativePath
deriving DecidableEq, Repr

@[surface_novel]
structure PublicApiSnapshot where
  schema : String
  projectFingerprint : EnvironmentFingerprint
  declarations : List PublicDeclarationSnapshot
deriving DecidableEq, Repr

@[surface_certificate]
structure ImportAcyclicityObservation where
  importGraphHash : ContentHash256
  topologicalOrder : List LeanModulePath
  cycle? : Option (List LeanModulePath)
  authority : RefactorAuthority := .environmentObserved
deriving DecidableEq, Repr

@[expose] def publicNames (snapshot : PublicApiSnapshot) : List Name :=
  snapshot.declarations.map fun declaration => declaration.declarationName

@[expose] def exactPublicNames (before after : PublicApiSnapshot) : Bool :=
  publicNames before == publicNames after

/-- Candidate-only additions retain every prior declaration exactly and place
every new declaration in generated quarantine. -/
@[expose] def allowedCandidateOnlyAdditions
    (before after : PublicApiSnapshot) : Bool :=
  before.declarations.all (fun prior => after.declarations.contains prior) &&
    after.declarations.all (fun current =>
      before.declarations.contains current ||
        current.sourcePath.raw.startsWith "Generated/")

@[expose] def exactPublicTypes (before after : PublicApiSnapshot) : Bool :=
  (before.declarations.map fun declaration =>
    (declaration.declarationName, declaration.normalizedType, declaration.typeHash)) ==
  (after.declarations.map fun declaration =>
    (declaration.declarationName, declaration.normalizedType, declaration.typeHash))

@[expose] def sourceModulesPreserved (before after : PublicApiSnapshot) : Bool :=
  (before.declarations.map fun declaration =>
    (declaration.declarationName, declaration.moduleName)) ==
  (after.declarations.map fun declaration =>
    (declaration.declarationName, declaration.moduleName))

@[expose] def classificationTagsPreserved
    (before after : PublicApiSnapshot) : Bool :=
  (before.declarations.map fun declaration =>
    (declaration.declarationName, declaration.classificationTags)) ==
  (after.declarations.map fun declaration =>
    (declaration.declarationName, declaration.classificationTags))

@[expose] def axiomClosureEqualOrSubset
    (before after : PublicApiSnapshot) : Bool :=
  after.declarations.all fun current =>
    match before.declarations.find?
        (fun prior => prior.declarationName == current.declarationName) with
    | none => false
    | some prior => current.axiomClosure.all fun axiomName =>
        prior.axiomClosure.contains axiomName

@[expose] def moduleIsQuarantinedDependency (moduleName : LeanModulePath) : Bool :=
  let source := (modulePathAsSource moduleName).raw
  source.startsWith "lib/Generated/" ||
    source.startsWith "lib/SurfaceLegacy/" ||
    source.startsWith "lib/Presentation/"

@[expose] def noCanonicalQuarantineDependency (imports : List ImportEdge) : Bool :=
  imports.all fun edge =>
    !moduleIsQuarantinedDependency edge.imported

@[surface_novel]
structure PublicApiComparison where
  before : PublicApiSnapshot
  after : PublicApiSnapshot
  imports : List ImportEdge
  acyclicity : ImportAcyclicityObservation
  allowCandidateAdditions : Bool := false

@[expose] def PublicApiComparison.Valid (comparison : PublicApiComparison) : Prop :=
  exactPublicNames comparison.before comparison.after = true ∧
    exactPublicTypes comparison.before comparison.after = true ∧
    sourceModulesPreserved comparison.before comparison.after = true ∧
    classificationTagsPreserved comparison.before comparison.after = true ∧
    axiomClosureEqualOrSubset comparison.before comparison.after = true ∧
    comparison.acyclicity.cycle? = none ∧
    noCanonicalQuarantineDependency comparison.imports = true

instance (comparison : PublicApiComparison) : Decidable comparison.Valid := by
  unfold PublicApiComparison.Valid
  infer_instance

@[expose] def verifyPublicApiComparison (comparison : PublicApiComparison) : Bool :=
  decide comparison.Valid

@[surface_novel, surface_published]
theorem verifyPublicApiComparison_sound (comparison : PublicApiComparison)
    (h : verifyPublicApiComparison comparison = true) : comparison.Valid := by
  exact of_decide_eq_true h

@[surface_novel, surface_published]
theorem axiom_policy_checker_sound (comparison : PublicApiComparison)
    (h : comparison.Valid) :
    axiomClosureEqualOrSubset comparison.before comparison.after = true :=
  h.2.2.2.2.1

@[surface_novel, surface_published]
theorem canonical_dependency_checker_sound (comparison : PublicApiComparison)
    (h : comparison.Valid) : noCanonicalQuarantineDependency comparison.imports = true :=
  h.2.2.2.2.2.2

end Surface.Refactor
```
