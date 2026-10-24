# CompleteBooleanSplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bad051c23a11737a0af77fbf359fa51b4c1acaa5549bf369228357165e36e64e",
  "kind": "structure",
  "lexical_name": "CompleteBooleanSplit",
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
  "slug": "completebooleansplit--1285d06be79df5300311f7d1",
  "source": {
    "blob": "3fb357786daee0a89085acf01ac2c5978ecba42e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 288,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantb640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1285d06be79df5300311f7d1cf3d78eb2c5a2bde05d8b810d5481727a5167c50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantb640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bad051c23a11737a0af77fbf359fa51b4c1acaa5549bf369228357165e36e64e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompleteBooleanSplit
    {width : Nat}
    (parent zeroChild oneChild :
      PartialBitfield width) where
  coordinate : Fin width
  parent_unresolved :
    parent coordinate = PartialBit.unresolved
  zero_at_coordinate :
    zeroChild coordinate = PartialBit.zero
  one_at_coordinate :
    oneChild coordinate = PartialBit.one
  zero_elsewhere :
    ∀ other,
      other ≠ coordinate →
      zeroChild other = parent other
  one_elsewhere :
    ∀ other,
      other ≠ coordinate →
      oneChild other = parent other

namespace CompleteBooleanSplit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantb640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantb640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb357786daee0a89085acf01ac2c5978ecba42e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
