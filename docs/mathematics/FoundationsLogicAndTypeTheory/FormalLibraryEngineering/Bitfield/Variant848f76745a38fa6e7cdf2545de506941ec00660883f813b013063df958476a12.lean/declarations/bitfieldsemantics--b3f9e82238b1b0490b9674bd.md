# bitfieldSemantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19af05092fcf898a2e5374024116fc299fb24065ab2a4dce6a3b1ef519ca88c8",
  "kind": "def",
  "lexical_name": "bitfieldSemantics",
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
  "slug": "bitfieldsemantics--b3f9e82238b1b0490b9674bd",
  "source": {
    "blob": "1c5b965304ece064933aa61003c92ced8bf4bacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant848f76745a38fa6e7cdf2545de506941ec00660883f813b013063df958476a12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3f9e82238b1b0490b9674bdec633c0bb262a190e617551272233afc73bb7b42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant848f76745a38fa6e7cdf2545de506941ec00660883f813b013063df958476a12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19af05092fcf898a2e5374024116fc299fb24065ab2a4dce6a3b1ef519ca88c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bitfieldSemantics
    {width : Nat}
    {Constraint : Type*}
    (evaluate :
      FullBitfield width →
        Constraint →
        Prop) :
    Semantics
      (PartialBitfield width)
      (FullBitfield width)
      Constraint where
  refines := Extends
  extendsFull := ExtendsFull
  satisfies := evaluate
  refinement_sound := by
    intro parent child completion
      parentChild childCompletion
    exact
      extends_trans
        parentChild childCompletion

end Mathematics.BinaryFrontier.Completion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant848f76745a38fa6e7cdf2545de506941ec00660883f813b013063df958476a12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant848f76745a38fa6e7cdf2545de506941ec00660883f813b013063df958476a12.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c5b965304ece064933aa61003c92ced8bf4bacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
