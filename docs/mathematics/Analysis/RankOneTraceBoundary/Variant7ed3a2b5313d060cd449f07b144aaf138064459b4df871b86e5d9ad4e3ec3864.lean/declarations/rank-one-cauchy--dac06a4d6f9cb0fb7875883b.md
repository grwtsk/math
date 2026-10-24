# rank_one_cauchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b55e986-32b5-493c-b435-9aa9a5f018fa",
  "kind": "theorem",
  "lexical_name": "rank_one_cauchy",
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
  "slug": "rank-one-cauchy--dac06a4d6f9cb0fb7875883b",
  "source": {
    "blob": "b3f6da49f142bd4f265747a89fee67db5af94b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 38,
    "path": "GRWTSK/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dac06a4d6f9cb0fb7875883b0a988eda0e2cecf395b7af59b85559be4dcb4d31",
  "verification": {
    "reference": "docs/verification/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b55e986-32b5-493c-b435-9aa9a5f018fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_one_cauchy (a b : E) :
    (inner ℝ a b) ^ 2 ≤ ‖a‖ ^ 2 * ‖b‖ ^ 2 := by
  have h := norm_inner_le_norm (𝕜 := ℝ) a b
  rw [Real.norm_eq_abs] at h
  have hsq := (sq_le_sq₀ (abs_nonneg (inner ℝ a b))
    (mul_nonneg (norm_nonneg a) (norm_nonneg b))).mpr h
  simpa only [sq_abs, mul_pow] using hsq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f6da49f142bd4f265747a89fee67db5af94b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
