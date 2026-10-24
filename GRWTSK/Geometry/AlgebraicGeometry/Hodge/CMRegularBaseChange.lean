/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMEmbeddingEigenspaces
import Mathlib.LinearAlgebra.TensorProduct.Tower

/-!
# Regular field action after scalar extension

For a field extension E/k and a coefficient field C over k, this file
constructs the canonical E-action on C tensor_k E by base-changing the regular
left action of E on itself. Each k-algebra embedding lambda : E -> C then
defines its literal character eigenspace.

This is the linear-algebra object underlying the manuscript notation
U(v)_lambda before a Hodge type is attached. One-dimensionality, completeness
of the eigenspace decomposition, CM sign labels, and geometric realization
remain separate obligations.
-/

set_option autoImplicit false

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRegularBaseChange

open scoped TensorProduct
open TensorProduct
open CMEmbeddingEigenspaces

noncomputable section

variable {k E C : Type*} [Field k] [Field E] [Field C]
  [Algebra k E] [Algebra k C]

/-- The regular E-action on its scalar extension C tensor_k E. -/
def regularAction : E →ₐ[k] Module.End C (C ⊗[k] E) :=
  (Module.End.baseChangeHom k C E).comp (Algebra.lsmul k k E)

/-- Pure tensors transform by multiplication on the E factor. -/
@[simp]
theorem regularAction_tmul (a x : E) (c : C) :
    regularAction (k := k) (E := E) (C := C) a (c ⊗ₜ[k] x) =
      c ⊗ₜ[k] (a * x) := by
  simp [regularAction, Algebra.smul_def]

/-- The embedding-character eigenspace for lambda : E ->_k C. -/
def embeddingEigenspace (λ : E →ₐ[k] C) : Submodule C (C ⊗[k] E) :=
  characterEigenspace (regularAction (k := k) (E := E) (C := C)) λ

@[simp]
theorem mem_embeddingEigenspace_iff
    (λ : E →ₐ[k] C) (t : C ⊗[k] E) :
    t ∈ embeddingEigenspace (k := k) λ ↔
      ∀ a : E,
        regularAction (k := k) (E := E) (C := C) a t = λ a • t :=
  Iff.rfl

/-- Package the regular action and embedding characters into the generic
character-eigenline interface once one-dimensionality/nonvanishing and Hodge
type labels are supplied. -/
def eigenlineRealization
    {G : Type*} {conj : G → G}
    (v : CMFourBalance.OddSignRow G conj)
    (embedding : G → E →ₐ[k] C)
    (hfin : ∀ g, Module.finrank C (embeddingEigenspace (k := k) (embedding g)) = 1)
    (hnonzero : ∀ g, ∃ t : C ⊗[k] E,
      t ∈ embeddingEigenspace (k := k) (embedding g) ∧ t ≠ 0)
    (typeAt : G → CMEmbeddingLines.WeightOneHodgeType)
    (htype : ∀ g, typeAt g = CMEmbeddingLines.typeOfSign (v.value g)) :
    CharacterEigenlineRealization E C (C ⊗[k] E) G conj v where
  action := regularAction (k := k) (E := E) (C := C)
  character := embedding
  line_finrank_one := hfin
  line_nonzero := hnonzero
  typeAt := typeAt
  typeAt_eq := htype

end

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRegularBaseChange
