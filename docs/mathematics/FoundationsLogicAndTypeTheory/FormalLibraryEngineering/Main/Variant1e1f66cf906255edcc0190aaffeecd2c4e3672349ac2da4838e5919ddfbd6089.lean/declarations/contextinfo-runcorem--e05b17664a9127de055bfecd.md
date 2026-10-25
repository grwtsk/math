# ContextInfo.runCoreM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa0779c840072f5e5074011bc51ccbc468af733997b4e58837aad0c89dde2aa9",
  "kind": "def",
  "lexical_name": "ContextInfo.runCoreM",
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
  "slug": "contextinfo-runcorem--e05b17664a9127de055bfecd",
  "source": {
    "blob": "c0bfe195920efb6aa1186ad04141f4cbcfde72f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1e1f66cf906255edcc0190aaffeecd2c4e3672349ac2da4838e5919ddfbd6089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e05b17664a9127de055bfecdfe869875e9f88a5c107e1234462b89b4b45b01e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1e1f66cf906255edcc0190aaffeecd2c4e3672349ac2da4838e5919ddfbd6089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa0779c840072f5e5074011bc51ccbc468af733997b4e58837aad0c89dde2aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContextInfo.runCoreM (info : ContextInfo) (x : CoreM α) : IO α := do
  -- We assume that this function is used only outside elaboration, mostly in the language server,
  -- and so we can and should provide access to information regardless whether it is exported.
  let env := info.env.setExporting false
  /-
    We must execute `x` using the `ngen` stored in `info`. Otherwise, we may create `MVarId`s and `FVarId`s that
    have been used in `lctx` and `info.mctx`.
  -/
  (·.1) <$>
    (withOptions (fun _ => info.options) x).toIO
      { currNamespace := info.currNamespace, openDecls := info.openDecls
        fileName := "<InfoTree>", fileMap := default }
      { env, ngen := info.ngen }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1e1f66cf906255edcc0190aaffeecd2c4e3672349ac2da4838e5919ddfbd6089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1e1f66cf906255edcc0190aaffeecd2c4e3672349ac2da4838e5919ddfbd6089.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0bfe195920efb6aa1186ad04141f4cbcfde72f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
