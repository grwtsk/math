# mkProjStx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3682a438adc6f06bab4add5fddec36417e83ed8158be5b2305dcc11f6b46823",
  "kind": "def",
  "lexical_name": "mkProjStx",
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
  "slug": "mkprojstx--c8969c51ab071d78c2d540ab",
  "source": {
    "blob": "a8d89a25282acd94a5769cecd00572cb209ef82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1042,
    "line": 1038,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8969c51ab071d78c2d540aba0a727bf80b774a5eadff638972cd641cd7d5fb2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3682a438adc6f06bab4add5fddec36417e83ed8158be5b2305dcc11f6b46823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1038–1042.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkProjStx (s : Syntax) (fieldName : Name) : Syntax :=
  mkNode ``Parser.Term.explicit
    #[mkAtomFrom s "@",
      mkNode ``Parser.Term.proj #[s, mkAtomFrom s ".", mkIdentFrom s fieldName]]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean#L1038).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d89a25282acd94a5769cecd00572cb209ef82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
