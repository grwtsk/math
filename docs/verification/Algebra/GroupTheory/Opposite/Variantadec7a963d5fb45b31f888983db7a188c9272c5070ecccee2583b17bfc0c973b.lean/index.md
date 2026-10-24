# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f10c9ecda947c5d49d89ef263865ddce4a59e40",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f10c9ecda947c5d49d89ef263865ddce4a59e40`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/mulaction--d5cdc2afec57f94496354c36.md) | 41 | `declaration-track:d5cdc2afec57f94496354c368ac28f3f6085677213b581f6c1acc64ac9684032` |
| 2 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/distribmulaction--c735e00fa9708a127a6aad3b.md) | 45 | `declaration-track:c735e00fa9708a127a6aad3b03aa2f562bc66432aa44443cd556f7d7e86d1980` |
| 3 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/muldistribmulaction--f0752f8b63d06096728ee934.md) | 50 | `declaration-track:f0752f8b63d06096728ee934232af2447fcfb522d576853664dd78e0296992f8` |
| 4 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/isscalartower--c0ef8b9d2885865f82310560.md) | 56 | `declaration-track:c0ef8b9d2885865f82310560814ea087f6baa330ef8d0bf365c7dc4333cc44db` |
| 5 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/smulcommclass--4636339830af66408dc95d83.md) | 61 | `declaration-track:4636339830af66408dc95d83bb5155e519d7584a2c82e28d9ab53cfb417e9905` |
| 6 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/iscentralscalar--85de03a269d7652601b10893.md) | 65 | `declaration-track:85de03a269d7652601b108938b0a553cf1105329cf6947f8cae07f64d1379a48` |
| 7 | `theorem` | [op_smul_eq_op_smul_op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/op-smul-eq-op-smul-op--d3dd6a96907cdbc52162f8db.md) | 69 | `result-track:d3dd6a96907cdbc52162f8dbbfedc286172dec71bfeffa70f0f6aa9d0dda3bf2` |
| 8 | `theorem` | [unop_smul_eq_unop_smul_unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/unop-smul-eq-unop-smul-unop--7e5319b5b95974c908d68c83.md) | 74 | `result-track:7e5319b5b95974c908d68c83d6075b0f1bc34fd05a951fee1823b78819cc96f5` |
| 9 | `instance` | [Mul.toHasOppositeSMul](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/mul-tohasoppositesmul--ad4014b29f139b81335b3718.md) | 97 | `declaration-track:ad4014b29f139b81335b3718615599abe5207bd69588031f4cc0e0336833bac9` |
| 10 | `theorem` | [op_smul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/op-smul-eq-mul--3240ebcac3c3d94768aea0d2.md) | 103 | `result-track:3240ebcac3c3d94768aea0d2e18e78f0322ed5492014f4c24baeefac7d6e7e03` |
| 11 | `theorem` | [MulOpposite.smul_eq_mul_unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/mulopposite-smul-eq-mul-unop--2114f8ff65a279a3c3ecb227.md) | 109 | `result-track:2114f8ff65a279a3c3ecb227ce80e8fafeb68047c88e1a95ade3e3e679242d0a` |
| 12 | `instance` | [MulAction.OppositeRegular.isPretransitive](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/mulaction-oppositeregular-ispretransitive--bd1dbe3945c7fffd9b6d2662.md) | 116 | `declaration-track:bd1dbe3945c7fffd9b6d26622d07338e56f0adefcdf67e1c4d88650fe4e24272` |
| 13 | `instance` | [Semigroup.opposite_smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/semigroup-opposite-smulcommclass--1e9636af06180c07064241e7.md) | 123 | `declaration-track:1e9636af06180c07064241e7584abecfb0b40759573ba6d0c1cc2b71f4d96dbe` |
| 14 | `instance` | [Semigroup.opposite_smulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/semigroup-opposite-smulcommclass--0d75f807a4f1866eedafab30.md) | 129 | `declaration-track:0d75f807a4f1866eedafab30d0d8b6770414ded826fd02f4533c8cf1f505f8eb` |
| 15 | `instance` | [CommSemigroup.isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/commsemigroup-iscentralscalar--679a4cb8473e30342412032d.md) | 135 | `declaration-track:679a4cb8473e30342412032d7418c3ca10dd3742227944ba8ceef42b4b562f27` |
| 16 | `instance` | [Monoid.toOppositeMulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/monoid-tooppositemulaction--0e350937354cfd65116f8bf9.md) | 142 | `declaration-track:0e350937354cfd65116f8bf918c0d3bb44d6fcf1f65bb84e67736da3b3985ff0` |
| 17 | `instance` | [IsScalarTower.opposite_mid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/isscalartower-opposite-mid--95667d0f73d9726b7c6bf499.md) | 151 | `declaration-track:95667d0f73d9726b7c6bf4998ff0312caac87ef33fa3fe6c641f6149bed596fc` |
| 18 | `instance` | [SMulCommClass.opposite_mid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/smulcommclass-opposite-mid--f81359e791f9afa6b13e7b2c.md) | 158 | `declaration-track:f81359e791f9afa6b13e7b2c7cf819e5f8facf1ee6d1b55fa479467089fb861f` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/example--dec95da6a840675de1a0bb26.md) | 168 | `declaration-track:dec95da6a840675de1a0bb265a373fb482b4f53b6fa30c908cdc9b36c3a2859f` |
| 20 | `instance` | [LeftCancelMonoid.toFaithfulSMul_opposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/leftcancelmonoid-tofaithfulsmul-opposite--dc07e0c0eeb725b99e127524.md) | 173 | `declaration-track:dc07e0c0eeb725b99e127524dbe08437bc875ae50db41e7ee69743bdb2e8e2f7` |
| 21 | `instance` | [CancelMonoidWithZero.toFaithfulSMul_opposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean/declarations/cancelmonoidwithzero-tofaithfulsmul-opposite--27b2fba680d4e85f379f8b1a.md) | 180 | `declaration-track:27b2fba680d4e85f379f8b1ac1e30fff126e5c1a8caf2f74a2111e7a8865d093` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
