# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Div.Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "820aa1582432e233870bb60b99916ed5e9c72a18",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `820aa1582432e233870bb60b99916ed5e9c72a18`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Inductions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Monic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [X_dvd_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/x-dvd-iff--420ff423bd7d9195bbd68e44.md) | 38 | `result-track:420ff423bd7d9195bbd68e44839b41ea9c26b19d28969a1037bbef4eef74a720` |
| 2 | `theorem` | [X_pow_dvd_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/x-pow-dvd-iff--57cc28f2b049484cd8adcd12.md) | 44 | `result-track:57cc28f2b049484cd8adcd126e12b47b501a5ac28a493fac13edc214b24a75ae` |
| 3 | `theorem` | [multiplicity_finite_of_degree_pos_of_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/multiplicity-finite-of-degree-pos-of-monic--0b0a76abf191ce232e14dd64.md) | 65 | `result-track:0b0a76abf191ce232e14dd6483e020656041013052913bad850d7f27f9a22828` |
| 4 | `theorem` | [div_wf_lemma](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/div-wf-lemma--949c17d9586b893720220809.md) | 96 | `result-track:949c17d9586b8937202208099c9a78f8ef7cacb22af3793c1e7d02ae40fb6fbf` |
| 5 | `def` | [divModByMonicAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/divmodbymonicaux--e8fd797af733f1d7ed00a361.md) | 112 | `declaration-track:e8fd797af733f1d7ed00a36109cb52850af07ea232fa9d3f2a40a36aac352069` |
| 6 | `def` | [divByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/divbymonic--5163f965da8a1c64afb74fa2.md) | 124 | `declaration-track:5163f965da8a1c64afb74fa26e0970cee9ef1d1ca8445b15dcc485ded989de8e` |
| 7 | `def` | [modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/modbymonic--75fcfa890fb47f4d6f5d6b13.md) | 129 | `declaration-track:75fcfa890fb47f4d6f5d6b132dca6f745ab8b61d08ddcf796f7ef9077f1895cb` |
| 8 | `theorem` | [degree_modByMonic_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/degree-modbymonic-lt--4676e014b4ccd426f8c6988f.md) | 139 | `result-track:4676e014b4ccd426f8c6988fcce72245f8525ac612f610c359129262415f21cd` |
| 9 | `theorem` | [zero_modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/zero-modbymonic--8ffeb48298421ac0c7f2f9f2.md) | 170 | `result-track:8ffeb48298421ac0c7f2f9f2e4522bafb40794cb2c0a278f5ec8156b5e0b9b05` |
| 10 | `theorem` | [zero_divByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/zero-divbymonic--ef3481cc28d52339f1b15fee.md) | 179 | `result-track:ef3481cc28d52339f1b15fee623aaebdefe154c1df8a43475fe49bfab9c1ae11` |
| 11 | `theorem` | [modByMonic_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/modbymonic-zero--bdd7ae21bf4a030f710fd773.md) | 188 | `result-track:bdd7ae21bf4a030f710fd7737a83b3fe1648626ccc2caecf80a791880a7a2aec` |
| 12 | `theorem` | [divByMonic_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/divbymonic-zero--c9b3817f588a5a9bdc77cac7.md) | 196 | `result-track:c9b3817f588a5a9bdc77cac7c7c42ae10bedd09a8d495eccfb956c26601cdc38` |
| 13 | `theorem` | [divByMonic_eq_of_not_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/divbymonic-eq-of-not-monic--24d776081be9c35b559afb83.md) | 203 | `result-track:24d776081be9c35b559afb83f5541a61f6b4b3c0b421c55d0847cd05f8cc96fc` |
| 14 | `theorem` | [modByMonic_eq_of_not_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/modbymonic-eq-of-not-monic--6512e1964dfbfb747283fed6.md) | 207 | `result-track:6512e1964dfbfb747283fed6952b9d858651ed543334100739c1907086580dc6` |
| 15 | `theorem` | [modByMonic_eq_self_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/modbymonic-eq-self-iff--ed55a11b898bf2c992871cfc.md) | 211 | `result-track:ed55a11b898bf2c992871cfc5caa23c1eabb12ab505fab389c59e2851231fae1` |
| 16 | `theorem` | [degree_modByMonic_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/degree-modbymonic-le--2497ddfcad4a585e7ced6685.md) | 217 | `result-track:2497ddfcad4a585e7ced6685943e46fa75fa911752f5bc2289f3f52a06342191` |
| 17 | `theorem` | [modByMonic_eq_sub_mul_div](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/modbymonic-eq-sub-mul-div--010c425d30a46ddfc6b7fe38.md) | 228 | `result-track:010c425d30a46ddfc6b7fe387c527b2d37efb0bdd3640353743bf6543da17617` |
| 18 | `theorem` | [modByMonic_add_div](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/modbymonic-add-div--e7ac432789edde1d1b4793e6.md) | 249 | `result-track:e7ac432789edde1d1b4793e6557e9daaa81faf70c71c1c0ea6bc91ce0a87b158` |
| 19 | `theorem` | [divByMonic_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/divbymonic-eq-zero-iff--5c63a485d7478f1c51bd7b32.md) | 253 | `result-track:5c63a485d7478f1c51bd7b325327c4614e42a09bc545a4387b7c2177c839c778` |
| 20 | `theorem` | [degree_add_divByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/degree-add-divbymonic--edd0938d6c83363a044eb7f7.md) | 262 | `result-track:edd0938d6c83363a044eb7f722970dcc4efc8d9978513045971eb0afbdd51754` |
| 21 | `theorem` | [degree_divByMonic_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/degree-divbymonic-le--3ece7e34c021440f3ad5db46.md) | 281 | `result-track:3ece7e34c021440f3ad5db462aaa68d285fcc5ac4bad9e6672d9a6a517b5902e` |
| 22 | `theorem` | [degree_divByMonic_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/degree-divbymonic-lt--556ff13fb831e80ef6cd19fd.md) | 296 | `result-track:556ff13fb831e80ef6cd19fda4775bdfe4b8f4e7545ffa63daa50f04ef10edad` |
| 23 | `theorem` | [natDegree_divByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/natdegree-divbymonic--147294d1ce31237602acceed.md) | 312 | `result-track:147294d1ce31237602acceedd1daaff64b311473c75060ea55059590ff8bb8c8` |
| 24 | `theorem` | [div_modByMonic_unique](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/div-modbymonic-unique--0d2c5dd5c45c10fcd492807a.md) | 333 | `result-track:0d2c5dd5c45c10fcd492807a545633fa1d36a1720fb572716fbe8d22dce56e07` |
| 25 | `theorem` | [map_mod_divByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/map-mod-divbymonic--b53359c44752c10afd569c22.md) | 357 | `result-track:b53359c44752c10afd569c22c946b9a4d6c595758c0bd87858cb87b1e51c2ffc` |
| 26 | `theorem` | [map_divByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/map-divbymonic--31b208a318d6729aacc55a0c.md) | 374 | `result-track:31b208a318d6729aacc55a0ce003476ea6480e4e334bd5cc9e52cd342a0fac75` |
| 27 | `theorem` | [map_modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/map-modbymonic--2ff4df618d8b059913ce3b8d.md) | 379 | `result-track:2ff4df618d8b059913ce3b8dca8ee5ccdb0a34fd28b59e4523a97d17c2aca1eb` |
| 28 | `theorem` | [dvd_iff_modByMonic_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/dvd-iff-modbymonic-eq-zero--c8975874819f1ce022c84c0a.md) | 384 | `result-track:c8975874819f1ce022c84c0a33419d828a0841b44eb6ad5732d1ef4c3ea6d4aa` |
| 29 | `theorem` | [map_dvd_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/map-dvd-map--6dc08fba4b5fe44eaaafc0ff.md) | 401 | `result-track:6dc08fba4b5fe44eaaafc0ffa7614de249e84c629ff4d5fa8f6f2707e9d6058c` |
| 30 | `theorem` | [modByMonic_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/modbymonic-one--a794ad975c2dc035c3f8c90e.md) | 411 | `result-track:a794ad975c2dc035c3f8c90efc7b651762b0ea41986e9e37a1563955fd628499` |
| 31 | `theorem` | [divByMonic_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/divbymonic-one--2bb35b328d93ce5c27d4f1e3.md) | 416 | `result-track:2bb35b328d93ce5c27d4f1e33f0c93ab8577e72ac8b8a492d83f21429cad0376` |
| 32 | `theorem` | [modByMonic_X_sub_C_eq_C_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/modbymonic-x-sub-c-eq-c-eval--2d57e97ccfe31c5d40e7352f.md) | 421 | `result-track:2d57e97ccfe31c5d40e7352fc159377506b4191646549a76c472d5ceda1e045f` |
| 33 | `theorem` | [mul_divByMonic_eq_iff_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/mul-divbymonic-eq-iff-isroot--b066d9fc9983dd4783e879fa.md) | 438 | `result-track:b066d9fc9983dd4783e879fa8d349560ce2ce61c4161350dae8f9316f21539c7` |
| 34 | `theorem` | [dvd_iff_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/dvd-iff-isroot--b9840d54258023f226787a4b.md) | 447 | `result-track:b9840d54258023f226787a4bc08dd75529bd67033f27f8abfce4dd67488a00ab` |
| 35 | `theorem` | [X_sub_C_dvd_sub_C_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/x-sub-c-dvd-sub-c-eval--b0e830779e4edcdfb9d69170.md) | 454 | `result-track:b0e830779e4edcdfb9d691706113688545be12e5498a1c0d96fd5d6db24226d1` |
| 36 | `theorem` | [mem_span_C_X_sub_C_X_sub_C_iff_eval_eval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/mem-span-c-x-sub-c-x-sub-c-iff-eval-eval-eq-zero--28011559b4477e0009cf6343.md) | 459 | `result-track:28011559b4477e0009cf6343a94ce42fbed39cf824b9f03cf1eed74f6d9db4a9` |
| 37 | `theorem` | [modByMonic_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/modbymonic-x--0892caebe2dc3b36e3758e00.md) | 471 | `result-track:0892caebe2dc3b36e3758e00bb11af5772dff7bb3ea30450e896f4248ef2f7ff` |
| 38 | `theorem` | [eval₂_modByMonic_eq_self_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/eval-modbymonic-eq-self-of-root--6f6a16110a0070bb33848ba9.md) | 476 | `result-track:6f6a16110a0070bb33848ba94d25d430cba0445bde250013fb858f226320b80e` |
| 39 | `theorem` | [sum_modByMonic_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/sum-modbymonic-coeff--aea566907664a5630bbd3833.md) | 481 | `result-track:aea566907664a5630bbd38336fa89ebd625395cff6b89860104c652b1a0e8d2f` |
| 40 | `theorem` | [sub_dvd_eval_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/sub-dvd-eval-sub--c41bdbb00311ab49bab283da.md) | 489 | `result-track:c41bdbb00311ab49bab283da893866e39e4ebc3e0199f93a4c132148649da1f5` |
| 41 | `theorem` | [mul_div_mod_by_monic_cancel_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/mul-div-mod-by-monic-cancel-left--aa3e578dcf34468c67037826.md) | 495 | `result-track:aa3e578dcf34468c67037826713d74bd49ec0e832501aee0791b5ab062a8c62c` |
| 42 | `theorem` | [not_isField](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/not-isfield--2a829085733aca3fb432dcb8.md) | 505 | `result-track:2a829085733aca3fb432dcb834336eababca82a8b59d0df8a9dea5266343e294` |
| 43 | `theorem` | [ker_evalRingHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/ker-evalringhom--ed1ebe10de14243daf20be0c.md) | 519 | `result-track:ed1ebe10de14243daf20be0c0c37b9f39308ab461198c3430638ce1e69e56bb5` |
| 44 | `def` | [decidableDvdMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/decidabledvdmonic--11e7af2b8222ab2bada6e4c8.md) | 530 | `declaration-track:11e7af2b8222ab2bada6e4c80012ffcc60c53bc27b0dde5f407448cb36e1d173` |
| 45 | `theorem` | [multiplicity_X_sub_C_finite](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/multiplicity-x-sub-c-finite--382df8ec849872f5360372e8.md) | 534 | `result-track:382df8ec849872f5360372e86f8054bedcd3d29a89012ba4a9ecab04d75ad251` |
| 46 | `def` | [rootMultiplicity](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/rootmultiplicity--66e6e470d555fe71dad55f74.md) | 546 | `declaration-track:66e6e470d555fe71dad55f7413738119377a53c81175b0b350fc309b911083cc` |
| 47 | `theorem` | [rootMultiplicity_eq_nat_find_of_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/rootmultiplicity-eq-nat-find-of-nonzero--aeb3c70c7b4214cf1d38c354.md) | 558 | `result-track:aeb3c70c7b4214cf1d38c354d079b87a32e7d73fa5d58cb45ddebbd4dd1aae3b` |
| 48 | `theorem` | [rootMultiplicity_eq_multiplicity](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/rootmultiplicity-eq-multiplicity--6530dc0e30eb7827083273af.md) | 564 | `result-track:6530dc0e30eb7827083273afb27485f516152ed06d5120c2f00d74d162dcae15` |
| 49 | `theorem` | [rootMultiplicity_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/rootmultiplicity-zero--9c4f20d6bf8d01ce7c0616bb.md) | 571 | `result-track:9c4f20d6bf8d01ce7c0616bbcdecde75bbc522787e9fe454042ffd08beeb5017` |
| 50 | `theorem` | [rootMultiplicity_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/rootmultiplicity-eq-zero-iff--d591652942a02fe0b8f917db.md) | 576 | `result-track:d591652942a02fe0b8f917dbaac8494307061e9b27feb9653793b3ef2ed65463` |
| 51 | `theorem` | [rootMultiplicity_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/rootmultiplicity-eq-zero--4eb2fdb91357c1e138e07c1e.md) | 582 | `result-track:4eb2fdb91357c1e138e07c1e380eaded09cda47fdcf245f1a32ae3f20cbfa422` |
| 52 | `theorem` | [rootMultiplicity_pos'](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/rootmultiplicity-pos--e5bd495ac2e51abf767adf49.md) | 587 | `result-track:e5bd495ac2e51abf767adf498c74ac1d46fbce9f49cc6cefa6ad58285cc0471d` |
| 53 | `theorem` | [rootMultiplicity_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/rootmultiplicity-pos--85ba219b1bdfa0d8219585f6.md) | 591 | `result-track:85ba219b1bdfa0d8219585f6fe0c42063edce05d9d22db245c076a821c7c24fe` |
| 54 | `theorem` | [rootMultiplicity_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/rootmultiplicity-c--fb117a9ca6b802f2ff54ec15.md) | 597 | `result-track:fb117a9ca6b802f2ff54ec154f1ab640ad239f09c2347aa90e1aec90e748be5c` |
| 55 | `theorem` | [pow_rootMultiplicity_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/pow-rootmultiplicity-dvd--82791415e9f7d34826ac9a70.md) | 602 | `result-track:82791415e9f7d34826ac9a700f6d4ec2448170c686474cd53766da406ae68694` |
| 56 | `theorem` | [divByMonic_mul_pow_rootMultiplicity_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/divbymonic-mul-pow-rootmultiplicity-eq--ccaa0de4cf2151adf82d816a.md) | 608 | `result-track:ccaa0de4cf2151adf82d816abd0d6131c033007754384b123252eade600c1553` |
| 57 | `theorem` | [eval_divByMonic_pow_rootMultiplicity_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/declarations/eval-divbymonic-pow-rootmultiplicity-ne-zero--ee4e97b7cc394c28f1972e14.md) | 617 | `result-track:ee4e97b7cc394c28f1972e14646f1b2d227b4edbc81cbdb2fc6938e31175185d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
