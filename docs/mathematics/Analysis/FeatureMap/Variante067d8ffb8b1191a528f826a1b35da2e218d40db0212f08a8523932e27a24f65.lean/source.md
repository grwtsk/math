# Complete source: GRWTSK.Analysis.FeatureMap.Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `085883d661e5dc2e0c2a4951da50345d9563f198` · SHA-256 `e067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Hilbert.Completion
import Mathlib.Analysis.InnerProductSpace.Basic

/-!
# Canonical kernel feature vectors

Each kernel index maps to the completion of its singleton raw vector.  The
inner product of two such vectors is definitionally governed by the supplied
kernel, and their linear span is dense in the completed space.
-/

noncomputable section

namespace Mathematics.Hilbert

open Mathematics.Kernel

universe u

variable {Index : Type u} (kernel : Kernel.PositiveKernel Index)

/-- Canonical feature vector of one kernel index. -/
def kernelVector (index : Index) : KernelSpace kernel :=
  completePreKernel kernel <|
    preKernelMk kernel (Raw.basisVector kernel index)

/-- Linear map sending a raw finite combination first through the explicit
radical quotient and then into its completion.  The raw carrier has no
topology or semidefinite inner-product-space instance. -/
def rawToKernelSpace : Raw kernel →ₗ[ℂ] KernelSpace kernel :=
  (UniformSpace.Completion.toComplL).toLinearMap.comp
    (Submodule.mkQ (kernelNullSubmodule kernel))

@[simp]
theorem rawToKernelSpace_basisVector (index : Index) :
    rawToKernelSpace kernel (Raw.basisVector kernel index) =
      kernelVector kernel index :=
  rfl

/-- The raw-to-completion map preserves the kernel inner product. -/
@[simp]
theorem inner_rawToKernelSpace (f g : Raw kernel) :
    inner ℂ (rawToKernelSpace kernel f) (rawToKernelSpace kernel g) =
      Raw.inner kernel f g := by
  change inner ℂ
      (completePreKernel kernel (preKernelMk kernel f))
      (completePreKernel kernel (preKernelMk kernel g)) = _
  rw [inner_completePreKernel,
    preKernelInner_wellDefined]

/-- The completed feature map realizes the supplied kernel exactly. -/
@[simp]
theorem inner_kernelVector (i j : Index) :
    inner ℂ (kernelVector kernel i) (kernelVector kernel j) =
      kernel i j := by
  simp only [kernelVector]
  rw [inner_completePreKernel,
    preKernelInner_basisVector]

/-- The squared norm of a feature vector is the real part of the kernel
diagonal. -/
theorem norm_kernelVector_sq (index : Index) :
    ‖kernelVector kernel index‖ ^ 2 =
      (kernel index index).re := by
  rw [norm_sq_eq_re_inner (𝕜 := ℂ), inner_kernelVector]
  exact congrFun RCLike.re_eq_complex_re _

/-- Algebraic span of the canonical feature vectors. -/
def kernelSpan : Submodule ℂ (KernelSpace kernel) :=
  Submodule.span ℂ (Set.range (kernelVector kernel))

/-- Every raw finite combination lands in the algebraic feature span. -/
theorem rawToKernelSpace_mem_span (f : Raw kernel) :
    rawToKernelSpace kernel f ∈ kernelSpan kernel := by
  classical
  induction f using Finsupp.induction with
  | zero =>
      exact (kernelSpan kernel).zero_mem
  | single_add index scalar tail _ _ inductionHypothesis =>
      rw [map_add]
      apply (kernelSpan kernel).add_mem
      · have basisMem : kernelVector kernel index ∈
            kernelSpan kernel :=
          Submodule.subset_span (Set.mem_range_self index)
        have scaledMem := (kernelSpan kernel).smul_mem scalar basisMem
        have singleEq :
            (Finsupp.single index scalar : Raw kernel) =
              scalar • Raw.basisVector kernel index := by
          ext candidate
          simp [Raw.basisVector]
        rw [singleEq, map_smul, rawToKernelSpace_basisVector]
        exact scaledMem
      · exact inductionHypothesis

/-- The canonical feature vectors have dense linear span in the completed
kernel Hilbert space. -/
theorem kernelVector_denseSpan :
    (kernelSpan kernel).topologicalClosure = ⊤ := by
  apply Submodule.dense_iff_topologicalClosure_eq_top.mp
  apply (completePreKernel_denseRange kernel).mono
  rintro point ⟨prePoint, rfl⟩
  obtain ⟨rawPoint, rfl⟩ :=
    Submodule.Quotient.mk_surjective
      (kernelNullSubmodule kernel) prePoint
  exact rawToKernelSpace_mem_span kernel rawPoint


end Mathematics.Hilbert
```
