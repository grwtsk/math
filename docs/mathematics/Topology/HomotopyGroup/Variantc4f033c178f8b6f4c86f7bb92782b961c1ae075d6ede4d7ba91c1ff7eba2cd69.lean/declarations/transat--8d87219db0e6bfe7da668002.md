# transAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76053adbd5f4fa7349e53c8d7126fd267787c76ab37c3cd0b3f450cdfde35e08",
  "kind": "def",
  "lexical_name": "transAt",
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
  "slug": "transat--8d87219db0e6bfe7da668002",
  "source": {
    "blob": "8ddbdb339b960500de4981a24e9c3fe1156b294d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 352,
    "path": "GRWTSK/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d87219db0e6bfe7da668002ef0043c9aa2e247c09535a3bf080e940be59387f",
  "verification": {
    "reference": "docs/verification/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76053adbd5f4fa7349e53c8d7126fd267787c76ab37c3cd0b3f450cdfde35e08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transAt (i : N) (f g : Ω^ N X x) : Ω^ N X x :=
  copy (fromLoop i <| (toLoop i f).trans <| toLoop i g)
    (fun t => if (t i : ℝ) ≤ 1 / 2
      then f (Function.update t i <| Set.projIcc 0 1 zero_le_one (2 * t i))
      else g (Function.update t i <| Set.projIcc 0 1 zero_le_one (2 * t i - 1)))
    (by
      ext1; symm
      dsimp only [Path.trans, fromLoop, Path.coe_mk_mk, Function.comp_apply, mk_apply,
        ContinuousMap.comp_apply, toContinuousMap_apply, funSplitAt_apply,
        ContinuousMap.uncurry_apply, ContinuousMap.coe_mk, Function.uncurry_apply_pair]
      split_ifs; change f _ = _; swap; change g _ = _
      all_goals congr 1)
#align gen_loop.trans_at GenLoop.transAt

/-- Reversal of a `GenLoop` along the `i`th coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ddbdb339b960500de4981a24e9c3fe1156b294d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
