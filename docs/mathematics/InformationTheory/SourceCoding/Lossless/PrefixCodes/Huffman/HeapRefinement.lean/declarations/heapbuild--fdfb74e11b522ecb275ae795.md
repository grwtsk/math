# HeapBuild

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7130771bafcc3b12da82e9134600cc1f6c5fc8483249ca0836237e9e821fbabd",
  "kind": "inductive",
  "lexical_name": "HeapBuild",
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
  "slug": "heapbuild--fdfb74e11b522ecb275ae795",
  "source": {
    "blob": "72fb149c7256c4d4cff8f7731e83005382dbcfce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 166,
    "path": "GRWTSK/InformationTheory/Huffman/HeapRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdfb74e11b522ecb275ae795979bfd9b0dd77a15337e96ae6391235829b16fdc",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7130771bafcc3b12da82e9134600cc1f6c5fc8483249ca0836237e9e821fbabd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive HeapBuild : Nat → Nat → List Entry → Option Tree → Prop where
  | empty (fuel order) : HeapBuild fuel order [] none
  | singleton (fuel order) (entry) : HeapBuild fuel order [entry] (some entry.tree)
  | exhausted (order) (left right) (tail) : HeapBuild 0 order (left :: right :: tail) none
  | step {fuel order queue left afterLeft right tail pushed result}
      (leftPop : Pop queue left afterLeft) (rightPop : Pop afterLeft right tail)
      (push : pushed.Perm (mergeEntry order left right :: tail))
      (rest : HeapBuild fuel (order + 1) pushed result) :
      HeapBuild (fuel + 1) order queue result

/-- Every implementation satisfying the exposed heap API chooses exactly the
same trees as the concrete sorted-list constructor. This theorem universally
quantifies over heap layouts and all frequency values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/HeapRefinement.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72fb149c7256c4d4cff8f7731e83005382dbcfce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
