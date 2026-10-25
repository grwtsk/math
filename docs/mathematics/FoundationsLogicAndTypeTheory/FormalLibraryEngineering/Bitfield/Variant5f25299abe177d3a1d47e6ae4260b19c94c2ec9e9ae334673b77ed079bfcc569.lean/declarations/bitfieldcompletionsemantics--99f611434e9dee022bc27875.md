# bitfieldCompletionSemantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47cbf6b3aaabb595b89618358cc8cc04a1a68e545dae02e3fe3391aad547fe64",
  "kind": "def",
  "lexical_name": "bitfieldCompletionSemantics",
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
  "slug": "bitfieldcompletionsemantics--99f611434e9dee022bc27875",
  "source": {
    "blob": "a6b9898d5396cc439435639c793715211307740c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99f611434e9dee022bc27875e4dc46d61767a3f278cbe02dfd9f2ddf9c75cb06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47cbf6b3aaabb595b89618358cc8cc04a1a68e545dae02e3fe3391aad547fe64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bitfieldCompletionSemantics (n : Nat) :
    CompletionSemantics
      (PartialBitfield n)
      (FullBitfield n)
      Unit where
  refines := (· ≤ ·)
  extendsFull := ExtendsPartialBitfield
  satisfies := fun _ _ => True
  refines_refl := by
    intro state coordinate
    exact PartialBit.le_refl (state coordinate)
  refines_trans := by
    intro left middle right leftMiddle middleRight coordinate
    exact PartialBit.le_trans
      (leftMiddle coordinate)
      (middleRight coordinate)
  extendsFull_antitone := by
    intro parent child full parentChild childExtends coordinate
    have coordinateOrder := parentChild coordinate
    cases parentValue : parent coordinate
    · trivial
    · have same :
          parent coordinate = child coordinate :=
        PartialBit.resolved_le_eq
          (by simp [PartialBit.Resolved, parentValue])
          coordinateOrder
      have childValue : child coordinate = .zero := by
        rw [← same, parentValue]
      simpa [
        ExtendsPartialBitfield,
        parentValue,
        childValue
      ] using childExtends coordinate
    · have same :
          parent coordinate = child coordinate :=
        PartialBit.resolved_le_eq
          (by simp [PartialBit.Resolved, parentValue])
          coordinateOrder
      have childValue : child coordinate = .one := by
        rw [← same, parentValue]
      simpa [
        ExtendsPartialBitfield,
        parentValue,
        childValue
      ] using childExtends coordinate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6b9898d5396cc439435639c793715211307740c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
