# actualNormalizedCriticalEarly_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7df99dea-530a-366b-e87c-37a2330569a4",
  "kind": "theorem",
  "lexical_name": "actualNormalizedCriticalEarly_abs_le",
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
  "slug": "actualnormalizedcriticalearly-abs-le--54c2c511394dae37f12678d5",
  "source": {
    "blob": "f0b81e89ef707ea7ba4e005acbe20cbf9d9c4eba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variantec262b8140148d3b3f4326c7d2751cda43180fdd27a619aea152b9de54c713de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c2c511394dae37f12678d52c79e5d606071b1f719e71a258b0cbb32daccfa1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variantec262b8140148d3b3f4326c7d2751cda43180fdd27a619aea152b9de54c713de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7df99dea-530a-366b-e87c-37a2330569a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNormalizedCriticalEarly_abs_le {A T : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) :
    |A ^ 4 * Real.exp (-A) * (∫ t in Real.log 7..T, actualCriticalErrorDensity A t)| ≤
      actualNormalizedCriticalEarlyBudget T A := by
  have he := actualCriticalErrorCovariance_early_error_abs_le hA hT
  have hbound : |∫ t in Real.log 7..T, actualCriticalErrorDensity A t| ≤
      |actualEarlyCriticalErrorCenter T| +
        2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2 := by
    have h := abs_add_le
      ((∫ t in Real.log 7..T, actualCriticalErrorDensity A t) - actualEarlyCriticalErrorCenter T)
      (actualEarlyCriticalErrorCenter T)
    rw [sub_add_cancel] at h
    linarith
  rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ A ^ 4 * Real.exp (-A))]
  calc
    _ ≤ A ^ 4 * Real.exp (-A) *
        (|actualEarlyCriticalErrorCenter T| +
          2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2) :=
      mul_le_mul_of_nonneg_left hbound (by positivity)
    _ = _ := by
      unfold actualNormalizedCriticalEarlyBudget
      have hne : A ≠ 0 := by linarith
      field_simp
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variantec262b8140148d3b3f4326c7d2751cda43180fdd27a619aea152b9de54c713de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variantec262b8140148d3b3f4326c7d2751cda43180fdd27a619aea152b9de54c713de.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0b81e89ef707ea7ba4e005acbe20cbf9d9c4eba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
