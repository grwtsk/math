# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ApplyFun.Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d8ba83d810b4db384247571417852e3b5304dea",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d8ba83d810b4db384247571417852e3b5304dea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean/declarations/initialize--e4002e7be0d7fd3eb0343264.md) | 22 | `declaration-track:e4002e7be0d7fd3eb03432643e6811216301ad3f5ec863e0d3d6cd1d66807682` |
| 2 | `def` | [applyFunHyp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean/declarations/applyfunhyp--f052f7513b9fa1e510f670d7.md) | 25 | `declaration-track:f052f7513b9fa1e510f670d75e11bd9d0bfdebac07fe6bb9056484188ecddef6` |
| 3 | `def` | [applyFunTargetFailure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean/declarations/applyfuntargetfailure--7c18a1b1663e2041b0bbbc30.md) | 94 | `declaration-track:7c18a1b1663e2041b0bbbc30677e8e1d721c43474050b43ea65038b7681ea325` |
| 4 | `def` | [maybeProveInjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean/declarations/maybeproveinjective--a55ad6a665b57060fc2e1db0.md) | 99 | `declaration-track:a55ad6a665b57060fc2e1db030dda183a0d180e07a563b325e893672bd19f34d` |
| 5 | `def` | [applyFunTarget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean/declarations/applyfuntarget--fa66bd81ccf1d2c4f7727f28.md) | 126 | `declaration-track:fa66bd81ccf1d2c4f7727f28e95853d7f5cf2afbf6755fee7ae029e55756d2a4` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean/declarations/syntax--7ac884a3d5505949faa3224f.md) | 212 | `declaration-track:7ac884a3d5505949faa3224f9f568a11d75adec6db88133cd2ea0545cbbe80ad` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean/declarations/elab-rules--a1b788a233825826e4065ae3.md) | 214 | `declaration-track:a1b788a233825826e4065ae34d98f1769eefdd138b66fa959a518f2dbfa4d7f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
