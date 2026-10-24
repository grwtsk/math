# Verification target: GRWTSK.Algebra.GroupTheory.Iterate.Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c88c0f675dc390fe0dbc16c31555a77c59956647",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c88c0f675dc390fe0dbc16c31555a77c59956647`.

Source path: `GRWTSK/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Opposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hom_coe_pow](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/hom-coe-pow--b9bd620e64c659028ff75d72.md) | 42 | `result-track:b9bd620e64c659028ff75d7267858b257cef156eb8529988877e7476d95ed81a` |
| 2 | `theorem` | [iterate_map_mul](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-mul--66cbc1bfa700b5f372458f26.md) | 51 | `result-track:66cbc1bfa700b5f372458f26f78c069d69131ede27681daa93716ef294822d8f` |
| 3 | `theorem` | [iterate_map_one](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-one--41efeb51e9e6292bfb82450d.md) | 63 | `result-track:41efeb51e9e6292bfb82450d444b65cf1eef550e4a234982de6f875e38a6ede0` |
| 4 | `theorem` | [iterate_map_inv](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-inv--e1fe6c6325a817e39d5a2c82.md) | 73 | `result-track:e1fe6c6325a817e39d5a2c827e5077150cceeadaa9f7c0652b0a1469cec30f62` |
| 5 | `theorem` | [iterate_map_div](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-div--383d5ea6d18052225c1fb236.md) | 79 | `result-track:383d5ea6d18052225c1fb2363304c8bd7db82f0eb96800b4565c57eebfd9741f` |
| 6 | `theorem` | [iterate_map_pow](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-pow--d34abec81b3d71fd059ee88d.md) | 84 | `result-track:d34abec81b3d71fd059ee88df8dce168e0d6ff59d8146a95fcf8f24bd111d2a8` |
| 7 | `theorem` | [iterate_map_zpow](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-zpow--bdb51c636bbb6340fb65cdd7.md) | 88 | `result-track:bdb51c636bbb6340fb65cdd74f6415f0843810e19e4fcf639dfc897f9773f348` |
| 8 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/coe-pow--08f63110da0df1fae9b5a3de.md) | 92 | `result-track:08f63110da0df1fae9b5a3def5f1fd0a1d8e57eca6d0f0d20590a72b0e600b0c` |
| 9 | `theorem` | [Monoid.End.coe_pow](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/monoid-end-coe-pow--268b5a7eb35be06d62ee0f94.md) | 98 | `result-track:268b5a7eb35be06d62ee0f948f7f5b2be02859899348969e49c3ef85362dcced` |
| 10 | `theorem` | [iterate_map_smul](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-smul--b9d2ecd8dccd89872c7b47aa.md) | 107 | `result-track:b9d2ecd8dccd89872c7b47aa70b5d64e1f6c022c68e7102aca3e9e8ca608545c` |
| 11 | `theorem` | [iterate_map_zsmul](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-zsmul--8c8edf9e098b567fd98c0fe6.md) | 114 | `result-track:8c8edf9e098b567fd98c0fe6a5f1edddceba2d4c431d4c3e35ce4978869f2192` |
| 12 | `theorem` | [AddMonoid.End.coe_pow](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/addmonoid-end-coe-pow--6c756b860b86c19eebf2fc0d.md) | 122 | `result-track:6c756b860b86c19eebf2fc0d3103a3e6dcf6335f77df386f7557d351285fb729` |
| 13 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/coe-pow--de2983944950f4d72abafd74.md) | 132 | `result-track:de2983944950f4d72abafd74d3f352ee07e8064ef7916bcfd665de861d155508` |
| 14 | `theorem` | [iterate_map_one](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-one--1f204d414ec27a1c91f4c845.md) | 136 | `result-track:1f204d414ec27a1c91f4c84544c3586da701fa716c0d94cece0abe96c7567ce4` |
| 15 | `theorem` | [iterate_map_zero](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-zero--f5923d25c9640177f7de9a85.md) | 140 | `result-track:f5923d25c9640177f7de9a850dbbd1eed9059aa2aa2e0fa0ecb6ce9e3eaa5ce7` |
| 16 | `theorem` | [iterate_map_pow](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-pow--d19b599ac952c670496e8b00.md) | 144 | `result-track:d19b599ac952c670496e8b007b014640bdfd7755cbe4387059f59ea94c6c26fc` |
| 17 | `theorem` | [iterate_map_smul](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-smul--b48e83ef9e21a634cad569c2.md) | 148 | `result-track:b48e83ef9e21a634cad569c27cbc1cdac011b56fa20f97e4ed24b4595241e017` |
| 18 | `theorem` | [iterate_map_sub](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-sub--f5c0489c7c7a04147cc520ec.md) | 156 | `result-track:f5c0489c7c7a04147cc520ecf89713e35c641cbbdfd69b6c30f31c33dfe67b8c` |
| 19 | `theorem` | [iterate_map_neg](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-neg--ff6e0b9cc795865ac6811563.md) | 160 | `result-track:ff6e0b9cc795865ac6811563d1b4b864d691445f7e7a5cddd492d10ef2e66793` |
| 20 | `theorem` | [iterate_map_zsmul](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/iterate-map-zsmul--3328daec35c9df59987af5b9.md) | 164 | `result-track:3328daec35c9df59987af5b943b872856f1c9169b8dbe1f8d857ec141df1dfd8` |
| 21 | `theorem` | [smul_iterate](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/smul-iterate--18523f1518cfd92b58033c5d.md) | 176 | `result-track:18523f1518cfd92b58033c5d17274b3072368411d36be7010754389739d6a696` |
| 22 | `theorem` | [mul_left_iterate](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/mul-left-iterate--cdd0cb0715aecb0922230a0f.md) | 184 | `result-track:cdd0cb0715aecb0922230a0f26f22b5bd20595f6a38ff41b6b2e050bcabe0281` |
| 23 | `theorem` | [mul_right_iterate](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/mul-right-iterate--004b14a333e4a0f82e75e0cc.md) | 190 | `result-track:004b14a333e4a0f82e75e0ccf85dd39f206db4af411cb158b01b3dec3d057d27` |
| 24 | `theorem` | [mul_right_iterate_apply_one](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/mul-right-iterate-apply-one--6bee422ab8e302b0e9e7a4dd.md) | 196 | `result-track:6bee422ab8e302b0e9e7a4ddb040f0461ab5a11a01f7baef1318ee0f3679b5e1` |
| 25 | `theorem` | [pow_iterate](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/pow-iterate--2b180e8e321022b9b451fc9f.md) | 201 | `result-track:2b180e8e321022b9b451fc9f990c92535f2f67e59c067fbc27cc291976bb499c` |
| 26 | `theorem` | [zpow_iterate](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/zpow-iterate--573567988ce320096fb31625.md) | 217 | `result-track:573567988ce320096fb31625a02fd47429a3a364d30c25d5171752447fc9f5b7` |
| 27 | `theorem` | [SemiconjBy.function_semiconj_mul_left](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/semiconjby-function-semiconj-mul-left--99294e10a15e8d20ce141bba.md) | 235 | `result-track:99294e10a15e8d20ce141bba48f092ef2240ae0fdb203e573de311920696f87b` |
| 28 | `theorem` | [Commute.function_commute_mul_left](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/commute-function-commute-mul-left--ce77045579b83a8e746d7839.md) | 242 | `result-track:ce77045579b83a8e746d783921048f9eb9b8e13affcb0bf1313ffe41b3a239c4` |
| 29 | `theorem` | [SemiconjBy.function_semiconj_mul_right_swap](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/semiconjby-function-semiconj-mul-right-swap--6862df42f2d23126d5886739.md) | 249 | `result-track:6862df42f2d23126d5886739d630d5149b876a68f8926ab0d66429d530248e3d` |
| 30 | `theorem` | [Commute.function_commute_mul_right](../../../../../mathematics/Algebra/GroupTheory/Iterate/Varianta68990299e1f859ec8e79016c90e07808411d915f93cbb4621a57797426645e3.lean/declarations/commute-function-commute-mul-right--a9a47ed6963c42f9a96b6a33.md) | 255 | `result-track:a9a47ed6963c42f9a96b6a3363fff8b30b2c6d5ba1449fbfd222d5c3cc6ed825` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
