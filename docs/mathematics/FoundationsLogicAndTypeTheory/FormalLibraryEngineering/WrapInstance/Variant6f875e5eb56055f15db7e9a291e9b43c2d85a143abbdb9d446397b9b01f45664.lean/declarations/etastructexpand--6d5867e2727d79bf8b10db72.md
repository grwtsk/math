# etaStructExpand?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ddf3651b9c6ee643b8e6c5e505150e63ca129d72d16852c85cfec124f3440a0",
  "kind": "def",
  "lexical_name": "etaStructExpand?",
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
  "slug": "etastructexpand--6d5867e2727d79bf8b10db72",
  "source": {
    "blob": "b2ed14964a7be21b564fdb832114cd49e894ee7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WrapInstance/Variant6f875e5eb56055f15db7e9a291e9b43c2d85a143abbdb9d446397b9b01f45664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d5867e2727d79bf8b10db725b80d4d86c632ec6b5120a330ee2bd9e4e2f117f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WrapInstance/Variant6f875e5eb56055f15db7e9a291e9b43c2d85a143abbdb9d446397b9b01f45664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ddf3651b9c6ee643b8e6c5e505150e63ca129d72d16852c85cfec124f3440a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def etaStructExpand? (e : Expr) : MetaM (Option Expr) := OptionT.run do
  guard <| (← liftM <| isConstructorApp? e).isNone
  let eType ← instantiateMVars (← whnf (← inferType e))
  let .const inductName us := eType.getAppFn | failure
  let env ← getEnv
  guard <| isStructure env inductName
  guard <| isNonRecStructure env inductName
  guard <| !(← isProp eType)
  let iv ← getConstInfoInduct inductName
  let some ctorName := iv.ctors.head? | failure
  let ctorInfo ← getConstInfoCtor ctorName
  let params := eType.getAppArgs.shrink ctorInfo.numParams
  let structInfo? := getStructureInfo? env inductName
  let mut result := mkAppN (mkConst ctorName us) params
  for i in *...ctorInfo.numFields do
    let proj := match structInfo?.bind (·.getProjFn? i) with
      | some projFn => mkApp (mkAppN (mkConst projFn us) params) e
      | none => mkProj inductName i e
    result := mkApp result proj
  return result

/--
Wrap an instance value so its type matches the expected type exactly.
See the module docstring for the full algorithm specification.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WrapInstance/Variant6f875e5eb56055f15db7e9a291e9b43c2d85a143abbdb9d446397b9b01f45664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WrapInstance/Variant6f875e5eb56055f15db7e9a291e9b43c2d85a143abbdb9d446397b9b01f45664.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2ed14964a7be21b564fdb832114cd49e894ee7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
