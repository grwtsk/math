# instRepr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ba57c7aa7d991f00cfdfbb7ed9588228eba544ebd50da3f76d8201ca4a3175a",
  "kind": "instance",
  "lexical_name": "instRepr",
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
  "slug": "instrepr--e87f9f6d23a3e2ce48e96655",
  "source": {
    "blob": "e2fedc75f2d1818041af8711db50ad103ba5adb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant95b22f5907f4ccd53d5d3b24cfe3a736ffc63faebbd0b5620d04674a416d7406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e87f9f6d23a3e2ce48e96655d27972d16064fc79804d7373a4793043e7092c4c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant95b22f5907f4ccd53d5d3b24cfe3a736ffc63faebbd0b5620d04674a416d7406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ba57c7aa7d991f00cfdfbb7ed9588228eba544ebd50da3f76d8201ca4a3175a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe instance instRepr {α β} [Repr α] [Repr β] [Zero β] : Repr (α →₀ β) where
  reprPrec f p :=
    if f.support.card = 0 then
      "0"
    else
      let ret : Std.Format := f!"fun₀" ++ .nest 2 (
        .group (.join <| f.support.val.unquot.map fun a =>
          .line ++ .group (f!"| {repr a} =>" ++ .line ++ repr (f a))))
      if p ≥ leadPrec then Format.paren ret else ret

-- This cannot be put in `Mathlib/Data/DFinsupp/Notation.lean` where it belongs, since doc-strings
-- can only be added/modified in the file where the corresponding declaration is defined.
extend_docs Finsupp.fun₀ after
  "If the expected type is `Π₀ i, α i` (`DFinsupp`)
  and `Mathlib/Data/DFinsupp/Notation.lean` is imported,
  then this is notation for `DFinsupp.single` and  `Dfinsupp.update` instead."

end Finsupp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant95b22f5907f4ccd53d5d3b24cfe3a736ffc63faebbd0b5620d04674a416d7406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant95b22f5907f4ccd53d5d3b24cfe3a736ffc63faebbd0b5620d04674a416d7406.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2fedc75f2d1818041af8711db50ad103ba5adb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
