import Surface.Arithmetic.GaloisCohomology.DependencyInvariant

namespace Surface.Arithmetic
namespace GaloisCohomology

universe u

/-!
# Abstract finite Kummer maps

What is formalized:
Finite, abstract Kummer-style maps into the constructed degree-one cohomology
objects from `Surface.Arithmetic.GaloisCohomology`, together with local maps,
restriction compatibility, and the theorem that the global image lands in the
constructed Selmer subgroup when the local images satisfy the local conditions.

What is certificate-gated:
The arithmetic origin of these maps.  This file does not construct elliptic
curve torsion, multiplication-by-`n` exact sequences, absolute Galois groups, or
local fields.

What is not claimed:
No Kummer exact sequence, Mordell-Weil descent theorem, Tate-Shafarevich group,
Sha finiteness, or BSD statement is proved here.
-/

/-- A concrete downstream map into finite abstract `H1`. -/
structure FiniteH1Map
    (G : FiniteGroupData.{u})
    (A : FiniteAddCommGroup.{u})
    (rho : AdditiveAction G A) where
  Domain : Type u
  toH1 : Domain → FiniteH1 G A rho

/--
Downstream finite Kummer/Selmer data over a constructed finite Selmer problem.

This is the first canonical home for abstract Kummer maps: it depends on
constructed finite `H1`, restriction, and Selmer data, but remains independent of
elliptic curves, BSD, Sha, and continuous/absolute Galois machinery.
-/
structure FiniteKummerSelmerData
    (P : FiniteSelmerProblem.{u, u, u}) where
  globalKummer :
    FiniteH1Map P.G P.A P.ρG
  localKummer :
    (place : P.V) →
      FiniteH1Map (P.Gv place) P.A (P.ρv place)
  localizeDomain :
    (place : P.V) →
      globalKummer.Domain → (localKummer place).Domain
  compatibility :
    ∀ (place : P.V) (x : globalKummer.Domain),
      resFiniteH1 (P.ιv place) (globalKummer.toH1 x) =
        (localKummer place).toH1 (localizeDomain place x)
  localKummer_mem :
    ∀ (place : P.V) (x : globalKummer.Domain),
      (P.localCondition place).carrier
        ((localKummer place).toH1 (localizeDomain place x))
  boundary : List String

namespace FiniteKummerSelmerData

/-- The global-to-local compatibility equations are visible as a named proposition. -/
def compatibleWithRestriction
    {P : FiniteSelmerProblem.{u, u, u}}
    (K : FiniteKummerSelmerData P) :
    Prop :=
  ∀ (place : P.V) (x : K.globalKummer.Domain),
    resFiniteH1 (P.ιv place) (K.globalKummer.toH1 x) =
      (K.localKummer place).toH1 (K.localizeDomain place x)

theorem compatibleWithRestriction_of_field
    {P : FiniteSelmerProblem.{u, u, u}}
    (K : FiniteKummerSelmerData P) :
    K.compatibleWithRestriction :=
  K.compatibility

/-- The global Kummer image lands in the constructed finite Selmer subgroup. -/
def globalImageLandsInSelmer
    {P : FiniteSelmerProblem.{u, u, u}}
    (K : FiniteKummerSelmerData P) :
    Prop :=
  ∀ x : K.globalKummer.Domain,
    P.selmerSubgroup.carrier (K.globalKummer.toH1 x)

theorem globalImageLandsInSelmer_of_local_conditions
    {P : FiniteSelmerProblem.{u, u, u}}
    (K : FiniteKummerSelmerData P) :
    K.globalImageLandsInSelmer := by
  intro x place
  rw [K.compatibility place x]
  exact K.localKummer_mem place x

/--
Abstract Kummer data is downstream of the finite Selmer substrate.

This theorem is audit-facing: it keeps the middle-out dependency invariant
visible at the Kummer layer without importing elliptic curves, BSD, continuous
cochains, or absolute Galois machinery.
-/
theorem depends_after_finiteSelmer
    {P : FiniteSelmerProblem.{u, u, u}}
    (_K : FiniteKummerSelmerData P) :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.abstractKummer :=
  ghc1a_kummer_depends_after_selmer

end FiniteKummerSelmerData

end GaloisCohomology
end Surface.Arithmetic
