# Verification target: GRWTSK.Algebra.GroupTheory.Alternating.Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15003ab1be16403bcf301bc4f5118234b4738b9a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15003ab1be16403bcf301bc4f5118234b4738b9a`.

Source path: `GRWTSK/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.CharZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.IndexNormal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Fin` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Simple` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/example--8ca1085f27b33cca5451ca41.md) | 57 | `declaration-track:8ca1085f27b33cca5451ca41481657cc7f7f794a938b68fe3183cc4013a08430` |
| 2 | `def` | [alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/alternatinggroup--ca28394d6bd3fc214697c8bd.md) | 66 | `declaration-track:ca28394d6bd3fc214697c8bdb269177287b961cbf7ca6e1e640df9aa9ed2db3f` |
| 3 | `instance` | [alternatingGroup.instFintype](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/alternatinggroup-instfintype--9e7056cc86f9793853358995.md) | 69 | `declaration-track:9e7056cc86f9793853358995bdca6138a3cb2873b55398d3974f7c622080c7b2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/instance--c7c5ed0f6e1d434b472eb984.md) | 72 | `declaration-track:c7c5ed0f6e1d434b472eb9849a31075328011bfc447354cd1acd26b78a25e11d` |
| 5 | `theorem` | [alternatingGroup_eq_sign_ker](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/alternatinggroup-eq-sign-ker--578b0bb0c3cd869a08da5019.md) | 77 | `result-track:578b0bb0c3cd869a08da501906cd78060112f67dbdf27deca18d0d2021727430` |
| 6 | `theorem` | [mem_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/mem-alternatinggroup--69091f16aee4940881970616.md) | 83 | `result-track:69091f16aee49408819706165821aa4da8e0a8f5ad519396c348fb39cbffdc01` |
| 7 | `theorem` | [prod_list_swap_mem_alternatingGroup_iff_even_length](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/prod-list-swap-mem-alternatinggroup-iff-even-length--77276700ae62da4c324bd0b3.md) | 86 | `result-track:77276700ae62da4c324bd0b3f0c390c4654dbc754eea012951668adef928f673` |
| 8 | `theorem` | [IsThreeCycle.mem_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/isthreecycle-mem-alternatinggroup--247e762b800d5734ed2de1b4.md) | 91 | `result-track:247e762b800d5734ed2de1b4f9826dbb6d9748b16c8b7b8b1570d821846d1ca0` |
| 9 | `theorem` | [finRotate_bit1_mem_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/finrotate-bit1-mem-alternatinggroup--ba69f3fc0bd59db508fe062f.md) | 95 | `result-track:ba69f3fc0bd59db508fe062fe43f751d75b3174a58d3937d406ddeda6bf93405` |
| 10 | `theorem` | [alternatingGroup.index_eq_two](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/alternatinggroup-index-eq-two--db84fb38ba04018b4bd5613d.md) | 102 | `result-track:db84fb38ba04018b4bd5613d0f75fbd7ba370e8e813c91fd05ccf0aa153b648c` |
| 11 | `theorem` | [alternatingGroup.index_eq_one](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/alternatinggroup-index-eq-one--e62cae8350b00216da36d2fd.md) | 108 | `result-track:e62cae8350b00216da36d2fdb474bb4c165dfcacf76d31b05c86c446aeddbced` |
| 12 | `theorem` | [two_mul_card_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/two-mul-card-alternatinggroup--08ec55e796743732e7909372.md) | 111 | `result-track:08ec55e796743732e7909372b48ac0853546625e526926aad291eef2e6a3c257` |
| 13 | `instance` | [normal](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/normal--bee551721d34ed4db8bcb1e9.md) | 119 | `declaration-track:bee551721d34ed4db8bcb1e956de305391b3a1a6787f2c4f850d381b2adfe8a2` |
| 14 | `theorem` | [isConj_of](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/isconj-of--6b130fb053c496febe55d02c.md) | 122 | `result-track:6b130fb053c496febe55d02c7fbc033f92c0b2c74968db89284111960eca03de` |
| 15 | `theorem` | [isThreeCycle_isConj](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/isthreecycle-isconj--a3049b99662d53a3c039c826.md) | 146 | `result-track:a3049b99662d53a3c039c82637c46053a6a75ca6c6e7eeae9364719912c71aa0` |
| 16 | `theorem` | [closure_three_cycles_eq_alternating](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/closure-three-cycles-eq-alternating--2a35f35ab8dc6f19e41f387b.md) | 158 | `result-track:2a35f35ab8dc6f19e41f387b6594ff55879bfdc7234bbd890bbe021db95aaa6b` |
| 17 | `theorem` | [IsThreeCycle.alternating_normalClosure](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/isthreecycle-alternating-normalclosure--1a68aa15413a31c4e895720f.md) | 185 | `result-track:1a68aa15413a31c4e895720f888b0bb4ded5d7390ccdc759baf243f4d418cbeb` |
| 18 | `theorem` | [isThreeCycle_sq_of_three_mem_cycleType_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/isthreecycle-sq-of-three-mem-cycletype-five--4e6037ab55c1d818c0b484ba.md) | 203 | `result-track:4e6037ab55c1d818c0b484ba044f7e46972c90797ef881d5f61a9911dafbebba` |
| 19 | `theorem` | [eq_bot_of_card_le_two](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/eq-bot-of-card-le-two--0270c18f2abdd4d2e52ae941.md) | 224 | `result-track:0270c18f2abdd4d2e52ae94172c59b16895533f11ac6dcf906afa725727bd774` |
| 20 | `theorem` | [nontrivial_of_three_le_card](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/nontrivial-of-three-le-card--e4179136e01b83930cb63a95.md) | 232 | `result-track:e4179136e01b83930cb63a9579af0d8771dfdc3d47e2b5221e27f22bf0fc56a6` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/instance--a214e37649f8ddf59cfe3bfb.md) | 239 | `declaration-track:a214e37649f8ddf59cfe3bfbb75fe8918b5a2b16f25732dd10c9333c272e6189` |
| 22 | `theorem` | [normalClosure_finRotate_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/normalclosure-finrotate-five--8d88c2546536b05d4857f5eb.md) | 247 | `result-track:8d88c2546536b05d4857f5eb271b14cfc709337d83ff0694d6720482de511e70` |
| 23 | `theorem` | [normalClosure_swap_mul_swap_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/normalclosure-swap-mul-swap-five--7e0c7b9f100f95055de0f311.md) | 268 | `result-track:7e0c7b9f100f95055de0f311112171904e4a6608ea08ee4d581c0ec6ee5e4439` |
| 24 | `theorem` | [isConj_swap_mul_swap_of_cycleType_two](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/isconj-swap-mul-swap-of-cycletype-two--cc32753f0d6035d94eb79b84.md) | 290 | `result-track:cc32753f0d6035d94eb79b840a193458aed83173e6c6a32fd9b77e418adb6147` |
| 25 | `instance` | [isSimpleGroup_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/issimplegroup-five--b48475ec9b9d71a9abbf3a7b.md) | 317 | `declaration-track:b48475ec9b9d71a9abbf3a7b23f8bd5db378aba611932d3bf1923875f8474a84` |
| 26 | `theorem` | [eq_alternatingGroup_of_index_eq_two](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/eq-alternatinggroup-of-index-eq-two--1c2fbdb1c742d89cc40706cd.md) | 372 | `result-track:1c2fbdb1c742d89cc40706cdd45de1bc741363506da7e7203e2f9930516f9a21` |
| 27 | `theorem` | [alternatingGroup_le_of_index_le_two](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/alternatinggroup-le-of-index-le-two--c4678f18a43f19c37cbc0268.md) | 388 | `result-track:c4678f18a43f19c37cbc0268c4200c53097ed0930fd6b1098dcfec9976127aa5` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/declarations/instance--89c009a34697d5feae704cec.md) | 400 | `declaration-track:89c009a34697d5feae704cec52fd933d47fd1d0ad49e9e69b9d368a6aa75ee8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
