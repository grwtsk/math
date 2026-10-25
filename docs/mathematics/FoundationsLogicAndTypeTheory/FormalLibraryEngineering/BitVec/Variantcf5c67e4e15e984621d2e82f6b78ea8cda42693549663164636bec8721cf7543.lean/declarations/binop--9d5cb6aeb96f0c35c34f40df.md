# binOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44598233787782e2dc452ff9a026bc756207fff3e3e032052704e3198675ec72",
  "kind": "def",
  "lexical_name": "binOp",
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
  "slug": "binop--9d5cb6aeb96f0c35c34f40df",
  "source": {
    "blob": "29a009eb183a4dcb6821eed77363dbe585185407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d5cb6aeb96f0c35c34f40dfaa4e89a0184cbfd54643773ad867203473a0cee8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44598233787782e2dc452ff9a026bc756207fff3e3e032052704e3198675ec72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def binOp (e : Expr) (eval : Expr → Expr → GoalM (Option Expr)) : GoalM Unit := do
  let a₂ := e.appArg!
  let a₁ := e.appFn!.appArg!
  let r₁ ← getRoot a₁
  let r₂ ← getRoot a₂
  let some b ← eval r₁ r₂ | return ()
  internalize b 0
  let eType ← inferType e
  let proof := mkApp9 (mkConst ``Grind.eval_congr₂ [1, 1, 1]) (← inferType a₁) (← inferType a₂) eType e.appFn!.appFn! a₁ r₁ a₂ r₂ b
  let proof := mkApp3 proof (← mkEqProof a₁ r₁) (← mkEqProof a₂ r₂) (mkApp2 (mkConst ``Eq.refl [1]) eType b)
  pushEq e b proof

/-- Table entry for `op : BitVec n → BitVec n` with head `declName` and the given arity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29a009eb183a4dcb6821eed77363dbe585185407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
