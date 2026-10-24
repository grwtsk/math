# pinnedPrimeWeightRequiredCapacity_le_adaptiveBertrandMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4da779c6-43e9-576d-96ed-8601619105c5",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightRequiredCapacity_le_adaptiveBertrandMajorant",
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
  "slug": "pinnedprimeweightrequiredcapacity-le-adaptivebertrandmajorant--b5d932878425928a232eca0b",
  "source": {
    "blob": "dd5a2d44f860f38d56c58d3fc3ec5a15e5c27c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 265,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5d932878425928a232eca0bb51865a56c79f16dfbd2be601b8d99bc5b8cff05",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4da779c6-43e9-576d-96ed-8601619105c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightRequiredCapacity_le_adaptiveBertrandMajorant
    {X : ℕ} (hX : 0 < X) (v E : ℝ) :
    pinnedPrimeWeightRequiredCapacity X v E ≤
      pinnedPrimeWeightAdaptiveBertrandMajorant X v E := by
  unfold pinnedPrimeWeightRequiredCapacity
    pinnedPrimeWeightAdaptiveBertrandMajorant
  have hnum :
      0 ≤ (X : ℝ) * pinnedPrimeWeightRemainingTarget v E :=
    mul_nonneg (Nat.cast_nonneg X)
      (pinnedPrimeWeightRemainingTarget_nonnegative v E)
  have hfloorSq :
      0 < (pinnedPrimeWeightAdaptiveBertrandFloor X)^2 := by
    exact sq_pos_of_ne_zero
      (ne_of_gt (pinnedPrimeWeightAdaptiveBertrandFloor_pos hX))
  exact
    div_le_div_of_nonneg_left hnum hfloorSq
      (pinnedPrimeWeightAdaptiveBertrandFloor_sq_le_amplitude_sq hX)

/-- Exact logarithmically improved cubic normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd5a2d44f860f38d56c58d3fc3ec5a15e5c27c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
