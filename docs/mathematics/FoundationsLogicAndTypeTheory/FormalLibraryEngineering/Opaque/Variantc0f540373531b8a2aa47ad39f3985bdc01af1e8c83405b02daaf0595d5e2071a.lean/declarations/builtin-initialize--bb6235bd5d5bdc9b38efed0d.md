# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d9a4986ddc0a6a431673b8cf0547440c649f574bc17d38f542b2d3f406804d3",
  "kind": "builtin_initialize",
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
  "slug": "builtin-initialize--bb6235bd5d5bdc9b38efed0d",
  "source": {
    "blob": "e5ce0d1c4588972a67d3b0874086953d1de7a50d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opaque/Variantc0f540373531b8a2aa47ad39f3985bdc01af1e8c83405b02daaf0595d5e2071a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb6235bd5d5bdc9b38efed0d211144f5bd7690364506003d257bf14a2366ac1e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opaque/Variantc0f540373531b8a2aa47ad39f3985bdc01af1e8c83405b02daaf0595d5e2071a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d9a4986ddc0a6a431673b8cf0547440c649f574bc17d38f542b2d3f406804d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  registerBuiltinAttribute {
    ref   := `cbvOpaqueAttr
    name  := `cbv_opaque
    descr := "Mark declarations that should not be unfolded by the `cbv` tactic"
    applicationTime := AttributeApplicationTime.afterCompilation
    add   := fun declName _ kind => do
      if (← isReducible declName) then
        throwError "`@[cbv_opaque]` cannot be applied to a `@[reducible]` declaration: \
          `{.ofConstName declName}` is reducible, so it is unfolded before `cbv` runs"
      cbvOpaqueExt.add declName kind
    erase := fun declName => do
      let s := cbvOpaqueExt.getState (← getEnv)
      modifyEnv fun env => cbvOpaqueExt.modifyState env fun _ => s.erase declName
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opaque/Variantc0f540373531b8a2aa47ad39f3985bdc01af1e8c83405b02daaf0595d5e2071a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opaque/Variantc0f540373531b8a2aa47ad39f3985bdc01af1e8c83405b02daaf0595d5e2071a.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5ce0d1c4588972a67d3b0874086953d1de7a50d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
