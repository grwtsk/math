# mulSupport_binop_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a423209308d38caed77f0287fa6b896d8454316",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cab00dbef9f849b54168891b699ddf231a38a3b11324fa5c355eea4f71db8c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b77f17a-e75a-e7d7-f54a-9d40fabe4b65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76ff18c8-f9d3-7ba9-8421-c56c1ef5c9cd",
  "kind": "theorem",
  "lexical_name": "mulSupport_binop_subset",
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
  "slug": "mulsupport-binop-subset--561eddcf92dab9c46da44762",
  "source": {
    "blob": "8a423209308d38caed77f0287fa6b896d8454316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 157,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variant5cab00dbef9f849b54168891b699ddf231a38a3b11324fa5c355eea4f71db8c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:561eddcf92dab9c46da44762f264a9d19ea17f9e5b7077901d4e68f8a7892bed",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variant5cab00dbef9f849b54168891b699ddf231a38a3b11324fa5c355eea4f71db8c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76ff18c8-f9d3-7ba9-8421-c56c1ef5c9cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulSupport_binop_subset (op : M → N → P) (op1 : op 1 1 = 1) (f : α → M) (g : α → N) :
    (mulSupport fun x => op (f x) (g x)) ⊆ mulSupport f ∪ mulSupport g := fun x hx =>
  not_or_of_imp fun hf hg => hx <| by simp only [hf, hg, op1]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variant5cab00dbef9f849b54168891b699ddf231a38a3b11324fa5c355eea4f71db8c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variant5cab00dbef9f849b54168891b699ddf231a38a3b11324fa5c355eea4f71db8c2.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a423209308d38caed77f0287fa6b896d8454316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
