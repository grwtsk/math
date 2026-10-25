# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47348dddb8864ae54e82af3804e591b81b3b33f230eec99862b4abe8baacbd8a",
  "kind": "syntax",
  "lexical_name": null,
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
  "slug": "syntax--05cea61263ccb95c8dcb84cc",
  "source": {
    "blob": "7ee13a732ba1da6142accf9f88775e6e2a937b8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant3d4a5443eb1958738ce832f6f8edc4b84da4d17681f13f6e4f2b29a3b24f8c21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05cea61263ccb95c8dcb84cc58c63d0859048dd2c5d662b1bfa26b6e2ef6b632",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant3d4a5443eb1958738ce832f6f8edc4b84da4d17681f13f6e4f2b29a3b24f8c21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47348dddb8864ae54e82af3804e591b81b3b33f230eec99862b4abe8baacbd8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
syntax (name := declareTacticConfig) (docComment)? (visibility)?
  "declare_config_elab" ident ident (bracketedBinder)* (configEntries)? : command

/--
`declare_core_config_elab f struct binders* [where ...]` defines a configuration elaborator
```lean
f binders* (cfg : Syntax) (init : struct := {}) (logExceptions : Bool := true) : CommandElabM struct
```
that evaluates the `cfg` configuration items to update `init`.
Acceptable configuration syntax is documented in `Lean.Elab.ConfigEval.foldConfigM`,
which includes anything that looks like `Lean.Parser.Term.optConfig`, possibly wrapped
in null nodes.

The command will transitively derive any necessary `ConfigEval.EvalTerm`/`ConfigEval.EvalExpr`
instances to support evaluation of configuration options for structure fields.
These instances will be `private local`.

See `ConfigEval.defEvalConfigItemCmd` for further documentation.

See also `declare_core_config_elab`, `declare_term_config_elab`, and `declare_config_elab`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant3d4a5443eb1958738ce832f6f8edc4b84da4d17681f13f6e4f2b29a3b24f8c21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant3d4a5443eb1958738ce832f6f8edc4b84da4d17681f13f6e4f2b29a3b24f8c21.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee13a732ba1da6142accf9f88775e6e2a937b8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
