# CheckedHeapBuild

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97e474419ed66d46c65f7e626ecdd523ba2f4fb4d4a716823ad418318ca08785",
  "kind": "inductive",
  "lexical_name": "CheckedHeapBuild",
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
  "slug": "checkedheapbuild--94896e1ffa692c1d43b6c525",
  "source": {
    "blob": "62eebb5de7b871e4cf4574b54dabd6112b2b9a05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 16,
    "path": "GRWTSK/InformationTheory/Huffman/CheckedBuild.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94896e1ffa692c1d43b6c5252429f6039623c876a95cb5497b953ad4b0305469",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedBuild.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97e474419ed66d46c65f7e626ecdd523ba2f4fb4d4a716823ad418318ca08785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive CheckedHeapBuild : Nat → Nat → List Entry → Option Tree → Prop where
  | empty (fuel order) : CheckedHeapBuild fuel order [] none
  | singleton (fuel order) (entry) : CheckedHeapBuild fuel order [entry] (some entry.tree)
  | exhausted (order) (left right) (tail) :
      CheckedHeapBuild 0 order (left :: right :: tail) none
  | step {fuel order queue left afterLeft right tail pushed result}
      (leftPop : Pop queue left afterLeft) (rightPop : Pop afterLeft right tail)
      (push : pushed.Perm (mergeEntry order left right :: tail))
      (add : checkedAdd left.weight right.weight = some (left.weight + right.weight))
      (rest : CheckedHeapBuild fuel (order + 1) pushed result) :
      CheckedHeapBuild (fuel + 1) order queue result

/-- Every checked addition in the actual merge order succeeds when total
frequency mass fits `u64`, for every permitted heap layout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedBuild.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/CheckedBuild.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62eebb5de7b871e4cf4574b54dabd6112b2b9a05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
