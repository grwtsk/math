# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.byContra?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43b75dd9635fd4d64c6bfb1fd398bf7349377fcfa58594c3ecdab532ad375073",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.byContra?",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--e905d523c4817e8ba8554e75",
  "source": {
    "blob": "d2973d3bf97d14b703de52ae2175e9a1a07bcf3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant45f89f85e4736db1a90ee4076de580f6b24bbebe09a52deb8601098f96a730a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e905d523c4817e8ba8554e75b54e4a815da938e37bf48eb221821059426d75c0",
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

Occurrence: `declaration:43b75dd9635fd4d64c6bfb1fd398bf7349377fcfa58594c3ecdab532ad375073`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.byContra? (mvarId : MVarId) : MetaM (Option MVarId) := mvarId.withContext do
  mvarId.checkNotAssigned `grind.by_contra
  let target ← mvarId.getType
  if target.isFalse then return none
  let targetNew ← mkArrow (mkNot target) (mkConst ``False)
  let tag ← mvarId.getTag
  let mvarNew ← mkFreshExprSyntheticOpaqueMVar targetNew tag
  mvarId.assign <| mkApp2 (mkConst ``Classical.byContradiction) target mvarNew
  return mvarNew.mvarId!

/--
Clears auxiliary **and** implementation detail decls used to encode recursive declarations and
implementation details.
- `grind` eliminates auxiliary declarations to ensure they are not accidentally used by its proof automation.
- `grind` eliminates implementation detail declarations because they have a support role.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant45f89f85e4736db1a90ee4076de580f6b24bbebe09a52deb8601098f96a730a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant45f89f85e4736db1a90ee4076de580f6b24bbebe09a52deb8601098f96a730a3.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2973d3bf97d14b703de52ae2175e9a1a07bcf3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
