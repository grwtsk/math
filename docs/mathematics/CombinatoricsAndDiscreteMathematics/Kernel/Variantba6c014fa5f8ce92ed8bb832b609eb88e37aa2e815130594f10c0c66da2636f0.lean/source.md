# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Kernel.Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a773c0642df199fdfce0b2fa7369033888df61ad` · SHA-256 `9dccf8d2c308f39fadd27724f9ad96dba7ede8f1f2d7e72836429dacbdf72a05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteLaw.Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteLaw.Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/Kernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.Metric
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# Finite probability laws and Markov kernels

These definitions are mathematical values.  They carry no mutation or
admission capability.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteLaw.Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef

namespace Mathematics.SpectralClosure

structure FiniteLaw (X : Type) [Fintype X] where
  mass : X → ℝ
  nonnegative : ∀ point, 0 ≤ mass point
  totalMass : ∑ point, mass point = 1

structure MarkovKernel (X : Type) [Fintype X] where
  transition : X → X → ℝ
  nonnegative : ∀ source target, 0 ≤ transition source target
  rowMass : ∀ source, ∑ target, transition source target = 1
  kernelRevision : SpectralId

def MarkovKernel.push
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (law : FiniteLaw X) :
    FiniteLaw X where
  mass target :=
    ∑ source, law.mass source * kernel.transition source target
  nonnegative target := by
    apply Finset.sum_nonneg
    intro source _
    exact mul_nonneg
      (law.nonnegative source)
      (kernel.nonnegative source target)
  totalMass := by
    rw [Finset.sum_comm]
    calc
      (∑ source, ∑ target,
          law.mass source * kernel.transition source target) =
          ∑ source,
            law.mass source *
              (∑ target, kernel.transition source target) := by
                apply Finset.sum_congr rfl
                intro source _
                rw [Finset.mul_sum]
      _ = ∑ source, law.mass source := by
            apply Finset.sum_congr rfl
            intro source _
            rw [kernel.rowMass source, mul_one]
      _ = 1 := law.totalMass

def LawSupported
    {X : Type} [Fintype X]
    (law : FiniteLaw X)
    (admissible : X → Prop) : Prop :=
  ∀ point, ¬admissible point → law.mass point = 0

def KernelPreservesAdmissibility
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (admissible : X → Prop) : Prop :=
  ∀ source target,
    admissible source →
    ¬admissible target →
    kernel.transition source target = 0

structure AdmissibilityCertificate
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (admissible : X → Prop) where
  preserved : KernelPreservesAdmissibility kernel admissible
  proofRef : SpectralId

structure KernelPerturbation
    {X : Type} [Fintype X]
    (canonical implemented : MarkovKernel X) where
  localDefect : ℝ
  localDefectNonnegative : 0 ≤ localDefect
  comparisonStatement : Prop
  comparisonStatus : ProofDisposition

end Mathematics.SpectralClosure
```
