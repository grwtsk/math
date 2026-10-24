/-
Conditional preimage existence and uniqueness for a supplied permutation representation
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939
Organized SHA-256: 1567850e564fec8db92c9fd4f5c968ae1cfe69d675a6a1e3ff5c6315ecf57de2
PMD: 510.1.030.010.050 group actions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Exact actual injectivity/selected-surjectivity predicates, complete two-proof classification package and both conditional theorems. All Γ/α/one/mul/R/T/C/φ/hφ/hg/hh premises and proofs remain unchanged. Same-version selected-family import is explicit; no Γ group law, geometric classification or representation existence is added. -/

import GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Subgroups.SelectedPermutationFamilies.Variant23b3a78f5f4b3762.SelectedTwists
import Folder.Monodromy.Representation
import Folder.Research.TorsionShellComparison

/-!
# Folder.Research.RepresentationFaithfulness

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.representation_faithfulness
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


namespace GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.SelectedPermutationClassifications.Variant23b3a78f5f4b3762

open Folder
open GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Subgroups.SelectedPermutationFamilies.Variant23b3a78f5f4b3762

def Faithful
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    (R : Monodromy.MonodromyRepresentation Γ mul one α) : Prop :=
  ∀ g h, R.ρ g = R.ρ h → g = h

def SurjectiveOn
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    (R : Monodromy.MonodromyRepresentation Γ mul one α)
    (T : SelectedTwistGroup α) : Prop :=
  ∀ φ, φ ∈ T.Twist → ∃ g, R.ρ g = φ

structure ClassifiesSelectedTwists
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    (R : Monodromy.MonodromyRepresentation Γ mul one α)
    (T : SelectedTwistGroup α) where
  faithful : Faithful R
  surjective_on : SurjectiveOn R T

theorem every_selected_twist_has_preimage
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : SelectedTwistGroup α}
    (C : ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    (hφ : φ ∈ T.Twist) :
    ∃ g, R.ρ g = φ :=
  C.surjective_on φ hφ

theorem selected_twist_preimage_unique_of_faithful
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : SelectedTwistGroup α}
    (C : ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    {g h : Γ}
    (hg : R.ρ g = φ)
    (hh : R.ρ h = φ) :
    g = h :=
  C.faithful g h (by rw [hg, hh])

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.SelectedPermutationClassifications.Variant23b3a78f5f4b3762
