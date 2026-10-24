# Complete source: GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc0034b093febfa5715b15bf84b11d6e1ef1edb4` · SHA-256 `eb00fbbc87c5cd4dfad1b2fa8625a3b101026c08f2a8f15187a8a5781ae8b1a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Source pattern reviewed from openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/LinearAlgebra/TensorProduct/ScalarDescent.lean (Apache-2.0).
This local file restates the finite-Galois descent core in GRWTSK notation.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib

/-!
# Finite Galois scalar descent in a tensor extension

This file isolates the finite-Galois linear-algebra mechanism used by the
typed-Hodge bridge. It does not assume or prove the rational Hodge conjecture.

For a finite Galois extension \`K/k\`, a tensor \`t : K ⊗[k] V\` whose scalar
conjugates all lie in a \`K\`-submodule \`P\` lies in the scalar extension of the
rational part of \`P\`.

The proof extracts basis coefficients with the trace-dual basis.
-/

set_option autoImplicit false

namespace GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent

noncomputable section

open scoped TensorProduct
open TensorProduct

variable {k K V : Type*} [Field k] [Field K] [Algebra k K]
  [AddCommGroup V] [Module k V]

/-- Scalar conjugation acts on the coefficient factor and fixes the source
vector factor. -/
def scalarConjugate (σ : K ≃ₐ[k] K) : K ⊗[k] V →ₗ[k] K ⊗[k] V :=
  σ.toLinearMap.rTensor V

@[simp]
theorem scalarConjugate_tmul (σ : K ≃ₐ[k] K) (a : K) (v : V) :
    scalarConjugate σ (a ⊗ₜ[k] v) = σ a ⊗ₜ[k] v := rfl

theorem scalarConjugate_smul (σ : K ≃ₐ[k] K) (a : K) (t : K ⊗[k] V) :
    scalarConjugate σ (a • t) = σ a • scalarConjugate σ t := by
  induction t with
  | tmul b v =>
      simp [TensorProduct.smul_tmul', smul_eq_mul, scalarConjugate_tmul]
  | add t u ht hu =>
      simp [smul_add, ht, hu]

/-- Apply the field trace to the coefficient factor of a tensor. -/
def tensorTrace : K ⊗[k] V →ₗ[k] V :=
  (TensorProduct.lid k V).toLinearMap ∘ₗ (Algebra.trace k K).rTensor V

@[simp]
theorem tensorTrace_tmul (a : K) (v : V) :
    tensorTrace (a ⊗ₜ[k] v) = Algebra.trace k K a • v := rfl

/-- The source vectors whose unit tensors lie in the selected extended
submodule. This is a source-side submodule; no algebraicity conclusion is
encoded in the definition. -/
def rationalPart (P : Submodule K (K ⊗[k] V)) : Submodule k V :=
  (P.restrictScalars k).comap (TensorProduct.mk k K V 1)

@[simp]
theorem mem_rationalPart (P : Submodule K (K ⊗[k] V)) (v : V) :
    v ∈ rationalPart P ↔ (1 : K) ⊗ₜ[k] v ∈ P := Iff.rfl

variable [FiniteDimensional k K] [IsGalois k K]

/-- Averaging all scalar conjugates is the unit tensor of the coefficient
trace. -/
theorem one_tmul_tensorTrace (t : K ⊗[k] V) :
    (1 : K) ⊗ₜ[k] tensorTrace t =
      ∑ σ : K ≃ₐ[k] K, scalarConjugate σ t := by
  induction t with
  | tmul a v =>
      simp only [tensorTrace_tmul, scalarConjugate_tmul]
      rw [← TensorProduct.sum_tmul, ← trace_eq_sum_automorphisms,
        Algebra.algebraMap_eq_smul_one, TensorProduct.smul_tmul]
  | add t u ht hu =>
      simp [TensorProduct.tmul_add, Finset.sum_add_distrib, ht, hu]

/-- Multiplying by a trace-dual basis element and tracing extracts the matching
tensor coefficient. -/
theorem tensorTrace_traceDual_smul {ι : Type*} [Finite ι] [DecidableEq ι]
    (b : Module.Basis ι k K) (i : ι) (t : K ⊗[k] V) :
    tensorTrace (b.traceDual i • t) =
      TensorProduct.equivFinsuppOfBasisLeft b t i := by
  have hcoord (a : K) :
      b.repr a i = Algebra.trace k K (b.traceDual i * a) := by
    simpa only [Module.Basis.traceDual_traceDual, Algebra.traceForm_apply, mul_comm]
      using b.traceDual.traceDual_repr_apply a i
  induction t with
  | tmul a v =>
      rw [TensorProduct.smul_tmul', smul_eq_mul, tensorTrace_tmul,
        TensorProduct.equivFinsuppOfBasisLeft_apply_tmul_apply, hcoord]
  | add t u ht hu =>
      simp [smul_add, ht, hu]

/-- **Finite Galois scalar descent.**

If every coefficient conjugate of \`t\` lies in \`P\`, then \`t\` lies in the
scalar extension of the source vectors whose unit tensors lie in \`P\`.

This is a pure linear-algebra theorem. In particular it does not assert that
\`P\` is a Hodge subspace or that any class is algebraic. -/
theorem finiteGalois_scalarDescent
    (P : Submodule K (K ⊗[k] V))
    (t : K ⊗[k] V)
    (ht : ∀ σ : K ≃ₐ[k] K, scalarConjugate σ t ∈ P) :
    t ∈ (rationalPart P).baseChange K := by
  classical
  let b := Module.Free.chooseBasis k K
  have hcoeff (i : Module.Free.ChooseBasisIndex k K) :
      TensorProduct.equivFinsuppOfBasisLeft b t i ∈ rationalPart P := by
    rw [mem_rationalPart, ← tensorTrace_traceDual_smul, one_tmul_tensorTrace]
    apply Submodule.sum_mem
    intro σ _
    rw [scalarConjugate_smul]
    exact P.smul_mem _ (ht σ)
  rw [← (TensorProduct.equivFinsuppOfBasisLeft b).symm_apply_apply t,
    TensorProduct.equivFinsuppOfBasisLeft_symm_apply]
  exact Submodule.sum_mem _ fun i _ =>
    Submodule.tmul_mem_baseChange_of_mem _ (hcoeff i)

end

end GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent
```
