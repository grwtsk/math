# Decl.toImpure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f25460a13fc84dd98a36c799f9de1c106e62a5112f095544714de66a6688b84d",
  "kind": "def",
  "lexical_name": "Decl.toImpure",
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
  "slug": "decl-toimpure--ca3d0b9077ab38e428f18766",
  "source": {
    "blob": "0377ec665f828461c8bfa34ccaf7171754336330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 309,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca3d0b9077ab38e428f18766fb6686f97841eb3c0d40c50694752ce0f45de65a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f25460a13fc84dd98a36c799f9de1c106e62a5112f095544714de66a6688b84d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Decl.toImpure (decl : Decl .pure) : CompilerM (Decl .impure) := do
  go |>.run' {}
where
  go : ToImpureM (Decl .impure) := do
    let decl ← lowerDecl
    decl.saveImpure
    return decl

  lowerDecl : ToImpureM (Decl .impure) := do
    let params ← decl.params.mapM (·.toImpure)
    let mut resultType ← lowerResultType decl.type decl.params.size
    let taggedReturn := taggedReturnAttr.hasTag (← getEnv) decl.name
    match decl.value with
    | .code code =>
      if taggedReturn then
        throwError m!"Error while compiling function '{decl.name}': @[tagged_return] is only valid for extern declarations"
      let value ← code.toImpure
      return { decl with type := resultType, params, value := .code value }
    | .extern externAttrData =>
      if taggedReturn then
        if resultType.isScalar then
          throwError m!"@[tagged_return] on function '{decl.name}' with scalar return type {resultType}"
        else
          resultType := ImpureType.tagged

      return { decl with type := resultType, params, value := .extern externAttrData }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0377ec665f828461c8bfa34ccaf7171754336330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
