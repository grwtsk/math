# bound_aux

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
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53bcc89f-e489-3109-aa60-7b7dc9eafb7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39d2b930-ac72-5e3b-9244-e05dcb7a193a",
  "kind": "theorem",
  "lexical_name": "bound_aux",
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
  "slug": "bound-aux--939f7d59deacebd640dac93f",
  "source": {
    "blob": "4172d38d8a681aa347b81d0c994a9cef488018de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 263,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:939f7d59deacebd640dac93f0598967844722b5f38dfb59aeb5a50a4aae6c664",
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

Occurrence: `result:39d2b930-ac72-5e3b-9244-e05dcb7a193a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bound_aux (hd : d ≠ 0) (hn : 2 ≤ n) :
    (d ^ (n - 2 :) / n : ℝ) ≤ rothNumberNat ((2 * d - 1) ^ n) := by
  convert bound_aux' n d using 1
  rw [cast_mul, cast_pow, mul_comm, ← div_div, pow_sub₀ _ _ hn, ← div_eq_mul_inv, cast_pow]
  rwa [cast_ne_zero]

open scoped Filter Topology

open Real

section NumericalBounds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4172d38d8a681aa347b81d0c994a9cef488018de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
