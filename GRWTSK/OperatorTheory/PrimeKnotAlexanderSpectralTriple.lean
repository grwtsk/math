/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction and local attribution: grwtsk contributors.
AI-assisted source drafting; independent analytic review NOT_RUN.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.FieldTheoryAndPolynomials.ReciprocalQuarticDyad
import Mathlib

/-!
# Prime-polynomial / knot Alexander incidence: finite spectral-triple core

The input of the construction is NOT a two-strand permutation substituted
for a knot. The genuine topological source is the set of ambient-isotopy
classes of tame oriented knots in S^3. The Alexander invariant of such a knot
is a Laurent polynomial over Z, unique up to multiplication by ±t^m. Use
its representative with lowest exponent zero and positive constant term, THEN
reduce coefficients modulo 17. The theorem that this is invariant under
ambient isotopy is an external topological input, NOT supplied by this file.

A *prime polynomial* here means a monic irreducible in (ZMod 17)[X]
whose constant term is nonzero. The restriction removes the Laurent unit X.
An incidence p--K means p divides the correctly normalized Alexander
polynomial of K after coefficient reduction modulo 17. This is weaker than
knot equivalence and weaker than a prime-knot classification.

This file constructs and algebraically certifies the finite incidence
Dirac matrix on a completely named finite collection of such objects.
Its vertices remain a tagged disjoint union of prime polynomials and knot
isotopy classes. The label algebra is the full function *-algebra C^V;
its diagonal action on H=C^V is faithful and pointwise. The real symmetric
incidence matrix gives a self-adjoint D; in finite dimension its resolvent
is compact, and every commutator [D,π(a)] is bounded. The displayed
commutator formula recovers exactly the Alexander divisibility incidence.

For the full (countable) P ⊔ K, the separate written analytic construction
uses H=ℓ²(P⊔K), A=c_c(P⊔K) densely in c₀(P⊔K), any injection
c:P⊔K→N, D₀ e_i=(c(i)+1)e_i and B_ij=2^(-c(i)-c(j)-2) for cross-part
Alexander incidence, zero otherwise. B is real symmetric Hilbert--Schmidt:
  Σ_ij |B_ij|² ≤ (Σ_n 2^(-2n-2))² = 1/9.
Thus B is bounded self-adjoint, D=D₀+B is self-adjoint on Dom D₀,
its resolvent is compact by the resolvent identity, and
  [D,π(a)]_ij = B_ij (a(j)-a(i))
is bounded for every a∈c_c. The representation is faithful by evaluating
on the basis vector e_i. No claim that the graph matrix ALONE determines
knot isotopy is made; the vertex labels are essential. Its countable
ℓ²/operator-domain assertions remain WRITTEN, not Lean formalizations.

## Navigation and analytical scope

`act_mul` supplies the algebra representation law; `commutator_formula`
identifies the differential entries; `commutator_leibniz` proves their
product rule. Its primary argument is the scalar identity
`(a(j)b(j)-a(i)b(i)) = (a(j)-a(i))b(j)+a(i)(b(j)-b(i))`,
multiplied by the edge weight and vector coordinate and summed over j.
Thus no topological premise is needed for this finite algebraic law.
`confinedCommutator_eq` transfers it to the confining diagonal lift.
These identities do not construct the countable operator domain or prove
compact resolvent in Lean. Independent analytical review remains NOT_RUN.

The polynomial supplier is
[ReciprocalQuarticDyad](../FieldTheoryAndPolynomials/ReciprocalQuarticDyad.lean);
its `quadraticFactor_mul` feeds `trefoil_figureEight_product`, whereas
Alexander invariance and connected-sum multiplicativity remain external inputs.

External mathematical sources: standard Alexander invariance and connected
sum multiplicativity, e.g. Friedl et al., Knot Theory lecture notes,
2024, chapter 9; the earlier repository ReciprocalQuarticDyad.lean.
The trefoil/figure-eight formulas are source-verified examples, not a
constructive formal definition of those embedded knots here.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander

/-- A canonical prime in the coefficient ring F_17[X], excluding X itself.
The underlying literal polynomial, not a hash or spectral eigenvalue, is kept. -/
structure PrimePolynomial where
  polynomial : Polynomial (ZMod 17)
  monic : polynomial.Monic
  irreducible : Irreducible polynomial
  nonzeroConstant : polynomial.eval 0 ≠ 0

/-- An isotopy-invariant Alexander representative can descend from diagram
presentations to the quotient *only if* the presentation equivalence and the
invariance theorem have independently been supplied. -/
def descendAlexander {Diagram : Type*} (iso : Setoid Diagram)
    (raw : Diagram → Polynomial (ZMod 17))
    (invariant : ∀ d e, iso.r d e → raw d = raw e) :
    Quotient iso → Polynomial (ZMod 17) :=
  Quotient.lift raw invariant

/-- A finite input consists of a lossless prime-polynomial naming map and
an Alexander reading on ACTUAL selected knot classes. Nothing here asserts
that an arbitrary abstract Knot type is already an ambient-isotopy quotient. -/
structure Source (Prime Knot : Type*) where
  polynomial : Prime → PrimePolynomial
  polynomial_injective : Function.Injective polynomial
  alexanderMod17 : Knot → Polynomial (ZMod 17)

/-- The mathematical incidence; do not confuse it with equality of knots. -/
def Linked {Prime Knot : Type*} (s : Source Prime Knot)
    (p : Prime) (k : Knot) : Prop :=
  (s.polynomial p).polynomial ∣ s.alexanderMod17 k

/-- The tags preserve the distinction between a prime polynomial and a knot. -/
abbrev Vertex (Prime Knot : Type*) := Sum Prime Knot

/-- Real symmetric, exactly supported bipartite edge weights. -/
noncomputable def edgeWeight {Prime Knot : Type*}
    (s : Source Prime Knot) (i j : Vertex Prime Knot) : ℝ := by
  classical
  exact match i, j with
    | .inl p, .inr k => if Linked s p k then 1 else 0
    | .inr k, .inl p => if Linked s p k then 1 else 0
    | _, _ => 0

/-- Hermitian source entries are precisely the real symmetric matrix
identity, with the complex involution explicitly retained. -/
theorem edgeWeight_hermitian {Prime Knot : Type*}
    (s : Source Prime Knot) (i j : Vertex Prime Knot) :
    star (edgeWeight s i j : ℂ) = (edgeWeight s j i : ℂ) := by
  cases i <;> cases j <;> simp [edgeWeight]

/-- Each off-diagonal edge reads an actual polynomial-divisibility fact. -/
theorem edgeWeight_ne_zero_iff {Prime Knot : Type*}
    (s : Source Prime Knot) (p : Prime) (k : Knot) :
    edgeWeight s (.inl p) (.inr k) ≠ 0 ↔ Linked s p k := by
  classical
  simp [edgeWeight]

/-- Real symmetry is the self-adjoint matrix-entry certificate. -/
theorem edgeWeight_symmetric {Prime Knot : Type*}
    (s : Source Prime Knot) (i j : Vertex Prime Knot) :
    edgeWeight s i j = edgeWeight s j i := by
  cases i <;> cases j <;> simp [edgeWeight]

section Finite
variable {Prime Knot : Type*} [Fintype Prime] [Fintype Knot]

abbrev Algebra (Prime Knot : Type*) := Vertex Prime Knot → ℂ
abbrev Hilbert (Prime Knot : Type*) := Vertex Prime Knot → ℂ

/-- The faithful, pointwise representation of C^V on C^V. -/
def act (a : Algebra Prime Knot) (ξ : Hilbert Prime Knot) :
    Hilbert Prime Knot := fun i => a i * ξ i

/-- Faithfulness is proved directly: the unit vector with ALL coordinates
one recovers the function a from π(a), including any disconnected knot. -/
theorem act_injective :
    Function.Injective
      (fun a : Algebra Prime Knot => act (Prime := Prime) (Knot := Knot) a) := by
  intro a b hab
  funext v
  have h := congrFun (congrArg (fun f => f (fun _ => (1 : ℂ))) hab) v
  simpa [act] using h

/-- The finite carrier's standard antilinear-first complex pairing. -/
def pairing (ξ η : Hilbert Prime Knot) : ℂ :=
  ∑ i : Vertex Prime Knot, star (ξ i) * η i

/-- The diagonal representation respects the *-operation with its true
Hilbert-space adjoint, not a mere transpose of the polynomial matrix. -/
theorem act_star (a : Algebra Prime Knot) (ξ η : Hilbert Prime Knot) :
    pairing (act a ξ) η = pairing ξ (act (fun i => star (a i)) η) := by
  classical
  simp only [pairing, act]
  apply Finset.sum_congr rfl
  intro i _
  rw [star_mul]
  ring

/-- The representation carries the unit in every finite snapshot. -/
theorem act_one (ξ : Hilbert Prime Knot) :
    act (fun _ => (1 : ℂ)) ξ = ξ := by
  funext i
  simp [act]

/-- The finite Dirac operator is the real symmetric incidence matrix.
This finite D is intentionally OFF-DIAGONAL; the unbounded confining
operator required for the countable limit is a separate object. -/
def dirac (s : Source Prime Knot) (ξ : Hilbert Prime Knot) :
    Hilbert Prime Knot := fun i =>
  ∑ j : Vertex Prime Knot, (edgeWeight s i j : ℂ) * ξ j

/-- A confining diagonal lift of the same incidence operator. This is
the exact finite operator built by the Noeaaeue source witness when `code`
is its sequential vertex index. Keeping the diagonal separate is essential:
its commutator with the pointwise representation is zero, but its finite
spectrum differs from that of the off-diagonal incidence operator. -/
def confinedDirac (s : Source Prime Knot) (code : Vertex Prime Knot → ℕ)
    (ξ : Hilbert Prime Knot) : Hilbert Prime Knot := fun i =>
  ((code i + 1 : ℕ) : ℂ) * ξ i + dirac s ξ i

/-- The real restriction of the same literal incidence matrix. -/
def realDirac (s : Source Prime Knot) (ξ : Vertex Prime Knot → ℝ) :
    Vertex Prime Knot → ℝ := fun i =>
  ∑ j : Vertex Prime Knot, edgeWeight s i j * ξ j

def realPair (ξ η : Vertex Prime Knot → ℝ) : ℝ :=
  ∑ i : Vertex Prime Knot, ξ i * η i

/-- Full finite self-adjointness over the real coordinates, proved by
reindexing the complete double sum rather than restricting to one edge. -/
theorem realDirac_selfAdjoint (s : Source Prime Knot)
    (ξ η : Vertex Prime Knot → ℝ) :
    realPair (realDirac s ξ) η = realPair ξ (realDirac s η) := by
  classical
  simp only [realPair, realDirac]
  calc
    (∑ i : Vertex Prime Knot,
      (∑ j : Vertex Prime Knot, edgeWeight s i j * ξ j) * η i) =
        ∑ i : Vertex Prime Knot,
          ∑ j : Vertex Prime Knot, edgeWeight s i j * ξ j * η i := by
            simp only [Finset.sum_mul]
    _ = ∑ j : Vertex Prime Knot,
          ∑ i : Vertex Prime Knot, edgeWeight s i j * ξ j * η i := by
            rw [Finset.sum_comm]
    _ = ∑ j : Vertex Prime Knot,
          ∑ i : Vertex Prime Knot, ξ j * edgeWeight s j i * η i := by
            apply Finset.sum_congr rfl
            intro j _
            apply Finset.sum_congr rfl
            intro i _
            rw [edgeWeight_symmetric s i j]
            ring
    _ = ∑ j : Vertex Prime Knot,
          ξ j * (∑ i : Vertex Prime Knot, edgeWeight s j i * η i) := by
            simp only [Finset.mul_sum, mul_assoc]

/-- Diagonal point-multiplication and the finite Dirac operator need
not commute: the defect retains all source incidence weights. -/
def commutator (s : Source Prime Knot) (a : Algebra Prime Knot)
    (ξ : Hilbert Prime Knot) : Hilbert Prime Knot :=
  fun i => dirac s (act a ξ) i - act a (dirac s ξ) i

/-- The confining diagonal has no commutator price. Hence the exact source
finite matrix D0+B has the SAME off-diagonal commutator as B alone. -/
theorem confinedCommutator_eq (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (a : Algebra Prime Knot)
    (ξ : Hilbert Prime Knot) :
    (fun i => confinedDirac s code (act a ξ) i -
      act a (confinedDirac s code ξ) i) = commutator s a ξ := by
  funext i
  simp only [confinedDirac, commutator, act]
  ring

/-- Explicit commutator matrix entries; no unproved knot-classification
statement is concealed in the formula. -/
theorem commutator_formula (s : Source Prime Knot)
    (a : Algebra Prime Knot) (ξ : Hilbert Prime Knot)
    (i : Vertex Prime Knot) :
    commutator s a ξ i =
      ∑ j : Vertex Prime Knot,
        (edgeWeight s i j : ℂ) * (a j - a i) * ξ j := by
  classical
  simp only [commutator, dirac, act]
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- A point mass is a legitimate vector in the finite Hilbert carrier. -/
def delta (v : Vertex Prime Knot) : Hilbert Prime Knot :=
  by
    classical
    exact fun w => if w = v then 1 else 0

/-- Reading the Dirac matrix against point vectors recovers every weighted
incidence, not merely a multiset of its eigenvalues. -/
theorem dirac_delta (s : Source Prime Knot) (i j : Vertex Prime Knot) :
    dirac s (delta j) i = (edgeWeight s i j : ℂ) := by
  classical
  simp [dirac, delta]

/-- The literal Dirac operator, read against a prime/knot basis pair,
recovers the Alexander divisibility relation exactly. -/
theorem linked_iff_dirac_entry_ne_zero (s : Source Prime Knot)
    (p : Prime) (k : Knot) :
    dirac s (delta (Sum.inr k)) (Sum.inl p) ≠ 0 ↔ Linked s p k := by
  rw [dirac_delta]
  classical
  simp [edgeWeight]

/-- The finite implemented D0+B retains the same polynomial/knot
cross-entry: the confining diagonal vanishes across the two distinct tags. -/
theorem confinedDirac_cross_entry (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (p : Prime) (k : Knot) :
    confinedDirac s code (delta (Sum.inr k)) (Sum.inl p) =
      (edgeWeight s (Sum.inl p) (Sum.inr k) : ℂ) := by
  simp [confinedDirac, delta, dirac_delta]

/-- The noncommutative readout of the chosen finite point projections has
exactly the source edge and the difference of endpoint labels. -/
theorem commutator_delta (s : Source Prime Knot)
    (a : Algebra Prime Knot) (i j : Vertex Prime Knot) :
    commutator s a (delta j) i =
      (edgeWeight s i j : ℂ) * (a j - a i) := by
  rw [commutator_formula]
  classical
  simp [delta]

/-- Multiplication is a unital *-representation (the involution is pointwise
complex conjugation). This is the exact algebraic multiplicativity return. -/
theorem act_mul (a b : Algebra Prime Knot) (ξ : Hilbert Prime Knot) :
    act a (act b ξ) = act (fun v => a v * b v) ξ := by
  funext i
  simp [act, mul_assoc]

/-- Spectral differentiation obeys the bimodule Leibniz law on the full
finite function algebra. The left term is `[D,π(a)]π(b)` and the right
term is `π(a)[D,π(b)]`; no commutation of D with either factor is assumed.
Together with `commutator_formula` and `confinedCommutator_eq`, this gives
an entrywise differential for both finite Dirac choices. -/
theorem commutator_leibniz (s : Source Prime Knot)
    (a b : Algebra Prime Knot) (ξ : Hilbert Prime Knot) :
    commutator s (fun v => a v * b v) ξ =
      fun i => commutator s a (act b ξ) i +
        act a (commutator s b ξ) i := by
  funext i
  rw [commutator_formula, commutator_formula]
  simp only [act, commutator_formula, Finset.mul_sum]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _
  ring

end Finite

/-! ## Real knot connected sum rather than a fabricated braid-knot equation -/

/-- The two displayed Alexander polynomials are NOT being used to identify
the underlying knots. The values are the externally established normalized
Alexander invariants of the trefoil and figure-eight knots. -/
def trefoilPolynomial : Polynomial (ZMod 17) :=
  GRWTSK.FieldTheoryAndPolynomials.ReciprocalQuarticDyad.quadraticFactor 1

def figureEightPolynomial : Polynomial (ZMod 17) :=
  GRWTSK.FieldTheoryAndPolynomials.ReciprocalQuarticDyad.quadraticFactor 3

/-- Their product is precisely the reciprocal quartic with a=-4,b=5.
This is an algebraic identity, not a claim that abstract labels are knots. -/
theorem trefoil_figureEight_product :
    trefoilPolynomial * figureEightPolynomial =
      GRWTSK.FieldTheoryAndPolynomials.ReciprocalQuarticDyad.quartic
        (-(1 + 3) : ZMod 17) ((1 : ZMod 17) * 3 + 2) :=
  GRWTSK.FieldTheoryAndPolynomials.ReciprocalQuarticDyad.quadraticFactor_mul 1 3

/-- The topological connected-sum theorem is a named INPUT with its exact
source-return equation. It is not proved by the multiplication identity. -/
theorem connectedSum_example {Knot : Type*}
    (alexander : Knot → Polynomial (ZMod 17))
    (connectedSum : Knot → Knot → Knot)
    (multiplicative : ∀ K L, alexander (connectedSum K L) =
      alexander K * alexander L)
    (trefoil figureEight : Knot)
    (ht : alexander trefoil = trefoilPolynomial)
    (hf : alexander figureEight = figureEightPolynomial) :
    alexander (connectedSum trefoil figureEight) =
      GRWTSK.FieldTheoryAndPolynomials.ReciprocalQuarticDyad.quartic
        (-(1 + 3) : ZMod 17) ((1 : ZMod 17) * 3 + 2) := by
  rw [multiplicative, ht, hf]
  exact trefoil_figureEight_product

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
