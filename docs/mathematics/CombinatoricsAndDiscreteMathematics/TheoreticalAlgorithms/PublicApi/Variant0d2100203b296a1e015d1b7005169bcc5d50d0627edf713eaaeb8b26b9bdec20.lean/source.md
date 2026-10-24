# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PublicApi.Variant0d2100203b296a1e015d1b7005169bcc5d50d0627edf713eaaeb8b26b9bdec20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6af43f00db208a12f3e0dbfc80ff328a0e5ba34e` · SHA-256 `0d2100203b296a1e015d1b7005169bcc5d50d0627edf713eaaeb8b26b9bdec20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.Validation

/-! # Public API, axiom, and dependency comparisons -/

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
