# trendValue_abs_le_of_samples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c39a069-56d8-61f5-7717-470994a8b513",
  "kind": "theorem",
  "lexical_name": "trendValue_abs_le_of_samples",
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
  "slug": "trendvalue-abs-le-of-samples--ffae9297ee1ed812a3a092a1",
  "source": {
    "blob": "ca78330df0cff3b41978a02d99e389ed2bfcce6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 410,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffae9297ee1ed812a3a092a1d8f2e8ca2d3c2b859e7572b9fe53dd21febafa5e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c39a069-56d8-61f5-7717-470994a8b513`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trendValue_abs_le_of_samples (A K : ℝ) (hA : 1 ≤ A) (hK : 0 ≤ K)
    (hp : |endpointValue A| ≤ K / A ^ 2) (hb : |endpointSlope A| ≤ 2 * K / A ^ 2) :
    |trendValue A| ≤ 17 * K / A := by
  have hA0 : 0 < A := by linarith
  have hA2 : 0 < A ^ 2 := sq_pos_of_pos hA0
  have hm := kernelMomentZero_abs_le_one A hA
  have hn := kernelMomentOne_abs_le A hA
  have hx : |endpointValue A * kernelMomentZero A| ≤ K / A ^ 2 := by
    rw [abs_mul]
    exact (mul_le_mul hp hm (abs_nonneg _) (div_nonneg hK hA2.le)).trans_eq (mul_one _)
  have hy : |endpointSlope A * kernelMomentOne A| ≤ (2 * K / A ^ 2) * (2 * A + 6) := by
    rw [abs_mul]
    exact mul_le_mul hb hn (abs_nonneg _) (div_nonneg (by positivity) hA2.le)
  have hz : K / A ^ 2 + (2 * K / A ^ 2) * (2 * A + 6) ≤ 17 * K / A := by
    have he : K / A ^ 2 + (2 * K / A ^ 2) * (2 * A + 6) =
        (4 * A + 13) * K / A ^ 2 := by ring
    rw [he]
    apply (div_le_iff₀ hA2).mpr
    have ha : 4 * A + 13 ≤ 17 * A := by linarith
    have hka := mul_le_mul_of_nonneg_right ha hK
    have he2 : 17 * K / A * A ^ 2 = 17 * A * K := by field_simp
    rw [he2]
    exact hka
  unfold trendValue
  exact (abs_add_le _ _).trans ((add_le_add hx hy).trans hz)

/-- The exact defect decreases on the nonnegative arithmetic-scale domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca78330df0cff3b41978a02d99e389ed2bfcce6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
