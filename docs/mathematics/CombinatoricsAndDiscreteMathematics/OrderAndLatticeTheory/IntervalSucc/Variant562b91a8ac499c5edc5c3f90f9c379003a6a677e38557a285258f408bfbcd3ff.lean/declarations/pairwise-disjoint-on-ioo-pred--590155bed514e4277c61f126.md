# pairwise_disjoint_on_Ioo_pred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46455ca7ba2e63a913b6c710832feba6db9bef7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/562b91a8ac499c5edc5c3f90f9c379003a6a677e38557a285258f408bfbcd3ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5b80449-e1f8-e7f0-7c7d-ea3bd8cc32cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1cbf163-871e-c9b2-1d27-196c3384742f",
  "kind": "theorem",
  "lexical_name": "pairwise_disjoint_on_Ioo_pred",
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
  "slug": "pairwise-disjoint-on-ioo-pred--590155bed514e4277c61f126",
  "source": {
    "blob": "46455ca7ba2e63a913b6c710832feba6db9bef7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant562b91a8ac499c5edc5c3f90f9c379003a6a677e38557a285258f408bfbcd3ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:590155bed514e4277c61f1268f62675958620b98d5202a9a18e2a92462f4e394",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant562b91a8ac499c5edc5c3f90f9c379003a6a677e38557a285258f408bfbcd3ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1cbf163-871e-c9b2-1d27-196c3384742f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairwise_disjoint_on_Ioo_pred [PredOrder α] [Preorder β] {f : α → β} (hf : Monotone f) :
    Pairwise (Disjoint on fun n => Ioo (f (pred n)) (f n)) := by
  simpa using! hf.dual.pairwise_disjoint_on_Ioo_succ

end Monotone

namespace Antitone

open scoped Function -- required for scoped `on` notation

/-- If `α` is a linear succ order, `β` is a preorder, and `f : α → β` is an antitone function, then
the intervals `Set.Ioc (f (Order.succ n)) (f n)` are pairwise disjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant562b91a8ac499c5edc5c3f90f9c379003a6a677e38557a285258f408bfbcd3ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant562b91a8ac499c5edc5c3f90f9c379003a6a677e38557a285258f408bfbcd3ff.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46455ca7ba2e63a913b6c710832feba6db9bef7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
