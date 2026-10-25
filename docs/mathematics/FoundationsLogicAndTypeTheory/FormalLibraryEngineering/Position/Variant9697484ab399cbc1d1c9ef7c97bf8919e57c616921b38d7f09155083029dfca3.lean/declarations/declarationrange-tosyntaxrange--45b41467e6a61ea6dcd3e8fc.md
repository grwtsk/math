# DeclarationRange.toSyntaxRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbb9bc03711aa8902b6e87637735fb56d863b72792ce8dd89e731e8fb437e140",
  "kind": "def",
  "lexical_name": "DeclarationRange.toSyntaxRange",
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
  "slug": "declarationrange-tosyntaxrange--45b41467e6a61ea6dcd3e8fc",
  "source": {
    "blob": "1d19c58b841a8b5ee9399a99a7dc7195c93bbe6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variant9697484ab399cbc1d1c9ef7c97bf8919e57c616921b38d7f09155083029dfca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45b41467e6a61ea6dcd3e8fcf7374a747edb7a239a7c3aeb83e3f1554d5d1a84",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variant9697484ab399cbc1d1c9ef7c97bf8919e57c616921b38d7f09155083029dfca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbb9bc03711aa8902b6e87637735fb56d863b72792ce8dd89e731e8fb437e140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DeclarationRange.toSyntaxRange (map : FileMap) (range : DeclarationRange) : Syntax.Range :=
  ⟨map.ofPosition range.pos, map.ofPosition range.endPos⟩

/-- Yields the `Syntax.Range` for the declaration `decl` in the current file. If `decl` is not in
the current file, yields `none`.

By default, this provides the "selection range", which is usually the declaration's identifier or
e.g. the `instance` token for an unnamed instance. If `fullRange` is instead set to `true`, this
returns the full declaration range (which includes modifiers, such as the docstring). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variant9697484ab399cbc1d1c9ef7c97bf8919e57c616921b38d7f09155083029dfca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variant9697484ab399cbc1d1c9ef7c97bf8919e57c616921b38d7f09155083029dfca3.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d19c58b841a8b5ee9399a99a7dc7195c93bbe6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
