# integrable_lower_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "053421702157bb97913dc8b71487be4576a46bb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b0076da-a825-a452-99f6-19742d86d427",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba735783-7ee7-dadd-6cf4-d44481aeef56",
  "kind": "theorem",
  "lexical_name": "integrable_lower_moment",
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
  "slug": "integrable-lower-moment--b378b31ce194a5201cda9ee2",
  "source": {
    "blob": "053421702157bb97913dc8b71487be4576a46bb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b378b31ce194a5201cda9ee2364405761db1cd0a8bf7e6438b6063b6a99a598e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba735783-7ee7-dadd-6cf4-d44481aeef56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_lower_moment (f : ℝ → ℝ) (N n : ℕ) (hn : n ≤ N)
    (hf : Integrable f) (hc : Continuous f)
    (hN : Integrable (fun u ↦ ‖u‖ ^ N * ‖f u‖)) :
    Integrable (fun u ↦ ‖u‖ ^ n * ‖f u‖) := by
  apply (hf.norm.add hN).mono' (by fun_prop)
  filter_upwards [] with u
  rw [Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  have hp : ‖u‖ ^ n ≤ 1 + ‖u‖ ^ N := by
    by_cases hu : ‖u‖ ≤ 1
    · have h : ‖u‖ ^ n ≤ 1 := pow_le_one₀ (norm_nonneg u) hu
      linarith [pow_nonneg (norm_nonneg u) N]
    · have h := pow_le_pow_right₀ (le_of_lt (lt_of_not_ge hu)) hn
      linarith
  calc
    _ ≤ (1 + ‖u‖ ^ N) * ‖f u‖ := mul_le_mul_of_nonneg_right hp (norm_nonneg _)
    _ = _ := by change _ = ‖f u‖ + ‖u‖ ^ N * ‖f u‖; ring

/-- The actual bump admits all five even spectral moments needed through degree eight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `053421702157bb97913dc8b71487be4576a46bb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
