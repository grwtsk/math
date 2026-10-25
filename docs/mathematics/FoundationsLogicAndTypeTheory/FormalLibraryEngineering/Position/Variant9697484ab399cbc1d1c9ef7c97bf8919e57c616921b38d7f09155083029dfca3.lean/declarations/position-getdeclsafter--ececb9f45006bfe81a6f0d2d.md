# Position.getDeclsAfter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d41eb9dc4c47610789882fd450ce6032621f4f8f82a39e132595f8d3e6ff2367",
  "kind": "def",
  "lexical_name": "Position.getDeclsAfter",
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
  "slug": "position-getdeclsafter--ececb9f45006bfe81a6f0d2d",
  "source": {
    "blob": "1d19c58b841a8b5ee9399a99a7dc7195c93bbe6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variant9697484ab399cbc1d1c9ef7c97bf8919e57c616921b38d7f09155083029dfca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ececb9f45006bfe81a6f0d2d9c530c997d7b91d41b327265699680388ad2b115",
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

Occurrence: `declaration:d41eb9dc4c47610789882fd450ce6032621f4f8f82a39e132595f8d3e6ff2367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Position.getDeclsAfter (env : Environment) (pos : Position)
    (asyncMode := EnvExtension.AsyncMode.local) : Array Name :=
  declRangeExt.getState env asyncMode |>.foldl (init := #[])
    fun acc name { selectionRange .. } =>
      if selectionRange.pos.lt pos then acc else acc.push name

/--
If `pos` is a `String.Pos.Raw`, then `pos.getDeclsAfter` returns the array of names of declarations
whose selection range begins in position at least `pos`. By using the `selectionRange`, which is
usually smaller than the `range`, we err on the side of including declarations when possible.

By default, this is intended for use in linters, where only the current environment branch needs to
be checked. See the docstring for `Lean.Position.getDeclsAfter` for details.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variant9697484ab399cbc1d1c9ef7c97bf8919e57c616921b38d7f09155083029dfca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variant9697484ab399cbc1d1c9ef7c97bf8919e57c616921b38d7f09155083029dfca3.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d19c58b841a8b5ee9399a99a7dc7195c93bbe6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
