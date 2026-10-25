# getGoalState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd70354ed87bfb8ed053aebc011bc8ee568270183337a14820c7a419bdbbe0e0",
  "kind": "def",
  "lexical_name": "getGoalState",
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
  "slug": "getgoalstate--a8a2ee3d92b2cced0b3c6a41",
  "source": {
    "blob": "eccac469d4999b22149ae7ab846af35fc7c53b93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 262,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8a2ee3d92b2cced0b3c6a41ecb1a2554b78f5a75b02017920eaf58bbb39e057",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd70354ed87bfb8ed053aebc011bc8ee568270183337a14820c7a419bdbbe0e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getGoalState (env : Environment) (request : BridgeRequest) : BridgeM Json := do
  let (declaration, declarationName, info) ←
    ExceptT.mk <| pure <| requireDeclaration env request
  if !info.isTheorem then
    throw {
      code := "NOT_A_THEOREM"
      message := s!"declaration is not a theorem: {declaration}"
    }
  let (normalizedType, axioms, ranges) ← inspectCore env declarationName info
  pure <| Json.mkObj [
    ("declaration", toJson declaration),
    ("status", toJson "closed"),
    ("openGoals", Json.arr #[]),
    ("normalizedTarget", toJson normalizedType),
    ("declarationRange", declarationRangesJson ranges),
    ("axiomClosure", toJson (axioms.toList.map Name.toString)),
    ("authority", toJson "leanKernelChecked")
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eccac469d4999b22149ae7ab846af35fc7c53b93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
