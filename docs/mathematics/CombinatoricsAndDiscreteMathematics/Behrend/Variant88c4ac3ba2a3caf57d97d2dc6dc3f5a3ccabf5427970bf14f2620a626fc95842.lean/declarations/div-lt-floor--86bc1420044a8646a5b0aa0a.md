# div_lt_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4172d38d8a681aa347b81d0c994a9cef488018de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c51dcf5-9ac7-b698-3cbe-94459e180224",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12f5f0b9-b084-069e-77a0-93520091a364",
  "kind": "theorem",
  "lexical_name": "div_lt_floor",
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
  "slug": "div-lt-floor--86bc1420044a8646a5b0aa0a",
  "source": {
    "blob": "4172d38d8a681aa347b81d0c994a9cef488018de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 313,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86bc1420044a8646a5b0aa0ae703da7ed9bf571bac6962d323dcb3ba09acddd0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12f5f0b9-b084-069e-77a0-93520091a364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_lt_floor {x : ℝ} (hx : 2 / (1 - 2 / exp 1) ≤ x) : x / exp 1 < (⌊x / 2⌋₊ : ℝ) := by
  apply lt_of_le_of_lt _ (sub_one_lt_floor _)
  have : 0 < 1 - 2 / exp 1 := by
    rw [sub_pos, div_lt_one (exp_pos _)]
    exact lt_of_le_of_lt (by norm_num) exp_one_gt_d9
  rwa [le_sub_comm, div_eq_mul_one_div x, div_eq_mul_one_div x, ← mul_sub, div_sub', ←
    div_eq_mul_one_div, mul_div_assoc', one_le_div, ← div_le_iff₀ this]
  · exact zero_lt_two
  · exact two_ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4172d38d8a681aa347b81d0c994a9cef488018de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
