# foldCurrFileDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a9c32e9effc7d8d1a8a69d95aa8c92fee1102f3f4c802e644b6e92cb29aaafb",
  "kind": "def",
  "lexical_name": "foldCurrFileDecls",
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
  "slug": "foldcurrfiledecls--d749b2a6abe89c99cf3e7d45",
  "source": {
    "blob": "a2aa70e3f9db3f9295f27ff9ae4cd8e0982eb1f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldEnvironment/Variant680dc29af7f936d841b2f8a71791a5b287f80e17d17840e83582435f54b9f92b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d749b2a6abe89c99cf3e7d45205aac55a3f49099f62b59b70a2a46a280a3dae2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldEnvironment/Variant680dc29af7f936d841b2f8a71791a5b287f80e17d17840e83582435f54b9f92b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a9c32e9effc7d8d1a8a69d95aa8c92fee1102f3f4c802e644b6e92cb29aaafb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def foldCurrFileDecls (init : α) (cfg : Config)
    (act : α → Name → ConstantInfo → MetaM α) : CoreM (α × FoldDeclErrorRef) := do
  let env ← getEnv
  let modName := env.header.mainModule
  let errorRef ← IO.mkRef {}
  let (childNGen, parentNGen) := (← getNGen).mkChild
  setNGen parentNGen
  let go : MetaM α := env.constants.map₂.foldlM (visitConst modName errorRef act) init
  let result ← go.run' { keyedConfig := cfg.toConfigWithKey } {}
    |>.run' (← read) { env, ngen := childNGen }
  return (result, errorRef)

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldEnvironment/Variant680dc29af7f936d841b2f8a71791a5b287f80e17d17840e83582435f54b9f92b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldEnvironment/Variant680dc29af7f936d841b2f8a71791a5b287f80e17d17840e83582435f54b9f92b.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2aa70e3f9db3f9295f27ff9ae4cd8e0982eb1f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
