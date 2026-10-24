# insert_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7874bcbf-ea8c-93bd-0466-ebd90fc41b0b",
  "kind": "theorem",
  "lexical_name": "insert_unique",
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
  "slug": "insert-unique--5f6b32a291ea588bec0ddf2a",
  "source": {
    "blob": "72fb149c7256c4d4cff8f7731e83005382dbcfce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 107,
    "path": "GRWTSK/InformationTheory/Huffman/HeapRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f6b32a291ea588bec0ddf2a6dfed24a7c049ff64f16f68c3b526abd783858a7",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7874bcbf-ea8c-93bd-0466-ebd90fc41b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insert_unique (order : Nat) (left right : Entry) (tail : List Entry)
    (hu : UniqueMinima (left :: right :: tail)) :
    UniqueMinima (insertEntry (mergeEntry order left right) tail) :=
  uniqueMinima_perm (merge_unique order left right tail hu)
    (insertEntry_perm _ _).symm

/-- Canonical sorting is independent of the heap's internal array order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/HeapRefinement.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72fb149c7256c4d4cff8f7731e83005382dbcfce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
