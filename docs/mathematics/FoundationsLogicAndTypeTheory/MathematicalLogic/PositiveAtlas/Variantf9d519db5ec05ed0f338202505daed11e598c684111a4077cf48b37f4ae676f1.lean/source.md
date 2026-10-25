# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PositiveAtlas.Variantf9d519db5ec05ed0f338202505daed11e598c684111a4077cf48b37f4ae676f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bce8c6e56064d36be27ea09e8d5fff20f88e9fa` · SHA-256 `f9d519db5ec05ed0f338202505daed11e598c684111a4077cf48b37f4ae676f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Certification
import Mathlib.Logic.Equiv.Defs
import Mathlib.Data.Set.Operations

/-!
# Coherent comparison of minimal certificate representations

Mutual minimality supplies the two factor maps. Surjectivity, rather than an
implicit deletion of unused carrier elements, proves their inverse laws and the
uniqueness of the comparison. The carrier universes and each actual competitor
universe remain independent. Structural Quines supply surjectivity by their
reconstruction section. Compression itself retains its certificate-relative
reconstruction law.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/

namespace FormalResearch.PositiveAtlas

universe u v w a b c

namespace SufficientRepresentation

variable {State : Type u} {Index : Type v}
variable {C : CertificateFamily.{u, v, w} State Index}

/-- The factor from `q` into `r` supplied by minimality of `r` against the
actual universe of the carrier of `q`. -/
noncomputable def comparisonMap
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (hr : IsMinimal.{u, v, w, b, a} r) : q.carrier → r.carrier :=
  Classical.choose (hr q)

@[simp]
theorem comparisonMap_compress
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (hr : IsMinimal.{u, v, w, b, a} r) (s : State) :
    comparisonMap q r hr (q.compress s) = r.compress s := by
  exact (congrFun (Classical.choose_spec (hr q)) s).symm

/-- Equality on the reachable image requires no claim about unused elements. -/
theorem map_unique_on_image
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (f g : q.carrier → r.carrier)
    (hf : ∀ s, f (q.compress s) = r.compress s)
    (hg : ∀ s, g (q.compress s) = r.compress s)
    (x : q.carrier) (hx : x ∈ Set.range q.compress) : f x = g x := by
  obtain ⟨s, rfl⟩ := hx
  exact (hf s).trans (hg s).symm

/-- Surjectivity upgrades uniqueness on the reachable image to carrier-wide
uniqueness. -/
theorem map_unique
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (hq : Function.Surjective q.compress)
    (f g : q.carrier → r.carrier)
    (hf : ∀ s, f (q.compress s) = r.compress s)
    (hg : ∀ s, g (q.compress s) = r.compress s) : f = g := by
  funext x
  obtain ⟨s, rfl⟩ := hq x
  exact (hf s).trans (hg s).symm

/-- The canonical equivalence of two minimal sufficient representations.
Minimality in each direction is instantiated at the other carrier's universe. -/
noncomputable def minimalEquiv
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (hq : IsMinimal.{u, v, w, a, b} q)
    (hr : IsMinimal.{u, v, w, b, a} r)
    (sq : Function.Surjective q.compress)
    (sr : Function.Surjective r.compress) : q.carrier ≃ r.carrier where
  toFun := comparisonMap q r hr
  invFun := comparisonMap r q hq
  left_inv := by
    intro x
    obtain ⟨s, rfl⟩ := sq x
    simp only [comparisonMap_compress]
  right_inv := by
    intro x
    obtain ⟨s, rfl⟩ := sr x
    simp only [comparisonMap_compress]

@[simp]
theorem minimalEquiv_compress
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (hq : IsMinimal.{u, v, w, a, b} q)
    (hr : IsMinimal.{u, v, w, b, a} r)
    (sq : Function.Surjective q.compress)
    (sr : Function.Surjective r.compress) (s : State) :
    minimalEquiv q r hq hr sq sr (q.compress s) = r.compress s :=
  comparisonMap_compress q r hr s

/-- The equivalence satisfying the compression diagram is unique. -/
theorem minimalEquiv_unique
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (hq : IsMinimal.{u, v, w, a, b} q)
    (hr : IsMinimal.{u, v, w, b, a} r)
    (sq : Function.Surjective q.compress)
    (sr : Function.Surjective r.compress)
    (e : q.carrier ≃ r.carrier)
    (he : ∀ s, e (q.compress s) = r.compress s) :
    e = minimalEquiv q r hq hr sq sr := by
  apply Equiv.ext
  intro x
  obtain ⟨s, rfl⟩ := sq x
  rw [he, minimalEquiv_compress]

/-- The requested equivalence exists uniquely with its full compression
diagram, not only as a selected factorization function. -/
theorem minimalEquiv_existsUnique
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (hq : IsMinimal.{u, v, w, a, b} q)
    (hr : IsMinimal.{u, v, w, b, a} r)
    (sq : Function.Surjective q.compress)
    (sr : Function.Surjective r.compress) :
    ∃! e : q.carrier ≃ r.carrier, e ∘ q.compress = r.compress := by
  refine ⟨minimalEquiv q r hq hr sq sr, ?_, ?_⟩
  · funext s
    exact minimalEquiv_compress q r hq hr sq sr s
  · intro e he
    apply minimalEquiv_unique q r hq hr sq sr
    intro s
    exact congrFun he s

/-- Without surjectivity on the unrestricted carriers, mutual minimality still
constructs an equivalence of their actual reachable images. -/
noncomputable def reachableEquiv
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (hq : IsMinimal.{u, v, w, a, b} q)
    (hr : IsMinimal.{u, v, w, b, a} r) :
    Set.range q.compress ≃ Set.range r.compress where
  toFun x := ⟨comparisonMap q r hr x.1, by
    obtain ⟨s, hs⟩ := x.2
    refine ⟨s, ?_⟩
    rw [← hs, comparisonMap_compress]⟩
  invFun x := ⟨comparisonMap r q hq x.1, by
    obtain ⟨s, hs⟩ := x.2
    refine ⟨s, ?_⟩
    rw [← hs, comparisonMap_compress]⟩
  left_inv x := by
    apply Subtype.ext
    obtain ⟨s, hs⟩ := x.2
    change comparisonMap r q hq (comparisonMap q r hr x.1) = x.1
    rw [← hs, comparisonMap_compress, comparisonMap_compress]
  right_inv x := by
    apply Subtype.ext
    obtain ⟨s, hs⟩ := x.2
    change comparisonMap q r hr (comparisonMap r q hq x.1) = x.1
    rw [← hs, comparisonMap_compress, comparisonMap_compress]

/-- Every admitted decoder commutes with the comparison, including
heterogeneous observable values. -/
theorem minimalEquiv_recover
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (hq : IsMinimal.{u, v, w, a, b} q)
    (hr : IsMinimal.{u, v, w, b, a} r)
    (sq : Function.Surjective q.compress)
    (sr : Function.Surjective r.compress) (i : Index) (x : q.carrier) :
    r.recover i (minimalEquiv q r hq hr sq sr x) = q.recover i x := by
  obtain ⟨s, rfl⟩ := sq x
  rw [minimalEquiv_compress, r.recover_compress, q.recover_compress]

theorem minimalEquiv_refl
    (q : SufficientRepresentation.{u, v, w, a} C)
    (hq : IsMinimal.{u, v, w, a, a} q)
    (sq : Function.Surjective q.compress) :
    minimalEquiv q q hq hq sq sq = Equiv.refl q.carrier := by
  exact (minimalEquiv_unique q q hq hq sq sq (Equiv.refl q.carrier)
    (fun _ => rfl)).symm

theorem minimalEquiv_symm
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (hq : IsMinimal.{u, v, w, a, b} q)
    (hr : IsMinimal.{u, v, w, b, a} r)
    (sq : Function.Surjective q.compress)
    (sr : Function.Surjective r.compress) :
    minimalEquiv r q hr hq sr sq = (minimalEquiv q r hq hr sq sr).symm := by
  rfl

/-- Three comparisons compose coherently. The six minimality hypotheses
display exactly which independent competitor universes are used. -/
theorem minimalEquiv_trans
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (t : SufficientRepresentation.{u, v, w, c} C)
    (hqr : IsMinimal.{u, v, w, a, b} q)
    (hqt : IsMinimal.{u, v, w, a, c} q)
    (hrq : IsMinimal.{u, v, w, b, a} r)
    (hrt : IsMinimal.{u, v, w, b, c} r)
    (htq : IsMinimal.{u, v, w, c, a} t)
    (htr : IsMinimal.{u, v, w, c, b} t)
    (sq : Function.Surjective q.compress)
    (sr : Function.Surjective r.compress)
    (st : Function.Surjective t.compress) :
    (minimalEquiv q r hqr hrq sq sr).trans (minimalEquiv r t hrt htr sr st) =
      minimalEquiv q t hqt htq sq st := by
  apply minimalEquiv_unique
  intro s
  simp only [Equiv.trans_apply, minimalEquiv_compress]

end SufficientRepresentation

namespace StructuralQuine

variable {State : Type u} {Index : Type v}
variable {C : CertificateFamily.{u, v, w} State Index}

/-- The section gives every carrier element an actual state antecedent. -/
theorem compress_surjective (Q : StructuralQuine.{u, v, w, a, b} C) :
    Function.Surjective Q.quotient.compress := by
  intro x
  exact ⟨Q.reconstruct x, Q.«section» x⟩

/-- Reversible comparison of certificate representations of Structural Quines. -/
noncomputable def comparison
    (Q : StructuralQuine.{u, v, w, a, b} C)
    (R : StructuralQuine.{u, v, w, b, a} C) : Q.quotient.carrier ≃ R.quotient.carrier :=
  Q.quotient.minimalEquiv R.quotient Q.minimal R.minimal
    Q.compress_surjective R.compress_surjective

@[simp]
theorem comparison_compress
    (Q : StructuralQuine.{u, v, w, a, b} C)
    (R : StructuralQuine.{u, v, w, b, a} C) (s : State) :
    comparison Q R (Q.quotient.compress s) = R.quotient.compress s :=
  SufficientRepresentation.minimalEquiv_compress _ _ _ _ _ _ s

theorem comparison_recover
    (Q : StructuralQuine.{u, v, w, a, b} C)
    (R : StructuralQuine.{u, v, w, b, a} C) (i : Index) (x : Q.quotient.carrier) :
    R.quotient.recover i (comparison Q R x) = Q.quotient.recover i x :=
  SufficientRepresentation.minimalEquiv_recover _ _ _ _ _ _ i x

end StructuralQuine

end FormalResearch.PositiveAtlas
```
