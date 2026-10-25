# getMatchTheorems

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d80e7e37981c1f5599f558a737e01e08a39da5fc87334d2543548e5e590f2a4d",
  "kind": "def",
  "lexical_name": "getMatchTheorems",
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
  "slug": "getmatchtheorems--d74555a5f208e486fd14b079",
  "source": {
    "blob": "34c2bb99d1a2b3a72f0f2c91e96940c53621bc05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremsLookup/Variant188cb93909d47b3d2a34949d021c42640809ff76c73d0a8d16220ad9897430fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d74555a5f208e486fd14b07974fa1568bc23d815f681bb04bd1343bd22e12e71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremsLookup/Variant188cb93909d47b3d2a34949d021c42640809ff76c73d0a8d16220ad9897430fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d80e7e37981c1f5599f558a737e01e08a39da5fc87334d2543548e5e590f2a4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def getMatchTheorems (matcherName : Name) : MetaM Theorems := do
  let env ← getEnv
  let cache := cbvTheoremsLookup.getState env
  if let some thms := cache.matchTheorems.find? matcherName then
    return thms
  else
    let eqns ← Match.getEquationsFor matcherName
    let thms := Theorems.insertMany {} <| ← eqns.eqnNames.mapM mkTheoremFromDecl

    modifyEnv fun env =>
      cbvTheoremsLookup.modifyState env fun cache =>
        { cache with matchTheorems := cache.matchTheorems.insert matcherName thms }
    return thms

end Lean.Meta.Tactic.Cbv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremsLookup/Variant188cb93909d47b3d2a34949d021c42640809ff76c73d0a8d16220ad9897430fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremsLookup/Variant188cb93909d47b3d2a34949d021c42640809ff76c73d0a8d16220ad9897430fd.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34c2bb99d1a2b3a72f0f2c91e96940c53621bc05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
