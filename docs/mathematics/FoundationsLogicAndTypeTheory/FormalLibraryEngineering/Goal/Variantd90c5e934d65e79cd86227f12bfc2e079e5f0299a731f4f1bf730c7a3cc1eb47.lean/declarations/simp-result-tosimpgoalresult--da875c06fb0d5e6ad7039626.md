# Simp.Result.toSimpGoalResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2a49ba119f88f695dd59acc7c0cd1401f0d7b2998f1e1244a289d9570025ee9",
  "kind": "def",
  "lexical_name": "Simp.Result.toSimpGoalResult",
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
  "slug": "simp-result-tosimpgoalresult--da875c06fb0d5e6ad7039626",
  "source": {
    "blob": "19b4d69745cf3623818a949819f1738ccd220b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da875c06fb0d5e6ad70396260178b8a06bfdfacc14a6c237c3317bd0e9279f05",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2a49ba119f88f695dd59acc7c0cd1401f0d7b2998f1e1244a289d9570025ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Simp.Result.toSimpGoalResult (result : Simp.Result) (mvarId : MVarId) : SymM SimpGoalResult := do
  let decl ← mvarId.getDecl
  match result with
  | .rfl _ _ => return .noProgress
  | .step target' h _ _ =>
    let mvarNew ← mkFreshExprSyntheticOpaqueMVar target' decl.userName
    let u ← getLevel decl.type
    let h := mkApp4 (mkConst ``Eq.mpr [u]) decl.type target' h mvarNew
    mvarId.assign h
    if target'.isTrue then
      mvarNew.mvarId!.assign (mkConst ``True.intro)
      return .closed
    else
      return .goal mvarNew.mvarId!

/--
Simplifies the target of `mvarId` using `Sym.simp`.
Returns `.closed` if the target simplifies to `True`, `.simp mvarId'` if simplified
to a new goal, or `.noProgress` if no simplification occurred.

This function assumed the input goal is a valid `Sym` goal (e.g., expressions are maximally shared).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19b4d69745cf3623818a949819f1738ccd220b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
