# dampedMertensSource_half_sq_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da174356-3596-d978-b6bc-f76d4bf03914",
  "kind": "theorem",
  "lexical_name": "dampedMertensSource_half_sq_le_tail",
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
  "slug": "dampedmertenssource-half-sq-le-tail--d3b5d5f5721de527381ae433",
  "source": {
    "blob": "4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 341,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3b5d5f5721de527381ae43314348462b089d24a5ae47f30852b2669906ab27d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da174356-3596-d978-b6bc-f76d4bf03914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedMertensSource_half_sq_le_tail
    (hM : MertensLogSquareBound) {u : ℝ} (hu : 1 ≤ u) :
    dampedMertensSource (1 / 2) u ^ 2 ≤
      9 * u ^ (-(4 : ℝ)) := by
  have hu0 : 0 < u := zero_lt_one.trans_le hu
  have hm := hM (Real.exp u) (by
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr hu0)
  rw [Real.log_exp] at hm
  have habs : |dampedMertensSource (1 / 2) u| ≤ 3 / u ^ 2 := by
    rw [dampedMertensSource_half, abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      Real.exp (-u) * |mertensPrefix (Real.exp u)| ≤
          Real.exp (-u) * (3 * Real.exp u / u ^ 2) :=
        mul_le_mul_of_nonneg_left hm (Real.exp_pos _).le
      _ = 3 / u ^ 2 := by
        have he : Real.exp (-u) * Real.exp u = 1 := by
          rw [← Real.exp_add]
          convert Real.exp_zero using 1
          ring
        calc
          Real.exp (-u) * (3 * Real.exp u / u ^ 2) =
              3 * (Real.exp (-u) * Real.exp u) / u ^ 2 := by ring
          _ = 3 / u ^ 2 := by rw [he, mul_one]
  have hnonneg : 0 ≤ 3 / u ^ 2 := div_nonneg (by norm_num) (sq_nonneg _)
  have hsq := (sq_le_sq₀ (abs_nonneg _) hnonneg).2 habs
  rw [sq_abs] at hsq
  calc
    dampedMertensSource (1 / 2) u ^ 2 ≤ (3 / u ^ 2) ^ 2 := hsq
    _ = 9 * u ^ (-(4 : ℝ)) := by
      rw [Real.rpow_neg hu0.le]
      field_simp [hu0.ne']
      norm_num [mul_comm]

/-- The logarithmic tail costs at most three. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
