# log_stirlingSeq_sdiff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30cec25f-1ccf-f866-3635-2973977f0ea8",
  "kind": "theorem",
  "lexical_name": "log_stirlingSeq_sdiff_le",
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
  "slug": "log-stirlingseq-sdiff-le--6db2cfed2b70c125ab18476f",
  "source": {
    "blob": "20cf8e9dc074acb4d60f49ef10d660b3ffd9c459",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6db2cfed2b70c125ab18476f9d537f684571cfba665207b8d43dee5a9a24846a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30cec25f-1ccf-f866-3635-2973977f0ea8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_stirlingSeq_sdiff_le (n : ℕ) :
    log (stirlingSeq n) - log (stirlingSeq (n + 1)) ≤ 1 / (12 * n * (n + 1)) := by
  rcases n with (_ | n)
  · suffices 0 ≤ Real.log (Real.exp 1 / Real.sqrt 2) by simpa
    apply Real.log_nonneg
    grw [one_le_div (by positivity), Real.sqrt_le_left (by positivity), ← Real.add_one_le_exp]
    norm_num
  set r := ((1 : ℝ) / (2 * (n + 1) + 1)) ^ 2 with hr
  have hr1 : r < 1 := by grw [hr, ← n.zero_le]; norm_num
  suffices HasSum (fun j ↦ r ^ (j + 1) / 3) ((1 : ℝ) / (12 * (n + 1 : ℕ) * ((n + 1 : ℕ) + 1))) by
    refine hasSum_le (fun j ↦ ?_) (log_stirlingSeq_sdiff_hasSum n) this
    simpa [hr, field] using show (3 : ℝ) ≤ 2 * (j + 1) + 1 by grind
  grind [((hasSum_geometric_of_lt_one (by positivity) hr1).mul_right r).div_const 3]

@[deprecated (since := "2026-06-03")] alias log_stirlingSeq_diff_le := log_stirlingSeq_sdiff_le

/-- We have the bound `log (stirlingSeq n) - log (stirlingSeq (n+1)) ≤ 1 / (4 n ^ 2)`. -/
@[deprecated "Use `log_stirlingSeq_sdiff_le` instead." (since := "2026-03-16")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20cf8e9dc074acb4d60f49ef10d660b3ffd9c459` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
