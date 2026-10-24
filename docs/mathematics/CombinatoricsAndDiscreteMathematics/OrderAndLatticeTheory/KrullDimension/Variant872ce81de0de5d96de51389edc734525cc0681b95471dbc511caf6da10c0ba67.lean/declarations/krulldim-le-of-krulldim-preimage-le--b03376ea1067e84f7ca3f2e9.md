# krullDim_le_of_krullDim_preimage_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f616cfb9f2df56b034929bc067695713855f0bef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/872ce81de0de5d96de51389edc734525cc0681b95471dbc511caf6da10c0ba67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac85964f-a113-7c0a-fc59-dff90a88c966",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d796d133-9bee-bca2-5555-b3e0d6860198",
  "kind": "lemma",
  "lexical_name": "krullDim_le_of_krullDim_preimage_le",
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
  "slug": "krulldim-le-of-krulldim-preimage-le--b03376ea1067e84f7ca3f2e9",
  "source": {
    "blob": "f616cfb9f2df56b034929bc067695713855f0bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1158,
    "line": 1150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant872ce81de0de5d96de51389edc734525cc0681b95471dbc511caf6da10c0ba67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b03376ea1067e84f7ca3f2e9f89f208ee2c26826cff3c2879bfd624bea7485a0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant872ce81de0de5d96de51389edc734525cc0681b95471dbc511caf6da10c0ba67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d796d133-9bee-bca2-5555-b3e0d6860198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1150–1158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma krullDim_le_of_krullDim_preimage_le :
    Order.krullDim α ≤ (m + 1) * Order.krullDim β + m := by
  rw [Order.krullDim_eq_iSup_height, Order.krullDim_eq_iSup_height, iSup_le_iff]
  refine fun x ↦ (WithBot.coe_mono (height_le_of_krullDim_preimage_le f h x)).trans ?_
  push_cast
  gcongr
  exacts [right_eq_inf.mp rfl, le_iSup_iff.mpr fun b a ↦ a (f x)]

/-- Another version when the `OrderHom` is unbundled -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant872ce81de0de5d96de51389edc734525cc0681b95471dbc511caf6da10c0ba67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant872ce81de0de5d96de51389edc734525cc0681b95471dbc511caf6da10c0ba67.lean#L1150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f616cfb9f2df56b034929bc067695713855f0bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
