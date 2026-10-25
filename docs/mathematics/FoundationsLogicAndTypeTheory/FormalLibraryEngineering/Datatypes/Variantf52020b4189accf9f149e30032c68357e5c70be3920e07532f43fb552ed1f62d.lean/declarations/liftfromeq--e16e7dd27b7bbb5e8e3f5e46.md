# liftFromEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57710e76ff1f676fafcd5b25ec4828225456b74b2d989907b45b0244beaedaf7",
  "kind": "def",
  "lexical_name": "liftFromEq",
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
  "slug": "liftfromeq--e16e7dd27b7bbb5e8e3f5e46",
  "source": {
    "blob": "9d80194c381d065e18e86e2acde5a2a1bf6fdabb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantf52020b4189accf9f149e30032c68357e5c70be3920e07532f43fb552ed1f62d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e16e7dd27b7bbb5e8e3f5e46fb9fbcc77061c60cbba27d66558c31168518a65d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantf52020b4189accf9f149e30032c68357e5c70be3920e07532f43fb552ed1f62d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57710e76ff1f676fafcd5b25ec4828225456b74b2d989907b45b0244beaedaf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftFromEq (R : Name) (H : Expr) : MetaM Expr := do
  if R == ``Eq then return H
  let HType ← whnf (← inferType H)
  -- `HType : @Eq A a _`
  let some (A, a, _) := HType.eq?
    | throwError "failed to build liftFromEq equality proof expected: {H}"
  -- `motive : (x : _) → a = x → Prop := fun x h => R a x`
  let motive ←
    withLocalDeclD `x A fun x => do
      let hType ← mkEq a x
      withLocalDeclD `h hType fun h =>
        mkRel R a x >>= mkLambdaFVars #[x, h]
  -- `minor : R a a := by rfl`
  let minor ← do
    let mt ← mkRel R a a
    let m ← mkFreshExprSyntheticOpaqueMVar mt
    m.mvarId!.applyRfl
    instantiateMVars m
  mkEqRec motive minor H

/-- Ordering on `Expr`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantf52020b4189accf9f149e30032c68357e5c70be3920e07532f43fb552ed1f62d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantf52020b4189accf9f149e30032c68357e5c70be3920e07532f43fb552ed1f62d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d80194c381d065e18e86e2acde5a2a1bf6fdabb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
