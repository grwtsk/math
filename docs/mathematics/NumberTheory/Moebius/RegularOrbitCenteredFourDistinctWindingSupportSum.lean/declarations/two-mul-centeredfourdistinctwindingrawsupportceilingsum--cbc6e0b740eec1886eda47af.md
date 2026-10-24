# two_mul_centeredFourDistinctWindingRawSupportCeilingSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7b0f17d-69a8-f1fa-6dea-06073a0b2630",
  "kind": "theorem",
  "lexical_name": "two_mul_centeredFourDistinctWindingRawSupportCeilingSum",
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
  "slug": "two-mul-centeredfourdistinctwindingrawsupportceilingsum--cbc6e0b740eec1886eda47af",
  "source": {
    "blob": "9006e9d372c01b40895226a42062b414ee893e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc6e0b740eec1886eda47aff4fc99d59f80f4fb71feb32f776b65fa41524e5d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7b0f17d-69a8-f1fa-6dea-06073a0b2630`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_mul_centeredFourDistinctWindingRawSupportCeilingSum
    (b d : ℕ) :
    2 * centeredFourDistinctWindingRawSupportCeilingSum b d =
      (2 * centeredWindingRadius b d * (b + 1) -
        (d * d) * windingTriangularNumerator b d) *
          ((b + 1) * (b + 1)) := by
  have hbound : ∀ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
      z * (d * d) ≤ b + 1 := by
    intro z hz
    have hzR := (Finset.mem_Icc.mp hz).2
    have hR : centeredWindingRadius b d * (d * d) ≤ b := Nat.div_mul_le_self _ _
    exact (Nat.mul_le_mul_right _ hzR).trans (hR.trans (Nat.le_succ _))
  have hsum :
      (∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d), ((b + 1) - z * (d * d))) =
      centeredWindingRadius b d * (b + 1) -
        (∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d), z) * (d * d) := by
    rw [Finset.sum_tsub_distrib _ hbound]
    simp [← Finset.sum_mul]
  have hprod :
      2 * ((∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d), z) * (d * d)) =
      (d * d) * windingTriangularNumerator b d := by
    calc
      _ = (2 * (∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d), z)) * (d * d) := by ring
      _ = windingTriangularNumerator b d * (d * d) := by
        rw [two_mul_sum_Icc_one_centeredWindingRadius]
      _ = _ := mul_comm _ _
  unfold centeredFourDistinctWindingRawSupportCeilingSum centeredFourDistinctWindingRawSupportCeiling
  rw [← Finset.sum_mul, hsum, ← mul_assoc, Nat.mul_sub_left_distrib, hprod]
  simp only [mul_assoc]

/-- Simple d-sensitive upper bound before any cancellation:
the winding sum costs at most R*(b+1)^3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9006e9d372c01b40895226a42062b414ee893e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
