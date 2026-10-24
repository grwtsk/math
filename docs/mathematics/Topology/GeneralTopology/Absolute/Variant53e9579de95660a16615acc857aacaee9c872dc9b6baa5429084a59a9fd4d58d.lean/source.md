# Complete source: GRWTSK.Topology.GeneralTopology.Absolute.Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13a77d143694ddb3c6308fe0de59141cae087cce` · SHA-256 `6ad0a2514720c83dcb20b32f266ff07865d4967b085602e5fa93029c12cb9e0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ArithmeticFieldLabel.Variant07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ArithmeticFieldLabel.Variant07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465","mathematical_subject":"Topology.GeneralTopology","original_sha256":"07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/GaloisCohomology/Absolute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.GaloisCohomology.Continuous


namespace GRWTSK.Topology.GeneralTopology.ArithmeticFieldLabel.Variant07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465

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
```
