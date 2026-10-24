# actualOneSidedPairing_dominates_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11058acb-1ea6-83b1-a7aa-7a4eee051782",
  "kind": "theorem",
  "lexical_name": "actualOneSidedPairing_dominates_window",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "actualonesidedpairing-dominates-window--421f8903e03517e5286d6304",
  "source": {
    "blob": "d1e15acb826be614702567d80c5f574d85b754cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant7c4c4699e093519cef29ef30b4d9e3440cf1882540f06bc77140c48b7f4bda73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:421f8903e03517e5286d6304989f71529523045a4eef38496a194b3ccdcfb855",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant7c4c4699e093519cef29ef30b4d9e3440cf1882540f06bc77140c48b7f4bda73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11058acb-1ea6-83b1-a7aa-7a4eee051782`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualOneSidedPairing_dominates_window (σ A : ℝ) (hA : 10 ≤ A) :
    (3 / 2) * criticalOneSidedMass σ (A / 20) ≤ actualOneSidedPairing σ A := by
  have hA1 : 1 ≤ A := by linarith
  have hgi := actualOneSidedPairing_integrable σ A hA1
  have hsub : Ioc (0 : ℝ) (A / 20) ⊆ Ioi 0 := fun _ hu ↦ hu.1
  unfold criticalOneSidedMass actualOneSidedPairing
  rw [intervalIntegral.integral_of_le (by linarith : (0 : ℝ) ≤ A / 20)]
  calc
    _ = ∫ u in Ioc (0 : ℝ) (A / 20),
        (3 / 2) * (Real.exp (3 * u / 2) * max (σ * fullPeanoError u) 0) :=
      (integral_const_mul _ _).symm
    _ ≤ ∫ u in Ioc (0 : ℝ) (A / 20),
        max (σ * fullPeanoError u * deriv (deriv (weightedCorrelation A)) u) 0 := by
      apply setIntegral_mono_on ((criticalOneSidedMass_window_integrable σ A hA).const_mul _)
        (hgi.mono_set hsub) measurableSet_Ioc
      intro u hu
      exact oneSided_window_pointwise σ A u hA hu.1.le hu.2
    _ ≤ _ := setIntegral_mono_set hgi
      (Filter.Eventually.of_forall (fun _ ↦ le_max_right _ _)) hsub.eventuallyLE

/-- Critical-mass spikes propagate to the actual source at the same fixed linear rate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant7c4c4699e093519cef29ef30b4d9e3440cf1882540f06bc77140c48b7f4bda73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant7c4c4699e093519cef29ef30b4d9e3440cf1882540f06bc77140c48b7f4bda73.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e15acb826be614702567d80c5f574d85b754cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
