import Surface.Arithmetic.GaloisCohomology.Kummer

namespace Surface.Arithmetic
namespace GaloisCohomology

universe u

/-!
# Abstract finite Selmer exactness

What is formalized:
A finite, abstract exactness layer over the constructed finite `H1`, restriction,
Selmer subgroup, and Kummer map data.  A Selmer class is an actual element of the
constructed finite Selmer subgroup, the Kummer image is the existing map into
finite `H1`, and exactness is expressed as equality between the kernel of an
explicit obstruction map and the image of the Kummer map.

What is certificate-gated:
The arithmetic origin of the obstruction object.  This file deliberately does
not identify it with a Tate-Shafarevich group, Weil-Chatelet group, or torsor
cohomology object.

What is not claimed:
No Kummer exact sequence for elliptic curves, no Mordell-Weil descent theorem,
no Sha construction, no Sha finiteness, and no BSD theorem is proved here.
-/

/-- A class in the constructed finite Selmer subgroup. -/
structure FiniteSelmerClass
    (P : FiniteSelmerProblem.{u, u, u}) where
  h1Class : FiniteH1 P.G P.A P.ρG
  inSelmer : P.selmerSubgroup.carrier h1Class

namespace FiniteSelmerClass

/-- Equality of finite Selmer classes is controlled by the underlying `H1` class. -/
theorem ext
    {P : FiniteSelmerProblem.{u, u, u}}
    {x y : FiniteSelmerClass P}
    (h : x.h1Class = y.h1Class) :
    x = y := by
  cases x with
  | mk xclass xin =>
    cases y with
    | mk yclass yin =>
      cases h
      rfl

end FiniteSelmerClass

namespace FiniteKummerSelmerData

/-- The global Kummer image as an actual constructed finite Selmer class. -/
def globalImageAsSelmerClass
    {P : FiniteSelmerProblem.{u, u, u}}
    (K : FiniteKummerSelmerData P)
    (x : K.globalKummer.Domain) :
    FiniteSelmerClass P where
  h1Class := K.globalKummer.toH1 x
  inSelmer := globalImageLandsInSelmer_of_local_conditions K x

end FiniteKummerSelmerData

/--
Abstract finite exactness data for a Kummer-to-Selmer sequence.

This is not a placeholder saying that an exact sequence is specified.  It names
the obstruction object, the obstruction map out of constructed Selmer classes,
the zero obstruction, injectivity of the Kummer map, kernel/image exactness, and
surjectivity onto the obstruction object.
-/
structure FiniteSelmerExactSequenceData
    {P : FiniteSelmerProblem.{u, u, u}}
    (K : FiniteKummerSelmerData P) where
  Obstruction : Type u
  zeroObstruction : Obstruction
  obstructionOf : FiniteSelmerClass P → Obstruction
  globalKummer_injective :
    ∀ x y : K.globalKummer.Domain,
      K.globalKummer.toH1 x = K.globalKummer.toH1 y → x = y
  obstructionOf_globalImage_zero :
    ∀ x : K.globalKummer.Domain,
      obstructionOf (K.globalImageAsSelmerClass x) = zeroObstruction
  kernel_lifts_to_globalKummer :
    ∀ s : FiniteSelmerClass P,
      obstructionOf s = zeroObstruction →
        ∃ x : K.globalKummer.Domain,
          K.globalKummer.toH1 x = s.h1Class
  obstruction_surjective :
    ∀ o : Obstruction,
      ∃ s : FiniteSelmerClass P,
        obstructionOf s = o
  boundary : List String

namespace FiniteSelmerExactSequenceData

/-- Membership in the kernel of the finite obstruction map. -/
def inObstructionKernel
    {P : FiniteSelmerProblem.{u, u, u}}
    {K : FiniteKummerSelmerData P}
    (E : FiniteSelmerExactSequenceData K)
    (s : FiniteSelmerClass P) : Prop :=
  E.obstructionOf s = E.zeroObstruction

/-- Membership in the image of the finite global Kummer map. -/
def inGlobalKummerImage
    {P : FiniteSelmerProblem.{u, u, u}}
    {K : FiniteKummerSelmerData P}
    (_E : FiniteSelmerExactSequenceData K)
    (s : FiniteSelmerClass P) : Prop :=
  ∃ x : K.globalKummer.Domain,
    K.globalKummer.toH1 x = s.h1Class

/-- The global Kummer image lies in the kernel of the obstruction map. -/
theorem globalKummerImage_subset_obstructionKernel
    {P : FiniteSelmerProblem.{u, u, u}}
    {K : FiniteKummerSelmerData P}
    (E : FiniteSelmerExactSequenceData K)
    (x : K.globalKummer.Domain) :
    E.inObstructionKernel (K.globalImageAsSelmerClass x) :=
  E.obstructionOf_globalImage_zero x

/-- Every class in the obstruction kernel lifts to the global Kummer domain. -/
theorem obstructionKernel_subset_globalKummerImage
    {P : FiniteSelmerProblem.{u, u, u}}
    {K : FiniteKummerSelmerData P}
    (E : FiniteSelmerExactSequenceData K)
    (s : FiniteSelmerClass P)
    (hs : E.inObstructionKernel s) :
    E.inGlobalKummerImage s :=
  E.kernel_lifts_to_globalKummer s hs

/-- Kernel/image exactness for the finite Kummer-to-Selmer map. -/
theorem obstructionKernel_iff_globalKummerImage
    {P : FiniteSelmerProblem.{u, u, u}}
    {K : FiniteKummerSelmerData P}
    (E : FiniteSelmerExactSequenceData K)
    (s : FiniteSelmerClass P) :
    E.inObstructionKernel s ↔ E.inGlobalKummerImage s := by
  constructor
  · exact E.obstructionKernel_subset_globalKummerImage s
  · intro h
    rcases h with ⟨x, hx⟩
    unfold inObstructionKernel
    have hclass :
        s = K.globalImageAsSelmerClass x := by
      apply FiniteSelmerClass.ext
      exact hx.symm
    rw [hclass]
    exact E.obstructionOf_globalImage_zero x

/-- The obstruction map is surjective onto the explicit obstruction object. -/
theorem obstructionMap_surjective
    {P : FiniteSelmerProblem.{u, u, u}}
    {K : FiniteKummerSelmerData P}
    (E : FiniteSelmerExactSequenceData K)
    (o : E.Obstruction) :
    ∃ s : FiniteSelmerClass P,
      E.obstructionOf s = o :=
  E.obstruction_surjective o

/-- Injectivity of the global Kummer map is available as a named theorem. -/
theorem globalKummer_injective_of_exactSequence
    {P : FiniteSelmerProblem.{u, u, u}}
    {K : FiniteKummerSelmerData P}
    (E : FiniteSelmerExactSequenceData K)
    {x y : K.globalKummer.Domain}
    (h : K.globalKummer.toH1 x = K.globalKummer.toH1 y) :
    x = y :=
  E.globalKummer_injective x y h

/-- Finite exactness is downstream of the abstract Kummer layer. -/
theorem depends_after_abstractKummer
    {P : FiniteSelmerProblem.{u, u, u}}
    {K : FiniteKummerSelmerData P}
    (_E : FiniteSelmerExactSequenceData K) :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractKummer
      GaloisCohomologyLayer.selmerExact :=
  ghc1a_selmerExact_depends_after_kummer

end FiniteSelmerExactSequenceData

end GaloisCohomology
end Surface.Arithmetic
