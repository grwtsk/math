# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.transformTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eaaac1d417edb5c8e15bc0f6c6272cb696cfac58886f3d94dd4c6e14bdee5e42",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.transformTarget",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--1e3fd3d614632a67f1b13de4",
  "source": {
    "blob": "d2973d3bf97d14b703de52ae2175e9a1a07bcf3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant45f89f85e4736db1a90ee4076de580f6b24bbebe09a52deb8601098f96a730a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e3fd3d614632a67f1b13de4c5336eae2eed0f04f686761b07e0414f9c53efae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant45f89f85e4736db1a90ee4076de580f6b24bbebe09a52deb8601098f96a730a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eaaac1d417edb5c8e15bc0f6c6272cb696cfac58886f3d94dd4c6e14bdee5e42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.transformTarget (mvarId : MVarId) (f : Expr → MetaM Expr) : MetaM MVarId := mvarId.withContext do
  mvarId.checkNotAssigned `grind
  let tag ← mvarId.getTag
  let type ← mvarId.getType
  let typeNew ← f type
  let mvarNew ← mkFreshExprSyntheticOpaqueMVar typeNew tag
  mvarId.assign mvarNew
  return mvarNew.mvarId!

/--
Unfolds all `reducible` declarations occurring in the goal's target.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant45f89f85e4736db1a90ee4076de580f6b24bbebe09a52deb8601098f96a730a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant45f89f85e4736db1a90ee4076de580f6b24bbebe09a52deb8601098f96a730a3.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2973d3bf97d14b703de52ae2175e9a1a07bcf3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
