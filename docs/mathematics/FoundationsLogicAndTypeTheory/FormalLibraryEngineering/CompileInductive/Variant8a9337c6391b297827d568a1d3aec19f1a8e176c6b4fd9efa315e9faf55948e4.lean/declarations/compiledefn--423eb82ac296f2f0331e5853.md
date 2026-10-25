# compileDefn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7ce8b0b5b93d172adb1a8214a2be2f6dfc60cf1d4932e474bd5ce5470684823",
  "kind": "def",
  "lexical_name": "compileDefn",
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
  "slug": "compiledefn--423eb82ac296f2f0331e5853",
  "source": {
    "blob": "7219c3020bbb5f5e629c95c4c29d661151a20a76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:423eb82ac296f2f0331e58539e4ece16b05a23cabb31544b8791a61ec1a68dbb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7ce8b0b5b93d172adb1a8214a2be2f6dfc60cf1d4932e474bd5ce5470684823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compileDefn (dv : DefinitionVal) : MetaM Unit := do
  if ((← getEnv).getModuleIdxFor? dv.name).isNone then
    -- If it's in the same module then we can safely just call `compileDecl`
    -- on the original definition
    return ← compileDecl <| .defnDecl dv
  let name ← mkFreshUserName dv.name
  addAndCompile' <| .defnDecl { dv with name }
  let levels := dv.levelParams.map .param
  let old := .const dv.name levels
  let new := .const name levels
  let name ← mkFreshUserName <| dv.name.str "eq"
  addDecl <| .thmDecl {
    name
    levelParams := dv.levelParams
    type := ← mkEq old new
    value := ← mkEqRefl old
  }
  Compiler.CSimp.add name .global

open Elab

/-- Returns true if the given declaration has already been compiled, either directly or via a
`@[csimp]` lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7219c3020bbb5f5e629c95c4c29d661151a20a76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
