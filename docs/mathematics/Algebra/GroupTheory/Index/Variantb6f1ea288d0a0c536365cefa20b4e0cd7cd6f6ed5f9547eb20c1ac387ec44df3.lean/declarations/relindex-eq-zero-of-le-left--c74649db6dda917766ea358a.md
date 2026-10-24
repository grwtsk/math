# relindex_eq_zero_of_le_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dac553b8dbe9e5e07707d287c659af66923899e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6f1ea288d0a0c536365cefa20b4e0cd7cd6f6ed5f9547eb20c1ac387ec44df3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ec42cc8-6d11-ef40-ef4e-ee1cb0d8d3ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bea7d07c-bcfb-988c-62c7-19a0c2ee66a5",
  "kind": "theorem",
  "lexical_name": "relindex_eq_zero_of_le_left",
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
  "slug": "relindex-eq-zero-of-le-left--c74649db6dda917766ea358a",
  "source": {
    "blob": "dac553b8dbe9e5e07707d287c659af66923899e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 377,
    "path": "GRWTSK/Algebra/GroupTheory/Index/Variantb6f1ea288d0a0c536365cefa20b4e0cd7cd6f6ed5f9547eb20c1ac387ec44df3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c74649db6dda917766ea358a970f91f241b705951b0ff478dbaff8576b1bc1b4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Index/Variantb6f1ea288d0a0c536365cefa20b4e0cd7cd6f6ed5f9547eb20c1ac387ec44df3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bea7d07c-bcfb-988c-62c7-19a0c2ee66a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relindex_eq_zero_of_le_left (hHK : H ≤ K) (hKL : K.relindex L = 0) : H.relindex L = 0 :=
  eq_zero_of_zero_dvd (hKL ▸ relindex_dvd_of_le_left L hHK)
#align subgroup.relindex_eq_zero_of_le_left Subgroup.relindex_eq_zero_of_le_left
#align add_subgroup.relindex_eq_zero_of_le_left AddSubgroup.relindex_eq_zero_of_le_left

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Index/Variantb6f1ea288d0a0c536365cefa20b4e0cd7cd6f6ed5f9547eb20c1ac387ec44df3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Index/Variantb6f1ea288d0a0c536365cefa20b4e0cd7cd6f6ed5f9547eb20c1ac387ec44df3.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dac553b8dbe9e5e07707d287c659af66923899e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
