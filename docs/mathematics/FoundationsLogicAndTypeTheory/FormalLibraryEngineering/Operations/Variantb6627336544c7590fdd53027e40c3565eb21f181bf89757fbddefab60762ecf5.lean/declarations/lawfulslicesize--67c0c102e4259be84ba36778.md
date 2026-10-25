# LawfulSliceSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf8896712ef3235c2fcb8d4b55d253d907715e8f81badf0b0c9de1a5c505b3ef",
  "kind": "class",
  "lexical_name": "LawfulSliceSize",
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
  "slug": "lawfulslicesize--67c0c102e4259be84ba36778",
  "source": {
    "blob": "03b047bba733f8f6764c10e2cde761966ebffd54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variantb6627336544c7590fdd53027e40c3565eb21f181bf89757fbddefab60762ecf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67c0c102e4259be84ba367789c2c5ff12b4a326ae62d3fa29da8cce483b8b592",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variantb6627336544c7590fdd53027e40c3565eb21f181bf89757fbddefab60762ecf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf8896712ef3235c2fcb8d4b55d253d907715e8f81badf0b0c9de1a5c505b3ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulSliceSize (γ : Type u) [SliceSize γ] [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] where
  /-- The iterator of a slice `s` of type `Slice γ` emits exactly `SliceSize.size s` elements. -/
  lawful :
      letI : IteratorLoop α Id Id := .defaultImplementation
      ∀ s : Slice γ, SliceSize.size s = (ToIterator.iter (γ := Slice γ) s).length

/--
Returns the number of elements with distinct indices in the given slice.

Example: `#[1, 1, 1][0...2].size = 2`.
-/
@[expose, always_inline, inline, suggest_for Subarray.size]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variantb6627336544c7590fdd53027e40c3565eb21f181bf89757fbddefab60762ecf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variantb6627336544c7590fdd53027e40c3565eb21f181bf89757fbddefab60762ecf5.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03b047bba733f8f6764c10e2cde761966ebffd54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
