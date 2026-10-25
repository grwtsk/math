# ReifiedBVExpr.evalsAtAtoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80194f666c9baa87989d83066f6f37930ccad92f68bbda1adad074bb9b569365",
  "kind": "def",
  "lexical_name": "ReifiedBVExpr.evalsAtAtoms",
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
  "slug": "reifiedbvexpr-evalsatatoms--25db555188fc526f365c9e55",
  "source": {
    "blob": "00d3c31424a58116a6ffef8dcbe5eec10e830a17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ac3d4b4c7d75288aab5c89631d9aa62a25b963c616871c11a382d397c5b0dfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25db555188fc526f365c9e559e8ad0e027d489833ca7131aeb02bf5e184f6fd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ac3d4b4c7d75288aab5c89631d9aa62a25b963c616871c11a382d397c5b0dfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80194f666c9baa87989d83066f6f37930ccad92f68bbda1adad074bb9b569365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ReifiedBVExpr.evalsAtAtoms (reified : ReifiedBVExpr) : M (Option Expr) := do
  match (← get).evalsAtCache[reified.originalExpr]? with
  | some hit => return hit
  | none =>
    let proof? ← reified.evalsAtAtoms'
    modify fun s => { s with evalsAtCache :=  s.evalsAtCache.insert reified.originalExpr proof? }
    return proof?

/--
A reified version of an `Expr` representing a `BVPred`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ac3d4b4c7d75288aab5c89631d9aa62a25b963c616871c11a382d397c5b0dfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ac3d4b4c7d75288aab5c89631d9aa62a25b963c616871c11a382d397c5b0dfd.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00d3c31424a58116a6ffef8dcbe5eec10e830a17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
