# actualCriticalKernel_edge_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccdb05d1-8330-df2f-9fc2-0c93705a814c",
  "kind": "theorem",
  "lexical_name": "actualCriticalKernel_edge_abs_le",
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
  "slug": "actualcriticalkernel-edge-abs-le--c174f264c6b82b9831244b61",
  "source": {
    "blob": "f0b81e89ef707ea7ba4e005acbe20cbf9d9c4eba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variantec262b8140148d3b3f4326c7d2751cda43180fdd27a619aea152b9de54c713de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c174f264c6b82b9831244b6130af01a65c13b66b24f5814f2a9c4d586bac2ed9",
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

Occurrence: `result:ccdb05d1-8330-df2f-9fc2-0c93705a814c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalKernel_edge_abs_le {A t : ℝ} (hA : 91 ≤ A) (ht : t ≤ 2 * A) :
    |sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2| ≤
        67 / A ^ 4 * ((2 * A - t) ^ 4 / 96 + (2 * A - t) ^ 3 / 12) := by
  have h0 := actual_correlation_edge_abs_le (z := t) hA
  have h1 := actual_correlation_first_edge_abs_le hA ht
  have hh := abs_add_le (sourceCorrelation explicitSecondDerivative A t / 4)
    (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
  rw [abs_div, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4),
    abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hh
  calc
    _ ≤ |sourceCorrelation explicitSecondDerivative A t| / 4 +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 := hh
    _ ≤ (67 / A ^ 4 * (2 * A - t) ^ 4 / 24) / 4 +
        (67 / A ^ 4 * (2 * A - t) ^ 3 / 6) / 2 :=
      add_le_add (div_le_div_of_nonneg_right h0 (by norm_num))
        (div_le_div_of_nonneg_right h1 (by norm_num))
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variantec262b8140148d3b3f4326c7d2751cda43180fdd27a619aea152b9de54c713de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variantec262b8140148d3b3f4326c7d2751cda43180fdd27a619aea152b9de54c713de.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0b81e89ef707ea7ba4e005acbe20cbf9d9c4eba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
