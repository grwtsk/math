# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Prism.Variant331b8a16c58d66f182012850e1ea592f63928ba65570988e219c53e4442a7b7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cff28f1a9ba2aeab3fc43dd61a97bd7317cc410d` · SHA-256 `331b8a16c58d66f182012850e1ea592f63928ba65570988e219c53e4442a7b7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Prismatic.Distinguished

namespace Surface.Prismatic

universe u

/-!
# Prisms and variants

Formalized here: δ-pairs, prisms, bounded/orientable/perfect/crystalline
variants, and small projection theorems.

Certificate-gated here: derived completion, Cartier divisors, perfection, and
crystalline construction theorems.

The prism condition is the Bhatt--Scholze condition `p in I + phi(I)A`, carried
by `ContainsPCondition`.  The stronger clause `p in I` is special to
crystalline-style examples and is not part of the general prism interface.
-/

/-- A δ-pair `(A,I)`. -/
structure DeltaPair (p : Nat) where
  A : DeltaRing.{u} p
  I : IdealLike A
  boundary : List String

/-- A prism, matching the structural clauses of Bhatt--Scholze Definition 3.2. -/
structure Prism (p : Nat) extends DeltaPair.{u} p where
  cartier : CartierDivisorCertificate A I
  derived_complete : DerivedCompleteCertificate A I
  frobenius_condition : ContainsPCondition A I
  prismBoundary : List String

theorem prism_condition_unfold
    (P : Prism.{u} p) :
    P.cartier.cartier ∧
      P.derived_complete.derivedComplete ∧
      P.frobenius_condition.containsP := by
  exact ⟨P.cartier.cartierCertified,
    P.derived_complete.derivedCompleteCertified,
    P.frobenius_condition.containsPCertified⟩

/-- Bounded prism: `A/I` has bounded `p^∞` torsion. -/
structure BoundedPrism (p : Nat) extends Prism.{u} p where
  bounded_torsion : BoundedPTorsionCertificate
  boundedBoundary : List String

/-- Orientable prism with a distinguished generator of `I`. -/
structure OrientablePrism (p : Nat) extends Prism.{u} p where
  generator : DistinguishedElement A
  generates_I : Generates generator.d I
  orientableBoundary : List String

def orientable_prism_has_distinguished_generator
    (P : OrientablePrism.{u} p) :
    DistinguishedElement P.A :=
  P.generator

/-- Perfect prism: Frobenius is an isomorphism, represented by a certificate. -/
structure PerfectPrism (p : Nat) extends Prism.{u} p where
  phi_equiv : Prop
  phi_equivCertified : phi_equiv
  perfectBoundary : List String

/-- Crystalline prism: the ideal is identified with `(p)`. -/
structure CrystallinePrism (p : Nat) extends Prism.{u} p where
  I_eq_p : Prop
  I_eq_pCertified : I_eq_p
  crystallineBoundary : List String

/-- Certificate-gated crystalline construction. -/
structure CrystallineConstructionCertificate
    (p : Nat)
    (A : DeltaRing.{u} p)
    (I : IdealLike A) where
  p_torsionfree : Prop
  p_torsionfreeCertified : p_torsionfree
  p_complete : ClassicalCompleteCertificate A I
  frobenius_lift : A.phi_lifts_frobenius_mod_p
  crystalline : CrystallinePrism.{u} p
  boundary : List String

def crystalline_prism_from_p_torsionfree_p_complete_frobenius_lift
    (C : CrystallineConstructionCertificate p A I) :
    CrystallinePrism.{u} p :=
  C.crystalline

/-- Certificate-gated boundedness of perfect prisms. -/
structure PerfectPrismBoundedCertificate
    (P : PerfectPrism.{u} p) where
  bounded : BoundedPrism.{u} p
  requiredHypotheses : List String
  boundary : List String

def perfect_prism_is_bounded
    {P : PerfectPrism.{u} p}
    (C : PerfectPrismBoundedCertificate P) :
    BoundedPrism.{u} p :=
  C.bounded

/-- Trivial unit prism used for interface examples. -/
def unitPrism (p : Nat) : Prism.{0} p where
  A := unitDeltaRing p
  I := unitIdeal p
  boundary := ["Unit δ-pair example."]
  cartier := {
    cartier := True
    cartierCertified := trivial
    boundary := ["Trivial Cartier certificate for unit example."]
  }
  derived_complete := {
    derivedComplete := True
    derivedCompleteCertified := trivial
    boundary := ["Trivial derived-completion certificate for unit example."]
  }
  frobenius_condition := {
    containsP := True
    containsPCertified := trivial
    boundary := ["Trivial `p ∈ I + φ(I)A` certificate for unit example."]
  }
  prismBoundary := [
    "Unit prism example.",
    "This example is not a nontrivial prismatic comparison theorem."
  ]

def unitBoundedPrism (p : Nat) : BoundedPrism.{0} p where
  toPrism := unitPrism p
  bounded_torsion := {
    quotientLabel := "unit quotient"
    boundedPTorsion := True
    boundedPTorsionCertified := trivial
    boundary := ["Trivial bounded torsion certificate."]
  }
  boundedBoundary := ["Bounded unit prism example."]

def unitOrientablePrism (p : Nat) : OrientablePrism.{0} p where
  toPrism := unitPrism p
  generator := unitDistinguishedElement p
  generates_I := {
    generator_mem := trivial
    generates := True
    generatesCertified := trivial
    boundary := ["Trivial generator certificate for unit ideal."]
  }
  orientableBoundary := ["Orientable unit prism example."]

end Surface.Prismatic
```
