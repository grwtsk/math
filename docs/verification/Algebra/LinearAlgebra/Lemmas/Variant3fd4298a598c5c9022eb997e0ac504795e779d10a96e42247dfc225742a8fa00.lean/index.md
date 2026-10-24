# Verification target: GRWTSK.Algebra.LinearAlgebra.Lemmas.Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a436583ef69ee61f87fc7e9c264c8eec5d88e12",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a436583ef69ee61f87fc7e9c264c8eec5d88e12`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Base` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.CanonicalBilinear` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Reduced` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Irreducible` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [coxeterWeightIn_le_four](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/coxeterweightin-le-four--cc7ca48c39970d0204ef252a.md) | 46 | `result-track:cc7ca48c39970d0204ef252ac9ee39f521fb424a7afbab069c17264eae90034b` |
| 2 | `lemma` | [coxeterWeightIn_mem_set_of_isCrystallographic](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/coxeterweightin-mem-set-of-iscrystallographic--1629b7c403b516e4bc59a375.md) | 79 | `result-track:1629b7c403b516e4bc59a375174da270197faf6018ed247f95230cd2dbffc72b` |
| 3 | `lemma` | [pairingIn_pairingIn_mem_set_of_isCrystallographic](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/pairingin-pairingin-mem-set-of-iscrystallographic--dee875ee8cdb27df7b240953.md) | 94 | `result-track:dee875ee8cdb27df7b2409531dc7c1db4e0d8aa51d66fa8057b02c0d914d87cf` |
| 4 | `lemma` | [pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/pairingin-pairingin-mem-set-of-iscrystal-of-isred--c11b29807be81cb8e9668f19.md) | 102 | `result-track:c11b29807be81cb8e9668f198d9b680750f8704fa8bffcb63be9620e88af3a96` |
| 5 | `lemma` | [pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed'](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/pairingin-pairingin-mem-set-of-iscrystal-of-isred--c89df97daed2b9314d0b3742.md) | 113 | `result-track:c89df97daed2b9314d0b374259c87a48566253aac8dfc07a76697d52a9d5c113` |
| 6 | `lemma` | [RootPositiveForm.rootLength_le_of_pairingIn_eq](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/rootpositiveform-rootlength-le-of-pairingin-eq--e74e4b7eaf6be0c42ae95a0f.md) | 123 | `result-track:e74e4b7eaf6be0c42ae95a0f9f0e3c2ff36e8c95b3569a781b1655be56b1106e` |
| 7 | `lemma` | [RootPositiveForm.rootLength_lt_of_pairingIn_notMem](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/rootpositiveform-rootlength-lt-of-pairingin-notmem--dac2a699f94180a50406c29a.md) | 137 | `result-track:dac2a699f94180a50406c29ad51c52786b9ccb4072315a37478352e1eb5ab963` |
| 8 | `lemma` | [pairingIn_pairingIn_mem_set_of_length_eq](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/pairingin-pairingin-mem-set-of-length-eq--d30e13856dde31a7093f1835.md) | 160 | `result-track:d30e13856dde31a7093f1835b9dc23f1352e5f01914e524abdadab4c5bccb4f1` |
| 9 | `lemma` | [pairingIn_pairingIn_mem_set_of_length_eq_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/pairingin-pairingin-mem-set-of-length-eq-of-ne--013bc5cf44880eff274f8957.md) | 171 | `result-track:013bc5cf44880eff274f89570d4a87ae4615090c794a1c68cd504b161b71c553` |
| 10 | `lemma` | [coxeterWeightIn_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/coxeterweightin-eq-zero-iff--88d780bbfec4557a8cff4537.md) | 180 | `result-track:88d780bbfec4557a8cff4537bc2565e1ba362b9a7abd7dc6b19b17ffcd4a7ad7` |
| 11 | `lemma` | [root_sub_root_mem_of_pairingIn_pos](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/root-sub-root-mem-of-pairingin-pos--f020bc4a6c9b9788baba35cc.md) | 190 | `result-track:f020bc4a6c9b9788baba35cc2f282ecf98bbc4bb65ed5dcf4a27dfeaab036a81` |
| 12 | `lemma` | [root_add_root_mem_of_pairingIn_neg](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/root-add-root-mem-of-pairingin-neg--363cac2ab7236290e5f0989e.md) | 231 | `result-track:363cac2ab7236290e5f0989e491594ada3e6861a3d2d85668bce3895bc128a80` |
| 13 | `lemma` | [root_mem_submodule_iff_of_add_mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/root-mem-submodule-iff-of-add-mem-invtsubmodule--9326187505bf949695d36492.md) | 239 | `result-track:9326187505bf949695d36492e16c29c6d8fe1e81818c4bf9d0ee1ee2395c9795` |
| 14 | `lemma` | [apply_eq_or_aux](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/apply-eq-or-aux--6c15977b7712f8e814152807.md) | 266 | `result-track:6c15977b7712f8e814152807932fd5ff1666575d604a875fb7bee334e95f1e9a` |
| 15 | `lemma` | [apply_eq_or](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/apply-eq-or--f4dd734d0bb722eaee023374.md) | 283 | `result-track:f4dd734d0bb722eaee023374351e50e29a6c36975892a31a9d98cb3f1295b18f` |
| 16 | `theorem` | [exists_apply_eq_or_aux](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/exists-apply-eq-or-aux--0c96b1f85178ca13fa70cede.md) | 295 | `result-track:0c96b1f85178ca13fa70cede625fa3c08b646f10cf06544aa9ae382256e378f9` |
| 17 | `lemma` | [exists_apply_eq_or](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/exists-apply-eq-or--24b43a4719682053e3c9e3a5.md) | 317 | `result-track:24b43a4719682053e3c9e3a59e5a6cdb8f10ea726a909b9e7bca4ad8241de588` |
| 18 | `lemma` | [apply_eq_or_of_apply_ne](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/apply-eq-or-of-apply-ne--e7b2e5ce568684ae049ef09d.md) | 334 | `result-track:e7b2e5ce568684ae049ef09dfa96c7892add8502afa8b88aa8a53d4875965d7c` |
| 19 | `lemma` | [forall_pairing_eq_swap_or](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/forall-pairing-eq-swap-or--ea8c1aa34caa545d4fe3d520.md) | 347 | `result-track:ea8c1aa34caa545d4fe3d52029abd1990c8895703598ff3184e98fd744be3399` |
| 20 | `lemma` | [forall_pairingIn_eq_swap_or](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/forall-pairingin-eq-swap-or--f0e2799526e7de1e097aa9f2.md) | 379 | `result-track:f0e2799526e7de1e097aa9f253973e3e3676a1616cbdaf4a45848e9e10fbb950` |
| 21 | `lemma` | [pairingIn_le_zero_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/pairingin-le-zero-of-ne--e39f71fd897ee2525dc79b80.md) | 396 | `result-track:e39f71fd897ee2525dc79b807b154588419d2e4d4f0df49e2337408f223f3822` |
| 22 | `lemma` | [root_sub_root_mem_of_mem_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/root-sub-root-mem-of-mem-of-mem--cfe62305eb74552e59eb6a6a.md) | 402 | `result-track:cfe62305eb74552e59eb6a6a67817a9d9e7e9d86ef95b141f3576eef518537bd` |
| 23 | `lemma` | [root_add_root_mem_of_mem_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/declarations/root-add-root-mem-of-mem-of-mem--da8332a6545b2d02942e7b26.md) | 451 | `result-track:da8332a6545b2d02942e7b2680886c994e6a95994a16374a43b39d40b5054627` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
