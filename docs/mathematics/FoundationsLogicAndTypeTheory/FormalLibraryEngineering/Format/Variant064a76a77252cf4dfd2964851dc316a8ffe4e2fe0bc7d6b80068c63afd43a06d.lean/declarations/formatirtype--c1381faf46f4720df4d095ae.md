# formatIRType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6ada881442298e2606b9d137c6c4ea763c202d842c3eec37f7f14ee8f7e2439",
  "kind": "def",
  "lexical_name": "formatIRType",
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
  "slug": "formatirtype--c1381faf46f4720df4d095ae",
  "source": {
    "blob": "ed5e951fab483e11b98bfc078484233325c6187e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant064a76a77252cf4dfd2964851dc316a8ffe4e2fe0bc7d6b80068c63afd43a06d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1381faf46f4720df4d095aeff73e1d4410b17726ddb44350ff22a8d0b23af5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant064a76a77252cf4dfd2964851dc316a8ffe4e2fe0bc7d6b80068c63afd43a06d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6ada881442298e2606b9d137c6c4ea763c202d842c3eec37f7f14ee8f7e2439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def formatIRType : IRType → Format
  | IRType.float        => "float"
  | IRType.float32      => "float32"
  | IRType.uint8        => "u8"
  | IRType.uint16       => "u16"
  | IRType.uint32       => "u32"
  | IRType.uint64       => "u64"
  | IRType.usize        => "usize"
  | IRType.erased       => "◾"
  | IRType.void         => "void"
  | IRType.object       => "obj"
  | IRType.tagged       => "tagged"
  | IRType.tobject      => "tobj"
  | IRType.struct _ tys =>
    let _ : ToFormat IRType := ⟨formatIRType⟩
    "struct " ++ Format.bracket "{" (Format.joinSep tys.toList ", ") "}"
  | IRType.union _ tys  =>
    let _ : ToFormat IRType := ⟨formatIRType⟩
    "union " ++ Format.bracket "{" (Format.joinSep  tys.toList ", ") "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant064a76a77252cf4dfd2964851dc316a8ffe4e2fe0bc7d6b80068c63afd43a06d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant064a76a77252cf4dfd2964851dc316a8ffe4e2fe0bc7d6b80068c63afd43a06d.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed5e951fab483e11b98bfc078484233325c6187e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
