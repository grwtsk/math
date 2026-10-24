# toOrderHom_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ce4070aef81df0aaac57f7d622ffa81c3ef28b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52f915687845832da291864499421c529ef62e81eb66e04287db137e11d818d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40603c20-74a3-a78a-a9c0-655743ec06aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0df0e36-be59-0ecf-1ce3-7ad839f706c7",
  "kind": "theorem",
  "lexical_name": "toOrderHom_injective",
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
  "slug": "toorderhom-injective--490462b87224c7fed1d4073f",
  "source": {
    "blob": "7ce4070aef81df0aaac57f7d622ffa81c3ef28b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 350,
    "path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant52f915687845832da291864499421c529ef62e81eb66e04287db137e11d818d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:490462b87224c7fed1d4073f6e6a7062f5f539731a40c71abb762969fbd367a6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Monoid/Variant52f915687845832da291864499421c529ef62e81eb66e04287db137e11d818d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0df0e36-be59-0ecf-1ce3-7ad839f706c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toOrderHom_injective : Injective (toOrderHom : _ → α →o β) := fun f g h =>
  ext <| by convert DFunLike.ext_iff.1 h using 0

/-- Copy of an `OrderMonoidHom` with a new `toFun` equal to the old one. Useful to fix
definitional equalities. -/
@[to_additive "Copy of an `OrderAddMonoidHom` with a new `toFun` equal to the old one. Useful to fix
definitional equalities."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Monoid/Variant52f915687845832da291864499421c529ef62e81eb66e04287db137e11d818d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Monoid/Variant52f915687845832da291864499421c529ef62e81eb66e04287db137e11d818d7.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce4070aef81df0aaac57f7d622ffa81c3ef28b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
