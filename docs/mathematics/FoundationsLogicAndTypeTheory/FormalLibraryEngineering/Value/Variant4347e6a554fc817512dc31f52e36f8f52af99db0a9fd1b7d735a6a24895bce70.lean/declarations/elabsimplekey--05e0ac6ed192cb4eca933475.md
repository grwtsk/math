# elabSimpleKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2140d406d8dc393b8e44fd0da2cf67c85c31856341b3e5ba3c73dba2a32834de",
  "kind": "def",
  "lexical_name": "elabSimpleKey",
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
  "slug": "elabsimplekey--05e0ac6ed192cb4eca933475",
  "source": {
    "blob": "5802cbf9752e1a0b12c1626203e5ed53d7f65ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant4347e6a554fc817512dc31f52e36f8f52af99db0a9fd1b7d735a6a24895bce70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05e0ac6ed192cb4eca933475204eb0e7b5fe501b3e03465f61d887b51c7a3ea5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant4347e6a554fc817512dc31f52e36f8f52af99db0a9fd1b7d735a6a24895bce70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2140d406d8dc393b8e44fd0da2cf67c85c31856341b3e5ba3c73dba2a32834de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def elabSimpleKey (x : TSyntax ``simpleKey) : CoreM String := do
  match x with
  | `(simpleKey|$x:unquotedKey) => elabUnquotedKey x
  | `(simpleKey|$x:literalString) => elabLiteralString x
  | `(simpleKey|$x:basicString) => elabBasicString x
  | _ => throwErrorAt x "ill-formed simple key syntax"

--------------------------------------------------------------------------------
/-! ## Complex Values -/
--------------------------------------------------------------------------------

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant4347e6a554fc817512dc31f52e36f8f52af99db0a9fd1b7d735a6a24895bce70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant4347e6a554fc817512dc31f52e36f8f52af99db0a9fd1b7d735a6a24895bce70.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5802cbf9752e1a0b12c1626203e5ed53d7f65ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
