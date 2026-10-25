# Convert.ExpensiveConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5c7de4d62eeae1f98ed79e0b3d1d48089f0f2a87bd6c586094192889707115f",
  "kind": "structure",
  "lexical_name": "Convert.ExpensiveConfig",
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
  "slug": "convert-expensiveconfig--8e7122f4cd36b34d3b0904f9",
  "source": {
    "blob": "e2fa4f5d2af82647e146e398f16c02c5e9d278b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Varianta73b3955abb4ecab966f6ccbf284a7b4aad144d74509e88a37da9911ef479674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e7122f4cd36b34d3b0904f9edb0b8cf9637e8bc026b84a99ec1e640058b4f1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Varianta73b3955abb4ecab966f6ccbf284a7b4aad144d74509e88a37da9911ef479674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5c7de4d62eeae1f98ed79e0b3d1d48089f0f2a87bd6c586094192889707115f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Convert.ExpensiveConfig extends Convert.CheapConfig where
  -- TODO: also enable this in the future?
  -- preTransparency := .default
  -- transparency := .default
  postTransparency := .default
  sameFun := false

/-- Internal elaborator for `Convert.ExpensiveConfig`: use `Convert.elabConfig` instead. -/
declare_config_elab Convert.elabExpensiveConfig Convert.ExpensiveConfig

/-- Configuration elaborator for the `convert`/`convert!` family of tactics.

If `expensive` is true, we're elaborating for `convert!`, and will configure to run at default
transparency (unless explicitly overridden by the user saying e.g. `(transparency := .instances)`.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Varianta73b3955abb4ecab966f6ccbf284a7b4aad144d74509e88a37da9911ef479674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Varianta73b3955abb4ecab966f6ccbf284a7b4aad144d74509e88a37da9911ef479674.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2fa4f5d2af82647e146e398f16c02c5e9d278b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
