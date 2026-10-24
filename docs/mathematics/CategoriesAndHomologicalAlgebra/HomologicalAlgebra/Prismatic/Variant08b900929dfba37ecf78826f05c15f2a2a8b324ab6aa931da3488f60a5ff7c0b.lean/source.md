# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Prismatic.Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9be4c3ce6ab8933990787836e6ced5b1ed67394e` · SHA-256 `08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Authority.Evidence
import Mathematics.NeuralDiffusion.CertifiedLayer

/-!
# Certificate-gated prismatic realization

This module does not define prismatic cohomology from neural data.  It records
the imported prism, formal scheme, coefficient complex, and comparison
authority, then formalizes the finite cochain obligations that can be checked
inside this project.
-/

namespace Mathematics.NeuralDiffusion

universe u v

/-- A single-carrier cochain presentation with square-zero differential. -/
structure CochainComplex (K : Type u) [AddCommGroup K] where
  differential : K →+ K
  differential_squared : ∀ x, differential (differential x) = 0

namespace CochainComplex

variable {K : Type u} [AddCommGroup K]

def IsCocycle (complex : CochainComplex K) (x : K) : Prop :=
  complex.differential x = 0

def IsCoboundary (complex : CochainComplex K) (x : K) : Prop :=
  ∃ witness, complex.differential witness = x

/--
Two representatives define the same presented cohomology class when both are
cocycles and their difference is a boundary.
-/
def Cohomologous (complex : CochainComplex K) (x y : K) : Prop :=
  complex.IsCocycle x ∧
    complex.IsCocycle y ∧
    ∃ witness, x - y = complex.differential witness

theorem differential_is_cocycle (complex : CochainComplex K) (x : K) :
    complex.IsCocycle (complex.differential x) :=
  complex.differential_squared x

end CochainComplex

/-- A chain map with the exact commutation equation `d Φ = Φ d`. -/
structure ChainMap
    {K : Type u} {L : Type v}
    [AddCommGroup K] [AddCommGroup L]
    (source : CochainComplex K) (target : CochainComplex L) where
  map : K →+ L
  commutes :
    ∀ x,
      target.differential (map x) =
        map (source.differential x)

namespace ChainMap

variable
    {K : Type u} {L : Type v}
    [AddCommGroup K] [AddCommGroup L]
    {source : CochainComplex K} {target : CochainComplex L}

theorem maps_cocycles
    (chainMap : ChainMap source target)
    {x : K} (hx : source.IsCocycle x) :
    target.IsCocycle (chainMap.map x) := by
  unfold CochainComplex.IsCocycle at hx ⊢
  rw [chainMap.commutes, hx]
  exact map_zero chainMap.map

theorem maps_coboundaries
    (chainMap : ChainMap source target)
    {x : K} (hx : source.IsCoboundary x) :
    target.IsCoboundary (chainMap.map x) := by
  obtain ⟨witness, hwitness⟩ := hx
  refine ⟨chainMap.map witness, ?_⟩
  rw [chainMap.commutes, hwitness]

/-- A chain map respects the presented cohomology equivalence relation. -/
theorem maps_cohomologous
    (chainMap : ChainMap source target)
    {x y : K} (hxy : source.Cohomologous x y) :
    target.Cohomologous (chainMap.map x) (chainMap.map y) := by
  refine ⟨chainMap.maps_cocycles hxy.1,
    chainMap.maps_cocycles hxy.2.1, ?_⟩
  obtain ⟨witness, hwitness⟩ := hxy.2.2
  refine ⟨chainMap.map witness, ?_⟩
  calc
    chainMap.map x - chainMap.map y = chainMap.map (x - y) := by simp
    _ = chainMap.map (source.differential witness) :=
      congrArg chainMap.map hwitness
    _ = target.differential (chainMap.map witness) :=
      (chainMap.commutes witness).symm

end ChainMap

/--
A concrete quasi-isomorphism certificate phrased directly on cocycle classes.
The fields assert injectivity and surjectivity on the presented cohomology
relation; a mere digest or neural similarity score cannot inhabit this type.
-/
structure QuasiIsomorphismCertificate
    {K : Type u} {L : Type v}
    [AddCommGroup K] [AddCommGroup L]
    (source : CochainComplex K) (target : CochainComplex L) where
  id : CertificateId
  idValid : id.Valid
  forward : ChainMap source target
  reflectsClasses :
    ∀ {x y},
      source.IsCocycle x →
      source.IsCocycle y →
      target.Cohomologous (forward.map x) (forward.map y) →
      source.Cohomologous x y
  surjectiveOnClasses :
    ∀ {y},
      target.IsCocycle y →
      ∃ x,
        source.IsCocycle x ∧
          target.Cohomologous (forward.map x) y

/--
Imported arithmetic references for the prismatic branch.  The record is
explicitly nonauthoritative: values and evidence identifiers name supplied
objects but prove no comparison theorem.
-/
structure PrismaticAuthorityReference
    (Prism : Type u) (FormalScheme : Type v) (ArithmeticComplex : Type v) where
  prism : Prism
  formalScheme : FormalScheme
  arithmeticComplex : ArithmeticComplex
  prismaticSiteEvidence : EvidenceId
  comparisonEvidence : List EvidenceId
  evidenceKind : Authority.EvidenceKind := .contractProposition
  evidence_is_nonauthoritative :
    Authority.contributesTheoremAuthority evidenceKind = false

namespace PrismaticAuthorityReference

theorem cannot_create_theorem_authority
    (reference :
      PrismaticAuthorityReference
        Prism FormalScheme ArithmeticComplex) :
    Authority.contributesTheoremAuthority
        reference.evidenceKind =
      false :=
  reference.evidence_is_nonauthoritative

end PrismaticAuthorityReference

/-- A certified finite model and its supplied quasi-isomorphism. -/
structure FiniteCochainModel
    {K : Type u} {C : Type v}
    [AddCommGroup K] [AddCommGroup C] where
  finiteComplex : CochainComplex K
  arithmeticComplex : CochainComplex C
  perfectnessEvidence : EvidenceId
  comparison :
    QuasiIsomorphismCertificate finiteComplex arithmeticComplex

/--
The neural arithmetic operator is a chain map compatible with Frobenius and
every declared Nygaard level.
-/
structure ArithmeticOperator
    {K : Type u} [AddCommGroup K]
    (complex : CochainComplex K) where
  chainMap : ChainMap complex complex
  frobenius : K →+ K
  commutesWithFrobenius :
    ∀ x,
      chainMap.map (frobenius x) =
        frobenius (chainMap.map x)
  nygaard : Nat → Set K
  preservesNygaard :
    ∀ level x,
      x ∈ nygaard level →
        chainMap.map x ∈ nygaard level

namespace ArithmeticOperator

variable {K : Type u} [AddCommGroup K] {complex : CochainComplex K}

theorem induces_on_cocycles
    (operator : ArithmeticOperator complex)
    {x : K} (hx : complex.IsCocycle x) :
    complex.IsCocycle (operator.chainMap.map x) :=
  operator.chainMap.maps_cocycles hx

theorem respects_cohomology_classes
    (operator : ArithmeticOperator complex)
    {x y : K} (hxy : complex.Cohomologous x y) :
    complex.Cohomologous
      (operator.chainMap.map x)
      (operator.chainMap.map y) :=
  operator.chainMap.maps_cohomologous hxy

end ArithmeticOperator

end Mathematics.NeuralDiffusion
```
