# tsum_enorm_ne_top_iff_summable_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d025095fe1651bee64c5e50b94011c5640e4139",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88eb2d60-a792-7250-271f-62969062e3d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3ed5542-9695-1891-e4b8-12837f51a21f",
  "kind": "lemma",
  "lexical_name": "tsum_enorm_ne_top_iff_summable_norm",
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
  "slug": "tsum-enorm-ne-top-iff-summable-norm--822f0c118d6be90d84122062",
  "source": {
    "blob": "8d025095fe1651bee64c5e50b94011c5640e4139",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 174,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:822f0c118d6be90d84122062ca3694d0a0b20c7fe14c889f8e064b5cb3d5d453",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3ed5542-9695-1891-e4b8-12837f51a21f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_enorm_ne_top_iff_summable_norm {ι : Type*} {f : ι → E} :
    ∑' i, ‖f i‖ₑ ≠ ∞ ↔ Summable fun i ↦ ‖f i‖ := by
  simp only [tsum_enorm_ne_top_iff_summable_nnnorm, ← coe_nnnorm, NNReal.summable_coe]

variable [CompleteSpace E]

/-- Variant of the direct comparison test for series:  if the norm of `f` is eventually bounded by a
real function `g` which is summable, then `f` is summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d025095fe1651bee64c5e50b94011c5640e4139` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
