# elabDeclareTacticConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02af8c018728c0f64c7ac4c2810fef72c43552b917b1169457f49346ccded161",
  "kind": "def",
  "lexical_name": "elabDeclareTacticConfig",
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
  "slug": "elabdeclaretacticconfig--0dedd8ae9a080b73fffe71ca",
  "source": {
    "blob": "27fb5dac6b1e1cd562464c6a076630b4dc63ff91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Varianteb35a7a35cce80aedd9f83f26acec220d713f5ea62d5c1c1a410d333d78002d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dedd8ae9a080b73fffe71ca55cf2fed3d251f553b188bdf09b9ee268d36d12d",
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

Occurrence: `declaration:02af8c018728c0f64c7ac4c2810fef72c43552b917b1169457f49346ccded161`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabDeclareTacticConfig : Macro
  | `(command|
        $[$doc?:docComment]? $[$vis?:visibility]?
        declare_config_elab%$tk $elabName:ident $type:ident $(binders)*
          $[$entries?:configEntries]?) =>
    mkElabConfigCmd (mkCIdent ``Tactic.TacticM) pure (mkCIdent ``true)
      (fun logExceptions => `($logExceptions && (← read).recover))
      doc? vis? tk elabName type binders entries?
  | _ => Macro.throwUnsupported

open Linter.MissingDocs in
@[builtin_missing_docs_handler elabDeclareTacticConfig]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Varianteb35a7a35cce80aedd9f83f26acec220d713f5ea62d5c1c1a410d333d78002d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Varianteb35a7a35cce80aedd9f83f26acec220d713f5ea62d5c1c1a410d333d78002d9.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27fb5dac6b1e1cd562464c6a076630b4dc63ff91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
