# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Scope.Variantca28dad97d54a5258090fdb131d23f05d5dd49fbe25db935fdc3f7aaff04ddb6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85e1b2c9a8968202d104af638f82e53dc423cef8` · SHA-256 `28574941c1fae2f6190676569070dc0dc6f9459070c79cdf3051fd02eac4f187`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Scope.Variantb9306070af9f26590b8eff8292b3ff9ecc31561235dc8b9a49b996a4bf3c5308","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9306070af9f26590b8eff8292b3ff9ecc31561235dc8b9a49b996a4bf3c5308","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Scope.Variantb9306070af9f26590b8eff8292b3ff9ecc31561235dc8b9a49b996a4bf3c5308","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b9306070af9f26590b8eff8292b3ff9ecc31561235dc8b9a49b996a4bf3c5308","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Comparison/Scope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Comparison.Coefficients
import Lean

/-!
# Comparison ownership and certification

Scope is architectural metadata only.  It proves no mathematical property and
cannot reclassify a domain-specific construction as framework-generic.
Construction provenance is likewise independent from logical status.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Scope.Variantb9306070af9f26590b8eff8292b3ff9ecc31561235dc8b9a49b996a4bf3c5308

namespace DAF.Comparison

universe u v w

/-- The owner of a comparison construction. -/
inductive Scope
  | framework
  | theory (owner : Lean.Name)
  | domain (owner : Lean.Name)
  | composite (left right : Scope)
  deriving DecidableEq, Repr

namespace Scope

/-- Conservative propagation of scope under composition. -/
def comp : Scope → Scope → Scope
  | .framework, .framework => .framework
  | .framework, .theory owner => .theory owner
  | .theory owner, .framework => .theory owner
  | .theory left, .theory right =>
      if left = right then .theory left
      else .composite (.theory left) (.theory right)
  | left, right => .composite left right

@[simp]
theorem comp_framework_framework :
    comp .framework .framework = .framework :=
  rfl

end Scope

/-- A map paired with non-proof ownership metadata. -/
structure ScopedSpec (A : Sort u) (B : Sort v) where
  spec : Spec A B
  scope : Scope

/--
A proved implication about a comparison, retaining both its assumptions and
its coefficient endpoints.  A conjecture is intentionally not a `Certified`.
-/
structure Certified (A : Sort u) (B : Sort v) where
  spec : Spec A B
  coefficientSource : CoefficientContext.{w}
  coefficientTarget : CoefficientContext.{w}
  scope : Scope
  Property : Prop
  Assumptions : Prop
  certified : Assumptions → Property

/-- A convenient proof-bearing specialization with no assumptions. -/
structure UnconditionalCertified (A : Sort u) (B : Sort v) where
  spec : Spec A B
  coefficientSource : CoefficientContext.{w}
  coefficientTarget : CoefficientContext.{w}
  scope : Scope
  Property : Prop
  certified : Property

/-- Conditional comparisons are represented by the central retained-assumption type. -/
abbrev ConditionalCertified (A : Sort u) (B : Sort v) :=
  Certified A B

namespace UnconditionalCertified

def toCertified (C : UnconditionalCertified A B) : Certified A B where
  spec := C.spec
  coefficientSource := C.coefficientSource
  coefficientTarget := C.coefficientTarget
  scope := C.scope
  Property := C.Property
  Assumptions := True
  certified := fun _ ↦ C.certified

end UnconditionalCertified

namespace Certified

/-- Construct a certified comparison from an unconditional proof. -/
def ofProof
    (spec : Spec A B)
    (coefficientSource coefficientTarget : CoefficientContext.{w})
    (scope : Scope)
    (Property : Prop)
    (proof : Property) : Certified A B where
  spec := spec
  coefficientSource := coefficientSource
  coefficientTarget := coefficientTarget
  scope := scope
  Property := Property
  Assumptions := True
  certified := fun _ ↦ proof

/-- Construct a comparison whose hypotheses remain explicit. -/
def ofConditional
    (spec : Spec A B)
    (coefficientSource coefficientTarget : CoefficientContext.{w})
    (scope : Scope)
    (Property Assumptions : Prop)
    (proof : Assumptions → Property) : Certified A B where
  spec := spec
  coefficientSource := coefficientSource
  coefficientTarget := coefficientTarget
  scope := scope
  Property := Property
  Assumptions := Assumptions
  certified := proof

end Certified

end DAF.Comparison
```
