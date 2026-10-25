# Environment.addDeclAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87c5e5c9374ca5369af1362777137b0cf7ed5ee1732cd07303d94a805b2c67db",
  "kind": "def",
  "lexical_name": "Environment.addDeclAux",
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
  "slug": "environment-adddeclaux--4dce546d0c90fbe54d7ef946",
  "source": {
    "blob": "512ba0ff2cdf52843b9f5425ec636e94d15ab92b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4dce546d0c90fbe54d7ef9468dba708e904b5078a6f6a466cccbad328b575da7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87c5e5c9374ca5369af1362777137b0cf7ed5ee1732cd07303d94a805b2c67db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def Environment.addDeclAux (env : Environment) (opts : Options) (decl : Declaration)
    (cancelTk? : Option IO.CancelToken := none) : Except Kernel.Exception Environment :=
  env.addDeclCore (Core.getMaxHeartbeats opts).toUSize (maxRecDepth.get opts).toUSize decl cancelTk?
    (!debug.skipKernelTC.get opts)

open Linter in
/--
Saves the state of `Lean.Option`s associated with environment linters into `envLinterSnapshotExt`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `512ba0ff2cdf52843b9f5425ec636e94d15ab92b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
