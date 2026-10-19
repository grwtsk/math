import Surface.Arithmetic.GaloisCohomology.Continuous

namespace Surface.Arithmetic
namespace GaloisCohomology

universe u

/-!
# Absolute and local Galois adapters

What is formalized:
Typed adapter records for absolute and local Galois groups whose cohomology is
computed only through an already supplied continuous finite quotient module.
Restriction from a local absolute group to a global absolute group is represented
by a continuous finite restriction, and the induced cohomology map is exactly the
previously constructed `resContinuousH1`.

What is certificate-gated:
The existence of the absolute/local Galois groups, the embedding or
decomposition-group comparison, and the finite-quotient factorization are
adapter inputs. They are not constructed here.

What is not claimed:
No number field, completion, absolute Galois group, decomposition group,
continuous cochain complex, Kummer exact sequence, Sha group, Mordell-Weil
descent theorem, or BSD theorem is proved here.
-/

/-- Minimal field label for an absolute Galois adapter. -/
structure ArithmeticFieldLabel where
  name : String
  characteristic : Nat
  boundary : List String

/--
An absolute Galois group adapter.

The `group` field is deliberately only the topological group interface from the
continuous finite layer. This file does not construct an absolute Galois group.
-/
structure AbsoluteGaloisGroupAdapter
    (K : ArithmeticFieldLabel) where
  group : ProfiniteGroupLike
  realizesAbsoluteGaloisGroup : Prop
  realizesAbsoluteGaloisGroupCertified :
    realizesAbsoluteGaloisGroup
  boundary : List String

/-- A local Galois group adapter over a named place of `K`. -/
structure LocalGaloisGroupAdapter
    (K : ArithmeticFieldLabel)
    (global : AbsoluteGaloisGroupAdapter K) where
  placeName : String
  group : ProfiniteGroupLike
  mapsToGlobal : Prop
  mapsToGlobalCertified : mapsToGlobal
  boundary : List String

/--
An absolute finite module is a continuous finite module whose profinite label is
identified with an absolute Galois adapter.
-/
structure AbsoluteFiniteGaloisModule
    {K : ArithmeticFieldLabel}
    (GK : AbsoluteGaloisGroupAdapter K)
    (A : FiniteAddCommGroup.{u}) where
  continuousModule : ContinuousFiniteGaloisModule.{u} A
  groupMatches :
    continuousModule.G = GK.group
  boundary : List String

/-- Absolute `H1` is the continuous finite quotient `H1`; no new cohomology object is introduced. -/
abbrev AbsoluteH1
    {K : ArithmeticFieldLabel}
    {GK : AbsoluteGaloisGroupAdapter K}
    {A : FiniteAddCommGroup.{u}}
    (M : AbsoluteFiniteGaloisModule GK A) : Type u :=
  ContinuousH1 M.continuousModule

theorem absoluteH1_eq_continuousH1
    {K : ArithmeticFieldLabel}
    {GK : AbsoluteGaloisGroupAdapter K}
    {A : FiniteAddCommGroup.{u}}
    (M : AbsoluteFiniteGaloisModule GK A) :
    AbsoluteH1 M = ContinuousH1 M.continuousModule := by
  rfl

/--
Restriction from a local absolute adapter to a global absolute adapter, realized
entirely through the continuous finite quotient restriction.
-/
structure AbsoluteToLocalRestriction
    {K : ArithmeticFieldLabel}
    {GK : AbsoluteGaloisGroupAdapter K}
    (localAdapter : LocalGaloisGroupAdapter K GK)
    {A : FiniteAddCommGroup.{u}}
    (globalModule : AbsoluteFiniteGaloisModule GK A) where
  localModule : ContinuousFiniteGaloisModule.{u} A
  localGroupMatches :
    localModule.G = localAdapter.group
  continuousRestriction :
    ContinuousFiniteRestriction localModule globalModule.continuousModule
  boundary : List String

/-- Absolute-to-local restriction is the already constructed continuous finite restriction. -/
def resAbsoluteH1
    {K : ArithmeticFieldLabel}
    {GK : AbsoluteGaloisGroupAdapter K}
    {localAdapter : LocalGaloisGroupAdapter K GK}
    {A : FiniteAddCommGroup.{u}}
    {globalModule : AbsoluteFiniteGaloisModule GK A}
    (R : AbsoluteToLocalRestriction localAdapter globalModule) :
    AbsoluteH1 globalModule → ContinuousH1 R.localModule :=
  resContinuousH1 R.continuousRestriction

theorem resAbsoluteH1_value
    {K : ArithmeticFieldLabel}
    {GK : AbsoluteGaloisGroupAdapter K}
    {localAdapter : LocalGaloisGroupAdapter K GK}
    {A : FiniteAddCommGroup.{u}}
    {globalModule : AbsoluteFiniteGaloisModule GK A}
    (R : AbsoluteToLocalRestriction localAdapter globalModule)
    (c : AbsoluteH1 globalModule) :
    resAbsoluteH1 R c =
      resContinuousH1 R.continuousRestriction c := by
  rfl

theorem absoluteAdapter_depends_after_continuous :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.continuousAdapter
      GaloisCohomologyLayer.absoluteGaloisAdapter :=
  ghc1a_absolute_depends_after_continuous

theorem absoluteAdapter_depends_after_finiteSelmer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.absoluteGaloisAdapter :=
  ghc1a_absolute_depends_after_selmer

end GaloisCohomology
end Surface.Arithmetic
