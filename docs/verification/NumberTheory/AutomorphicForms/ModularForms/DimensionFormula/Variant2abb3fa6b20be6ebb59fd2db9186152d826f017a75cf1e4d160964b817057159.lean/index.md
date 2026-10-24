# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.DimensionFormula.Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "512e3d81fafd3dfcb596bfa5e2fa4fc8292027a7",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `512e3d81fafd3dfcb596bfa5e2fa4fc8292027a7`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Semifield` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofMulDiscriminant](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/ofmuldiscriminant--6d5625a9ff760af512efd40b.md) | 58 | `declaration-track:6d5625a9ff760af512efd40b1d8608cfc02ca666f293171d55485a309c85bd2f` |
| 2 | `lemma` | [ofMulDiscriminant_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/ofmuldiscriminant-apply--9323cd57f551b9aff66b4348.md) | 62 | `result-track:9323cd57f551b9aff66b4348dd12c131d9e1c25a8d3b59541b8aa5e0bc1ad3c3` |
| 3 | `lemma` | [divByDiscriminant_slash_eq](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/divbydiscriminant-slash-eq--37f46bfa545ba84982f9db37.md) | 65 | `result-track:37f46bfa545ba84982f9db375c15777d7c92ec9e725173f366a679af6fbbc5e1` |
| 4 | `def` | [discriminantEquiv](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/discriminantequiv--e1addc42d2a0341c59e01d2c.md) | 73 | `declaration-track:e1addc42d2a0341c59e01d2c1d40bacfbfb2cce281014a4dc4b08f2317fab0e3` |
| 5 | `lemma` | [discriminantEquiv_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/discriminantequiv-apply--25c9877e72138c5ef74efc05.md) | 100 | `result-track:25c9877e72138c5ef74efc056b62446424f3780fd359943f3aab0f3d09b18383` |
| 6 | `def` | [divDiscriminant](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/divdiscriminant--6e5b13be5c953cb5aab8507b.md) | 105 | `declaration-track:6e5b13be5c953cb5aab8507b5603243d1a0869b92d50a135631f2ee5e29bf55f` |
| 7 | `lemma` | [divDiscriminant_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/divdiscriminant-apply--e628577718215ede017a2c8a.md) | 108 | `result-track:e628577718215ede017a2c8a86f0c779bf4eda01223e03c82edf45b91086dc2d` |
| 8 | `lemma` | [discriminant_mul_discriminantEquiv_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/discriminant-mul-discriminantequiv-apply--e612e6bd5d7a27854a2a3216.md) | 116 | `result-track:e612e6bd5d7a27854a2a3216db2393c133f2159a3dbf7ebc48554cb3b47c0700` |
| 9 | `lemma` | [discriminant_mul_discriminantEquiv](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/discriminant-mul-discriminantequiv--c73432089bf7bb27bd9a0c83.md) | 121 | `result-track:c73432089bf7bb27bd9a0c8301b0369159c47ea3e7ec9fe0d13c3b0fda11f74a` |
| 10 | `lemma` | [discriminant_qExpansion_order](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/discriminant-qexpansion-order--4bee6080f9f4f15f4ecc87a8.md) | 127 | `result-track:4bee6080f9f4f15f4ecc87a886819f0c32dfd15404053acec8baf06b6589daaf` |
| 11 | `lemma` | [qExpansion_eq_qExpansion_discriminant_mul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/qexpansion-eq-qexpansion-discriminant-mul--3aa8473e2dd6e08a146d75cc.md) | 137 | `result-track:3aa8473e2dd6e08a146d75cc44b6925ce2077c62f85c2d321dbb4957a10dd856` |
| 12 | `lemma` | [ModularForm.levelOne_odd_weight_eq_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/modularform-levelone-odd-weight-eq-zero--bdf3d5ad64267e104aae01ce.md) | 154 | `result-track:bdf3d5ad64267e104aae01ce98ba49aa658e0178783b7c8e6d2805d4b4aa717f` |
| 13 | `lemma` | [ModularForm.levelOne_odd_weight_rank_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/modularform-levelone-odd-weight-rank-zero--e2976a224f7636d60aa2ca9e.md) | 158 | `result-track:e2976a224f7636d60aa2ca9e15b005852fc9c332f8c846670210eb9fae4512b5` |
| 14 | `lemma` | [CuspForm.rank_eq_zero_of_weight_lt_twelve](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/cuspform-rank-eq-zero-of-weight-lt-twelve--53e076943d71c4f25aebea92.md) | 163 | `result-track:53e076943d71c4f25aebea925a1482d2af0b57ad144a0306dd27731968bc4713` |
| 15 | `lemma` | [CuspForm.rank_eq_one_of_weight_eq_twelve](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/cuspform-rank-eq-one-of-weight-eq-twelve--e24009913cd080b7d569a197.md) | 168 | `result-track:e24009913cd080b7d569a1979d8007be2dc3cf991ff133586ec13c5e937ef532` |
| 16 | `lemma` | [CuspForm.exists_smul_discriminant_of_weight_eq_twelve](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/cuspform-exists-smul-discriminant-of-weight-eq-twelve--56b87af9f0d242690abdb535.md) | 172 | `result-track:56b87af9f0d242690abdb5351319a840e3dcfc76bb31d0d7710c16c6c6012081` |
| 17 | `lemma` | [ModularForm.rank_eq_one_add_rank_cuspForm](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/modularform-rank-eq-one-add-rank-cuspform--18c93e099953988b01b64fab.md) | 179 | `result-track:18c93e099953988b01b64fabc24ff77308b6158c461519a75a32ca57e7f1f0a0` |
| 18 | `lemma` | [levelOne_weight_four_rank_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/levelone-weight-four-rank-one--7901f0bf64e545ed4c471ad6.md) | 202 | `result-track:7901f0bf64e545ed4c471ad6dd9801e6264b23aef0f7f7a4e6d7f4f312beca1e` |
| 19 | `lemma` | [levelOne_weight_six_rank_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/levelone-weight-six-rank-one--129c302fc43af4feacd1824d.md) | 207 | `result-track:129c302fc43af4feacd1824dfac89bb771cb3a0623f2fd624449fe9c9c280665` |
| 20 | `lemma` | [E₄_qExpansion_coeff_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/e-qexpansion-coeff-one--9c1a3cb43ff561d46a1645df.md) | 212 | `result-track:9c1a3cb43ff561d46a1645df5c091889c63585d22b43f912e170d3aa7c93bd7b` |
| 21 | `lemma` | [E₆_qExpansion_coeff_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/e-qexpansion-coeff-one--440a2ce9e41dbff5fb648f3a.md) | 215 | `result-track:440a2ce9e41dbff5fb648f3a0d4ffcce51af053507c4c91f356fb8b2ecfd74ca` |
| 22 | `lemma` | [eq_zero_of_pow_eq_smul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/eq-zero-of-pow-eq-smul--b1da31b3d88266e0dc6e250b.md) | 221 | `result-track:b1da31b3d88266e0dc6e250bf9743fb390a148bc3ae904ae5403ef7d4bd7207d` |
| 23 | `lemma` | [weight_two_qExpansion_eq_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/weight-two-qexpansion-eq-zero--cb70da94ca74c104cc3c45e8.md) | 233 | `result-track:cb70da94ca74c104cc3c45e8784e479d27e0e3935cd7e3d73c40e641417208c4` |
| 24 | `theorem` | [levelOne_weight_two_rank_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/levelone-weight-two-rank-zero--1d154e00a98e3e2c085f6419.md) | 253 | `result-track:1d154e00a98e3e2c085f641964aed91df7d1ae31ea068c8f13feb42f378eb053` |
| 25 | `theorem` | [dimension_level_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/dimension-level-one--0cd8dc0d303f07eae2bb3562.md) | 258 | `result-track:0cd8dc0d303f07eae2bb3562953877b16bd85087ba2f0343a48ad24ed1cd5fe4` |
| 26 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/instance--da322f5d60844c7235d26498.md) | 282 | `declaration-track:da322f5d60844c7235d264981ef155e1bed4821a485a3b0f0af6daf97cd41128` |
| 27 | `theorem` | [sturm_bound_levelOne_nat](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/sturm-bound-levelone-nat--9819bc84462ed6793befe7d3.md) | 296 | `result-track:9819bc84462ed6793befe7d370402d5456fef2c752ff79880213564bcba42b27` |
| 28 | `theorem` | [sturm_bound_levelOne](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/declarations/sturm-bound-levelone--b3b6c4f8ef9ea00a12eb1808.md) | 315 | `result-track:b3b6c4f8ef9ea00a12eb1808d46f86044507208dc0566609349609afc7b7f565` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
