# isIdempotentElem_rankOne_self_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad16f530-a3e9-6308-1c5a-a2d3ad51e94b",
  "kind": "theorem",
  "lexical_name": "isIdempotentElem_rankOne_self_iff",
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
  "slug": "isidempotentelem-rankone-self-iff--ba0239f1b3851b96b0ee746b",
  "source": {
    "blob": "2bec34b9aaf13c642c313dcbe87ff58374987b58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 367,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variantbb34a5b2d547716b9a3960ad94904c6bc1145e4d7264a47701c0bdcb86134be8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba0239f1b3851b96b0ee746b055d2cba9ce52f9df1c6bc54833a50e410d91205",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LinearMap/Variantbb34a5b2d547716b9a3960ad94904c6bc1145e4d7264a47701c0bdcb86134be8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad16f530-a3e9-6308-1c5a-a2d3ad51e94b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIdempotentElem_rankOne_self_iff {x : F} (hx : x ≠ 0) :
    IsIdempotentElem (rankOne 𝕜 x x) ↔ ‖x‖ = 1 := by
  refine ⟨?_, isIdempotentElem_rankOne_self⟩
  simp only [IsIdempotentElem, mul_def, comp_rankOne, rankOne_apply, inner_self_eq_norm_sq_to_K,
    map_smul, _root_.smul_apply]
  nth_rw 2 [← one_smul 𝕜 (rankOne 𝕜 x x)]
  rw [← sub_eq_zero, ← sub_smul]
  simp only [smul_eq_zero, rankOne_eq_zero, hx, or_self, or_false, sub_eq_zero, sq_eq_one_iff,
    FaithfulSMul.algebraMap_eq_one_iff, ← show ((-(1 : ℝ) : ℝ) : 𝕜) = -1 by grind, ofReal_inj]
  grind [norm_nonneg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LinearMap/Variantbb34a5b2d547716b9a3960ad94904c6bc1145e4d7264a47701c0bdcb86134be8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variantbb34a5b2d547716b9a3960ad94904c6bc1145e4d7264a47701c0bdcb86134be8.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bec34b9aaf13c642c313dcbe87ff58374987b58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
