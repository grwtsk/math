# moveOperSimpCtx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55dbb0957f0476b7a923fac7f55d5775e9a7a13f135f4990c5ac602910449d1e",
  "kind": "def",
  "lexical_name": "moveOperSimpCtx",
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
  "slug": "moveopersimpctx--619147bc1049f256d5091abb",
  "source": {
    "blob": "abb6107c6f0c1525bbaf41e0beeff2a2b4118678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 340,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:619147bc1049f256d5091abbaf003e2cbb4ffbc1f2cc94c8201108256a30ba21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55dbb0957f0476b7a923fac7f55d5775e9a7a13f135f4990c5ac602910449d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def moveOperSimpCtx : MetaM Simp.Context := do
  let simpNames := Elab.Tactic.simpOnlyBuiltins ++ [
    ``add_comm, ``add_assoc, ``add_left_comm,  -- for `HAdd.hAdd`
    ``mul_comm, ``mul_assoc, ``mul_left_comm,  -- for `HMul.hMul`
    ``and_comm, ``and_assoc, ``and_left_comm,  -- for `and`
    ``or_comm,  ``or_assoc,  ``or_left_comm,   -- for `or`
    ``max_comm, ``max_assoc, ``max_left_comm,  -- for `max`
    ``min_comm, ``min_assoc, ``min_left_comm   -- for `min`
    ]
  let simpThms ← simpNames.foldlM (·.addConst ·) ({} : SimpTheorems)
  Simp.mkContext {} (simpTheorems := #[simpThms])

@[deprecated (since := "2024-12-07")]
alias move_oper_simpCtx := moveOperSimpCtx

/-- `reorderAndSimp mv op instr` takes as input an `MVarId`  `mv`, the name `op` of a binary
operation and a list of "instructions" `instr` that it passes to `permuteExpr`.

* It creates a version `permuted_mv` of `mv` with subexpressions representing `op`-sums reordered
  following `instructions`.
* It produces 2 temporary goals by applying `Eq.mpr` and unifying the resulting meta-variable with
  `permuted_mv`: `[⊢ mv = permuted_mv, ⊢ permuted_mv]`.
* It tries to solve the goal `mv = permuted_mv` by a simple-minded `simp` call, using the
  `op`-analogues of `add_comm, add_assoc, add_left_comm`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abb6107c6f0c1525bbaf41e0beeff2a2b4118678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
