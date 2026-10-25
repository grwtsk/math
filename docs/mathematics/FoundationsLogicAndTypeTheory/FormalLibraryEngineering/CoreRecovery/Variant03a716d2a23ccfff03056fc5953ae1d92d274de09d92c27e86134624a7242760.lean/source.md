# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoreRecovery.Variant03a716d2a23ccfff03056fc5953ae1d92d274de09d92c27e86134624a7242760

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0388fb0d196b71735982e7ecbeabb658129f015` · SHA-256 `09a8b90ed64de3bde6cf268edb015ad36abff3aa42a7c1a114345543fc2dd499`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FillingCoreRecoveryCapability.Variant2fce4561bc460778a7f1560d3bdbaa10c07355f09a120d2c4c924dfc746cfcea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2fce4561bc460778a7f1560d3bdbaa10c07355f09a120d2c4c924dfc746cfcea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FillingCoreRecoveryCapability.Variant2fce4561bc460778a7f1560d3bdbaa10c07355f09a120d2c4c924dfc746cfcea","mathematical_subject":"Foundations.Unclassified","original_sha256":"2fce4561bc460778a7f1560d3bdbaa10c07355f09a120d2c4c924dfc746cfcea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/CosmeticSurgery/CoreRecovery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.CosmeticSurgery.Core
import Surface.SmoothFramedSurgery.AmbientIsotopyExtension

/-!
# Conditional filling-core recovery and exoticity

Core recovery is existential: a pair is recoverable when **some**
orientation-preserving filling homeomorphism carries the first filling core to
the second up to isotopy.  Failure for one selected homeomorphism is not enough
to establish exoticity.

The capability below separates the two geometric directions.  Drilling a
core-recovering homeomorphism produces an exterior symmetry carrying the
marked slopes; conversely, an exterior symmetry carrying the slopes extends
over the filling solid tori and recovers the cores.  A concrete proof of the
first direction normally invokes an ambient isotopy-extension theorem before
drilling.  Importing the generic smooth-framed-surgery interface makes that
dependency available, but its manifold and embedding types are not identified
with this knot-filling model without an explicit bridge.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FillingCoreRecoveryCapability.Variant2fce4561bc460778a7f1560d3bdbaa10c07355f09a120d2c4c924dfc746cfcea

namespace Surface.CosmeticSurgery

universe u

/-- Geometric drilling and extension data for filling cores. -/
structure FillingCoreRecoveryCapability
    (T : OrientedKnotFillingTheory.{u}) where
  /-- The selected filling homeomorphism carries the first core to the second up to isotopy. -/
  RecoversCore : {K : T.Knot} → {r s : T.Slope K} →
    T.FillingHomeomorphism K r s → Prop
  /-- Drill a core-recovering map to obtain a self-homeomorphism of the exterior. -/
  drill : ∀ {K : T.Knot} {r s : T.Slope K}
      (homeomorphism : T.FillingHomeomorphism K r s),
    RecoversCore homeomorphism →
      T.OrientationPreservingExteriorSelfHomeomorphism K
  drilled_map_carries_slope : ∀ {K : T.Knot} {r s : T.Slope K}
      (homeomorphism : T.FillingHomeomorphism K r s)
      (recovers : RecoversCore homeomorphism),
    T.actOnSlope (drill homeomorphism recovers) r = s
  /-- Extend an exterior symmetry that carries the first marked slope to the second. -/
  extend : ∀ {K : T.Knot} {r s : T.Slope K}
      (exteriorMap : T.OrientationPreservingExteriorSelfHomeomorphism K),
    T.actOnSlope exteriorMap r = s → T.FillingHomeomorphism K r s
  extended_map_recovers_core : ∀ {K : T.Knot} {r s : T.Slope K}
      (exteriorMap : T.OrientationPreservingExteriorSelfHomeomorphism K)
      (carries : T.actOnSlope exteriorMap r = s),
    RecoversCore (extend exteriorMap carries)

namespace FillingCoreRecoveryCapability

variable {T : OrientedKnotFillingTheory.{u}}

/-- Some filling homeomorphism recovers the two filling cores up to isotopy. -/
def CoreRecoverable
    (C : FillingCoreRecoveryCapability.{u} T)
    (K : T.Knot)
    (r s : T.Slope K) : Prop :=
  ∃ homeomorphism : T.FillingHomeomorphism K r s,
    C.RecoversCore homeomorphism

/--
Core recovery by some filling homeomorphism is equivalent to the pair being
mundane, conditional on the supplied drilling and extension capability.
-/
theorem coreRecoverable_iff_mundane
    (C : FillingCoreRecoveryCapability.{u} T)
    (K : T.Knot)
    (r s : T.Slope K) :
    C.CoreRecoverable K r s ↔ T.MundanePair K r s := by
  constructor
  · rintro ⟨homeomorphism, recovers⟩
    exact ⟨C.drill homeomorphism recovers,
      C.drilled_map_carries_slope homeomorphism recovers⟩
  · rintro ⟨exteriorMap, carries⟩
    exact ⟨C.extend exteriorMap carries,
      C.extended_map_recovers_core exteriorMap carries⟩

end FillingCoreRecoveryCapability

/--
The exterior-symmetry input used for nontrivial knots in `S^3`.  Its concrete
inhabitation requires the geometric meridian/longitude rigidity argument
(including Property P); it is not derived by this abstract module.
-/
structure ExteriorSlopeRigidity
    (T : OrientedKnotFillingTheory.{u}) where
  fixes_every_slope : ∀ {K : T.Knot},
    T.Nontrivial K →
      ∀ (homeomorphism :
          T.OrientationPreservingExteriorSelfHomeomorphism K)
        (r : T.Slope K),
        T.actOnSlope homeomorphism r = r

namespace ExteriorSlopeRigidity

variable {T : OrientedKnotFillingTheory.{u}}

/-- Distinct slopes on a nontrivial knot cannot form a mundane pair under slope rigidity. -/
theorem not_mundane_of_ne
    (R : ExteriorSlopeRigidity.{u} T)
    {K : T.Knot}
    (hK : T.Nontrivial K)
    {r s : T.Slope K}
    (hrs : r ≠ s) :
    ¬ T.MundanePair K r s := by
  rintro ⟨homeomorphism, carries⟩
  apply hrs
  exact (R.fixes_every_slope hK homeomorphism r).symm.trans carries

/-- Every purely cosmetic pair on a nontrivial knot is exotic. -/
theorem cosmeticPair_is_exotic
    (R : ExteriorSlopeRigidity.{u} T)
    {K : T.Knot}
    (hK : T.Nontrivial K)
    {r s : T.Slope K}
    (cosmetic : T.PurelyCosmeticPair K r s) :
    T.ExoticPair K r s :=
  ⟨cosmetic, R.not_mundane_of_ne hK cosmetic.1⟩

/-- Every knot-level counterexample on a nontrivial knot contains an exotic pair. -/
theorem knotCounterexample_has_exotic_pair
    (R : ExteriorSlopeRigidity.{u} T)
    {K : T.Knot}
    (hK : T.Nontrivial K)
    (counterexample : T.KnotCounterexample K) :
    ∃ r s : T.Slope K, T.ExoticPair K r s := by
  rcases counterexample with ⟨r, s, cosmetic⟩
  exact ⟨r, s, R.cosmeticPair_is_exotic hK cosmetic⟩

/--
For a distinct cosmetic pair, every orientation-preserving filling
homeomorphism fails core recovery.  The universal quantifier is essential.
-/
theorem every_filling_homeomorphism_fails_core_recovery
    (R : ExteriorSlopeRigidity.{u} T)
    (C : FillingCoreRecoveryCapability.{u} T)
    {K : T.Knot}
    (hK : T.Nontrivial K)
    {r s : T.Slope K}
    (hrs : r ≠ s) :
    ∀ homeomorphism : T.FillingHomeomorphism K r s,
      ¬ C.RecoversCore homeomorphism := by
  intro homeomorphism recovers
  have recoverable : C.CoreRecoverable K r s :=
    ⟨homeomorphism, recovers⟩
  have mundane := (C.coreRecoverable_iff_mundane K r s).mp recoverable
  exact R.not_mundane_of_ne hK hrs mundane

/-- Cosmeticity supplies the distinctness premise for universal core-recovery failure. -/
theorem cosmeticPair_all_homeomorphisms_fail_core_recovery
    (R : ExteriorSlopeRigidity.{u} T)
    (C : FillingCoreRecoveryCapability.{u} T)
    {K : T.Knot}
    (hK : T.Nontrivial K)
    {r s : T.Slope K}
    (cosmetic : T.PurelyCosmeticPair K r s) :
    ∀ homeomorphism : T.FillingHomeomorphism K r s,
      ¬ C.RecoversCore homeomorphism :=
  R.every_filling_homeomorphism_fails_core_recovery C hK cosmetic.1

end ExteriorSlopeRigidity

end Surface.CosmeticSurgery
```
