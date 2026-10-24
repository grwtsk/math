# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdce4746be8cd112a355d0317052e8ab9e952180",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdce4746be8cd112a355d0317052e8ab9e952180`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsJordan](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/isjordan--e1cd31123ec7c7b45c2d7695.md) | 78 | `declaration-track:e1cd31123ec7c7b45c2d76953f0a31fa54e9577f6eb078613c27677f4d49f999` |
| 2 | `class` | [IsCommJordan](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/iscommjordan--998562171da7f82cce338525.md) | 86 | `declaration-track:998562171da7f82cce33852582b88644ee11a1e5229b1c0872fd2173dbe89461` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/instance--ad0f21a084c3771a1d86b194.md) | 91 | `declaration-track:ad0f21a084c3771a1d86b194ac0c9b6b431db07cd38a7c1bb81753185e466a0f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/instance--5a56514e74e9d48b26dcc6d4.md) | 105 | `declaration-track:5a56514e74e9d48b26dcc6d42027355d2cc8344073a10a09b1ebc5e7c52eea67` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/instance--1633c2d81e0b8e761b9f9133.md) | 113 | `declaration-track:1633c2d81e0b8e761b9f9133c7916020552c6baa2bad7496bcd19ecf9237c67d` |
| 6 | `theorem` | [commute_lmul_rmul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/commute-lmul-rmul--d70f35c98090c9251520bf95.md) | 130 | `result-track:d70f35c98090c9251520bf952bf78a5306652d6e965860972292e4617f3df373` |
| 7 | `theorem` | [commute_lmul_lmul_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/commute-lmul-lmul-sq--870a47d5615f83d01a139846.md) | 134 | `result-track:870a47d5615f83d01a139846f0c36e509babd8fd2d5b6754de9c221eb61dd7e4` |
| 8 | `theorem` | [commute_lmul_rmul_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/commute-lmul-rmul-sq--fe790e9d1317bffe2890c5b3.md) | 138 | `result-track:fe790e9d1317bffe2890c5b317d797d0fabcefefc1d1525d7c1651dd09a12724` |
| 9 | `theorem` | [commute_lmul_sq_rmul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/commute-lmul-sq-rmul--c1499a268ce80e841a8f31af.md) | 142 | `result-track:c1499a268ce80e841a8f31af98853d05f97c129f2234df015c0d085da182614f` |
| 10 | `theorem` | [commute_rmul_rmul_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/commute-rmul-rmul-sq--3a57dca5a7af085fb6f58693.md) | 146 | `result-track:3a57dca5a7af085fb6f586931a32cb2330b1776767820e700e03ecb87094872e` |
| 11 | `theorem` | [two_nsmul_lie_lmul_lmul_add_eq_lie_lmul_lmul_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/two-nsmul-lie-lmul-lmul-add-eq-lie-lmul-lmul-add--14ab2c5f98d9c94abf4a4c26.md) | 158 | `result-track:14ab2c5f98d9c94abf4a4c261ad4a6ebc7bcf85604fc86f7b50860f2dbbf9bc9` |
| 12 | `theorem` | [aux0](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/aux0--0f3c2a796c0980c691b9ec2a.md) | 169 | `result-track:0f3c2a796c0980c691b9ec2a587b628a86431628f26de0245ee34870ae346323` |
| 13 | `theorem` | [aux1](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/aux1--cf0166338971580b2bf3c718.md) | 180 | `result-track:cf0166338971580b2bf3c71802257ef5d1baeddbda2fe9f31ec93ee78f632d01` |
| 14 | `theorem` | [aux2](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/aux2--82dd1f6e598ad0c86ee593f8.md) | 195 | `result-track:82dd1f6e598ad0c86ee593f84bba083c473706011311dc91f4840ff202fd21f0` |
| 15 | `theorem` | [aux3](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/aux3--266a830d359a02d718dcec5b.md) | 212 | `result-track:266a830d359a02d718dcec5b8e956047031b5e8d278e66155227a273707074b6` |
| 16 | `theorem` | [two_nsmul_lie_lmul_lmul_add_add_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant86097434e1d5a503c23aba272338a9b4e8fcc0743e9607e0b82868a5f87d6670.lean/declarations/two-nsmul-lie-lmul-lmul-add-add-eq-zero--b475acca61d95a4b91fc3fa1.md) | 228 | `result-track:b475acca61d95a4b91fc3fa136b6237cb99c0f482dacc36cd29e67b0516d521c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
