# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ConductorThreeTypeIICoefficientNorms.Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35cc5b7b3b112ca7891f1d33a5973f7a070c3e89",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35cc5b7b3b112ca7891f1d33a5973f7a070c3e89`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_vaughanDivisorCoefficient_le_card_divisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/abs-vaughandivisorcoefficient-le-card-divisors--3e68c83d6b84b6863f27cc01.md) | 43 | `result-track:3e68c83d6b84b6863f27cc01e6bcbcc893bbb1bcc22482512577317a06dbd768` |
| 2 | `theorem` | [truncatedMobiusDivisorSum_le_divisorCount](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/truncatedmobiusdivisorsum-le-divisorcount--c52b7ab51149f08d31c9645c.md) | 70 | `result-track:c52b7ab51149f08d31c9645cb2e045f3525267f36bab3ef21a54e86b2dddb276` |
| 3 | `def` | [blockLeftEuclideanCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/blocklefteuclideancoefficient--8c6095d2ad5f2642e94f7032.md) | 79 | `declaration-track:8c6095d2ad5f2642e94f7032cb305fd5a9df1de4380fae6d0f5c55d598a71e5b` |
| 4 | `def` | [blockRightEuclideanCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/blockrighteuclideancoefficient--2c5c2fbe12b4aecc57871646.md) | 85 | `declaration-track:2c5c2fbe12b4aecc578716461b742aa9c93048118e85391df1e9abc52333bd38` |
| 5 | `def` | [leftShellOffset](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/leftshelloffset--c88bd385186bae65aa610ef6.md) | 89 | `declaration-track:c88bd385186bae65aa610ef692f8b5660f6b3c435a042a69633b0956bc335a23` |
| 6 | `theorem` | [leftShellOffset_injective](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/leftshelloffset-injective--5967c28b25124d917eff077d.md) | 93 | `result-track:5967c28b25124d917eff077d82e276e39cf523d2ddf0f86dfe4870f76376a816` |
| 7 | `def` | [rightShellOffset](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/rightshelloffset--a0ed6cb5b861640a4928d46c.md) | 108 | `declaration-track:a0ed6cb5b861640a4928d46c21854b0463c64da727a2b7d8e3bb06823ef0ffef` |
| 8 | `theorem` | [rightShellOffset_injective](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/rightshelloffset-injective--a920ca3fbb39bdeeaa9307eb.md) | 112 | `result-track:a920ca3fbb39bdeeaa9307eb002b858377a7598de54b01ac7cc37f273895cf55` |
| 9 | `theorem` | [blockLeft_card_le_scale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/blockleft-card-le-scale--14f83c4a679cff387adb5e08.md) | 128 | `result-track:14f83c4a679cff387adb5e08c1e989fdabc1cc64a823525a072229469650bdd7` |
| 10 | `theorem` | [blockRight_card_le_scale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/blockright-card-le-scale--7ee3c50975d41bcf3fe1f777.md) | 135 | `result-track:7ee3c50975d41bcf3fe1f777cb0b14874563c4721771a27aa1db2c4a1946d159` |
| 11 | `theorem` | [abs_conductorThreeIntegerValue_cast_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/abs-conductorthreeintegervalue-cast-le-one--10a6bb0341b350c92cdf5634.md) | 141 | `result-track:10a6bb0341b350c92cdf5634d9848dcd58875b45cc21ed426065b51585e78fa3` |
| 12 | `theorem` | [block_index_le_two_mul_scale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/block-index-le-two-mul-scale--4a21372d848486bdac831c40.md) | 151 | `result-track:4a21372d848486bdac831c4075871008322fd868621d8bdd0ffa9189aa19b1bb` |
| 13 | `theorem` | [two_mul_N_pos_of_block](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/two-mul-n-pos-of-block--13a38e27af1e62d0e6cd984f.md) | 155 | `result-track:13a38e27af1e62d0e6cd984f07502c7e51b4ac31de0bf60985fa83bb00e04618` |
| 14 | `theorem` | [log_two_mul_N_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/log-two-mul-n-nonneg--861b071ff041218530e17e99.md) | 160 | `result-track:861b071ff041218530e17e99d1bfbd7d54d829b3929fbfb80dbedfa010810e74` |
| 15 | `theorem` | [blockLeftCoefficient_norm_le_log](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/blockleftcoefficient-norm-le-log--1ef8a5f6890d6fd2925c8cc7.md) | 165 | `result-track:1ef8a5f6890d6fd2925c8cc7d01f82fcd046df6d3a3e5dbc9ea307728dd15b6b` |
| 16 | `theorem` | [blockRightCoefficient_norm_le_twice_scale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/blockrightcoefficient-norm-le-twice-scale--49bf92a34f49c00d9f5627bc.md) | 191 | `result-track:49bf92a34f49c00d9f5627bcd7339b9c97d2b1d97c2856f4429a1da940d2882f` |
| 17 | `theorem` | [sum_blockLeft_norm_sq_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/sum-blockleft-norm-sq-le--40203e62b16fcadea73e62c1.md) | 213 | `result-track:40203e62b16fcadea73e62c16018cb6aaa90fff85c2b1c7cffc0f9d528828486` |
| 18 | `theorem` | [sum_blockRight_norm_sq_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/sum-blockright-norm-sq-le--c46713f25c6d3deb0d0b82ce.md) | 230 | `result-track:c46713f25c6d3deb0d0b82ce9ecfb2889feb8f0e21e5f81d5ec77a8689566453` |
| 19 | `theorem` | [conductorThreeVaughanLeft_l2](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/conductorthreevaughanleft-l2--e6f55658649694343cee083e.md) | 248 | `result-track:e6f55658649694343cee083e856edb50d0c90cd70a4a7b684117dae7365542c7` |
| 20 | `theorem` | [conductorThreeVaughanRight_l2_unconditional](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/conductorthreevaughanright-l2-unconditional--4eb53b0395fafaf84d1fa12d.md) | 266 | `result-track:4eb53b0395fafaf84d1fa12d20d0de93dba99a01f03211f864ac0afd41dc51e4` |
| 21 | `def` | [DivisorCountSubpolynomial](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/divisorcountsubpolynomial--9dcf002f4ba8f3b56bf200ed.md) | 287 | `declaration-track:9dcf002f4ba8f3b56bf200ed617cde8bc5efeb8cbd61c6271d672e543a46fd82` |
| 22 | `def` | [divisorCount_subpolynomial](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/divisorcount-subpolynomial--781fed2422851df7adabed16.md) | 297 | `declaration-track:781fed2422851df7adabed16940e05f4acb598aaa66149306b4f7444ee7ae8e4` |
| 23 | `theorem` | [blockRightCoefficient_norm_le_of_divisorCountSubpolynomial](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/blockrightcoefficient-norm-le-of-divisorcountsubpolynomial--499bc6b50436e15a7f8469ec.md) | 300 | `result-track:499bc6b50436e15a7f8469ecc4d0903c1198fff603ba6e646aa73d1a4a21c07a` |
| 24 | `theorem` | [conductorThreeVaughanRight_l2_of_divisorCountSubpolynomial](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/declarations/conductorthreevaughanright-l2-of-divisorcountsubpolynomial--26ddb696d41568750708d84f.md) | 337 | `result-track:26ddb696d41568750708d84f9976fd7c489a17cf19892cd7838e2069634142e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
