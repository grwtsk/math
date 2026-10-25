# betaReduceLetRecApps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:987c0f5b663af961908fb2bfb3153a23fee0b933d39af90015130ea3890fb2dd",
  "kind": "def",
  "lexical_name": "betaReduceLetRecApps",
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
  "slug": "betareduceletrecapps--7fc140f224abdfe931bb3946",
  "source": {
    "blob": "bb32745cd7efb6de31cab7779ef5f2003956aa0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd7fed3920c8007c136e50b2d448349dd552ce58051373ed2e38394c1842887d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fc140f224abdfe931bb3946f37d830aad6e21bc33580e422b430e86ee68efd7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd7fed3920c8007c136e50b2d448349dd552ce58051373ed2e38394c1842887d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:987c0f5b663af961908fb2bfb3153a23fee0b933d39af90015130ea3890fb2dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def betaReduceLetRecApps (preDefs : Array PreDefinition) : MetaM (Array PreDefinition) :=
  preDefs.mapM fun preDef => do
    if preDef.value.find? (fun e => e.isConst && preDefs.any fun preDef => preDef.declName == e.constName!) |>.isSome then
      let value ← Core.transform preDef.value fun e => do
        if e.isApp && e.getAppFn.isLambda && e.getAppArgs.all fun arg => arg.getAppFn.isConst && preDefs.any fun preDef => preDef.declName == arg.getAppFn.constName! then
          return .visit e.headBeta
        else
          return .continue
      return { preDef with value }
    else
      return preDef

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd7fed3920c8007c136e50b2d448349dd552ce58051373ed2e38394c1842887d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd7fed3920c8007c136e50b2d448349dd552ce58051373ed2e38394c1842887d9.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb32745cd7efb6de31cab7779ef5f2003956aa0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
