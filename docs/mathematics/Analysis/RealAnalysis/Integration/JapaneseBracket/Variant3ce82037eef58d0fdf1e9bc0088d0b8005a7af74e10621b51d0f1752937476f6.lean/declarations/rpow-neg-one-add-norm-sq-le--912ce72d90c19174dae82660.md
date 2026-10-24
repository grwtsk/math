# rpow_neg_one_add_norm_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a773a828ece6ab3cd804d5fff49379f5accdab59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17c6d88c-4568-dd24-e91c-4de41bb47791",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddb53d1a-6c37-f46b-0e89-8cc8c22a2a36",
  "kind": "theorem",
  "lexical_name": "rpow_neg_one_add_norm_sq_le",
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
  "slug": "rpow-neg-one-add-norm-sq-le--912ce72d90c19174dae82660",
  "source": {
    "blob": "a773a828ece6ab3cd804d5fff49379f5accdab59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:912ce72d90c19174dae82660f26ff5a86534a30cfce1948a9481f160fca9eb4b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddb53d1a-6c37-f46b-0e89-8cc8c22a2a36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rpow_neg_one_add_norm_sq_le {r : ℝ} (x : E) (hr : 0 < r) :
    ((1 : ℝ) + ‖x‖ ^ 2) ^ (-r / 2) ≤ (2 : ℝ) ^ (r / 2) * (1 + ‖x‖) ^ (-r) :=
  calc
    ((1 : ℝ) + ‖x‖ ^ 2) ^ (-r / 2)
      = (2 : ℝ) ^ (r / 2) * ((√2 * √((1 : ℝ) + ‖x‖ ^ 2)) ^ r)⁻¹ := by
      rw [rpow_div_two_eq_sqrt, rpow_div_two_eq_sqrt, mul_rpow, mul_inv, rpow_neg,
        mul_inv_cancel_left₀] <;> positivity
    _ ≤ (2 : ℝ) ^ (r / 2) * ((1 + ‖x‖) ^ r)⁻¹ := by
      gcongr
      apply one_add_norm_le_sqrt_two_mul_sqrt
    _ = (2 : ℝ) ^ (r / 2) * (1 + ‖x‖) ^ (-r) := by rw [rpow_neg]; positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a773a828ece6ab3cd804d5fff49379f5accdab59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
