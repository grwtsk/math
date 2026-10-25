# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fe86c8e0afcab7b4091b6f8675e3c1bc9934fada95767ff37532053350fb2c2",
  "kind": "elab",
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
  "slug": "elab--ef31be8ef8e2a9ea2a8de4ae",
  "source": {
    "blob": "21589ef78c03fe2692dbcd19d2aa2451ffa36f91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant1f5257ff086e8a752ea2444799e6c50620cde5d7bf5d63166a2eaf3c98ab0a0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef31be8ef8e2a9ea2a8de4aedf73956939c06c564a31ab557767eff56dd2f51c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant1f5257ff086e8a752ea2444799e6c50620cde5d7bf5d63166a2eaf3c98ab0a0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fe86c8e0afcab7b4091b6f8675e3c1bc9934fada95767ff37532053350fb2c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "assert_not_exists " ns:ident+ : command => do
  let env ← getEnv
  for n in ns do
    let decl ←
      try liftCoreM <| realizeGlobalConstNoOverloadWithInfo n
      catch _ =>
        Mathlib.AssertNotExist.addDeclEntry true n.getId (← getMainModule)
        continue
    let c ← mkConstWithLevelParams decl
    let msg ← (do
      let mut some idx := env.getModuleIdxFor? decl
        | pure m!"Declaration {c} is defined in this file."
      pure m!"Declaration {c} is not allowed to be imported by this file.\n\
        It is defined in {importPathMessage env idx}")
    logErrorAt n m!"{msg}\n\n\
      These invariants are maintained by `assert_not_exists` statements, \
      and exist in order to ensure that \"complicated\" parts of the library \
      are not accidentally introduced as dependencies of \"simple\" parts of the library."

/-- `assert_not_imported m₁ m₂ ... mₙ` checks that each one of the modules `m₁ m₂ ... mₙ` is not
among the transitive imports of the current file.

The command does not currently check whether the modules `m₁ m₂ ... mₙ` actually exist.
-/
-- TODO: make sure that each one of `m₁ m₂ ... mₙ` is the name of an actually existing module!
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant1f5257ff086e8a752ea2444799e6c50620cde5d7bf5d63166a2eaf3c98ab0a0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant1f5257ff086e8a752ea2444799e6c50620cde5d7bf5d63166a2eaf3c98ab0a0e.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21589ef78c03fe2692dbcd19d2aa2451ffa36f91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
