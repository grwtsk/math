# getIRPhases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b34b43a44b4826e5319dfbcf7637533f8e53624441e8815234d3e67e90221a3",
  "kind": "def",
  "lexical_name": "getIRPhases",
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
  "slug": "getirphases--54be31f5c331f715b9d497a9",
  "source": {
    "blob": "afe5649175cdf08d2dec870797b69bf93fec8a23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaAttr/Variantd8462ca9112fc97e69bbb7bfc841cbde2d36a5e29eb76951023462ee1f2dd26c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54be31f5c331f715b9d497a95a3c46b5556c61b580ce60b22f98509d9f1a116d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaAttr/Variantd8462ca9112fc97e69bbb7bfc841cbde2d36a5e29eb76951023462ee1f2dd26c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b34b43a44b4826e5319dfbcf7637533f8e53624441e8815234d3e67e90221a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getIRPhases (env : Environment) (declName : Name) : IRPhases := Id.run do
  if !env.header.isModule then
    return .all
  match env.getModuleIdxFor? declName with
  | some idx =>
    if isMarkedMeta env declName then
      .comptime
    else
      env.header.modules[idx]?.map (·.irPhases) |>.get!
  | none =>
    if env.find? declName |>.all (·.isCtor) then
      -- Do not check ctors (trivial) or decls not in env (compiler-generated)
      .all
    else if isMarkedMeta env declName then
      .comptime
    else
      .runtime

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaAttr/Variantd8462ca9112fc97e69bbb7bfc841cbde2d36a5e29eb76951023462ee1f2dd26c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaAttr/Variantd8462ca9112fc97e69bbb7bfc841cbde2d36a5e29eb76951023462ee1f2dd26c.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afe5649175cdf08d2dec870797b69bf93fec8a23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
