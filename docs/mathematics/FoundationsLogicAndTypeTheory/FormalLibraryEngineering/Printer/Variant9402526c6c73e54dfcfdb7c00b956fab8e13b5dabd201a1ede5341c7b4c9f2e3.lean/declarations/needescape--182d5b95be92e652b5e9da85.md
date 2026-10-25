# needEscape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e93697ccd46e380bef626a00448e0bdd413a166d0eed285f43c9ed8c8702ea49",
  "kind": "def",
  "lexical_name": "needEscape",
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
  "slug": "needescape--182d5b95be92e652b5e9da85",
  "source": {
    "blob": "d70bc85224d5672b43bb4fabc32b2d84c2ff8800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:182d5b95be92e652b5e9da85e6846aa81f52734d293e04dd5469ae73638cef43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e93697ccd46e380bef626a00448e0bdd413a166d0eed285f43c9ed8c8702ea49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def needEscape (s : String) : Bool :=
  go s 0
where
  go (s : String) (i : Nat) : Bool :=
    if h : i < s.utf8ByteSize then
      let byte := s.getUTF8Byte ⟨i⟩ h
      have h1 : byte.toNat < 256 := UInt8.toNat_lt_size byte
      have h2 : escapeTable.val.size = 256 := escapeTable.property
      if escapeTable.val.get byte.toNat (Nat.lt_of_lt_of_eq h1 h2.symm) == 0 then
        go s (i + 1)
      else
        true
    else
      false

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d70bc85224d5672b43bb4fabc32b2d84c2ff8800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
