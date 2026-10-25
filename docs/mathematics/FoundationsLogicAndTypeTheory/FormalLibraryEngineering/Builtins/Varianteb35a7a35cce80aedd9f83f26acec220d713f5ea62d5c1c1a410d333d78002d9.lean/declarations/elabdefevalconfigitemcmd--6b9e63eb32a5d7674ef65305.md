# elabDefEvalConfigItemCmd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51a20b5cc7765c1383455013b0df4a768349a1e6fea03f08d59a8d2429feae5d",
  "kind": "def",
  "lexical_name": "elabDefEvalConfigItemCmd",
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
  "slug": "elabdefevalconfigitemcmd--6b9e63eb32a5d7674ef65305",
  "source": {
    "blob": "27fb5dac6b1e1cd562464c6a076630b4dc63ff91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Varianteb35a7a35cce80aedd9f83f26acec220d713f5ea62d5c1c1a410d333d78002d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b9e63eb32a5d7674ef65305cddaa4548d880a285e51c2af54b6c640df92d21b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Varianteb35a7a35cce80aedd9f83f26acec220d713f5ea62d5c1c1a410d333d78002d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51a20b5cc7765c1383455013b0df4a768349a1e6fea03f08d59a8d2429feae5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabDefEvalConfigItemCmd : CommandElab
  | `(command|
        $[$doc?:docComment]? $[$vis?:visibility]? $kind:attrKind
        def_eval_config_item%$tk $fn:ident $(binders)* for $struct:ident
          $[$entries?:configEntries]?) => do
    let view ← mkEvalConfigItemView entries?
    defEvalConfigItem doc? vis? kind tk struct fn binders view
  | _ => throwUnsupportedSyntax

open Linter.MissingDocs in
@[builtin_missing_docs_handler defEvalConfigItemCmd]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Varianteb35a7a35cce80aedd9f83f26acec220d713f5ea62d5c1c1a410d333d78002d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Varianteb35a7a35cce80aedd9f83f26acec220d713f5ea62d5c1c1a410d333d78002d9.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27fb5dac6b1e1cd562464c6a076630b4dc63ff91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
