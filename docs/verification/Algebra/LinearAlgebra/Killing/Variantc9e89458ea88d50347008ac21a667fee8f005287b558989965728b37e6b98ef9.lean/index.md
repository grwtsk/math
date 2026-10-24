# Verification target: GRWTSK.Algebra.LinearAlgebra.Killing.Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78eb1326304ce4be9aa8b6d287ead692c0a10f83",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78eb1326304ce4be9aa8b6d287ead692c0a10f83`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Derivation.Killing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Killing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Sl2` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Weights.Chain` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Semisimple` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.JordanChevalley` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [restrict_killingForm](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/restrict-killingform--cf48813caf522196564d6118.md) | 41 | `result-track:cf48813caf522196564d611823af01959cf4e391e9873f625daf824860eb6acb` |
| 2 | `lemma` | [ker_restrict_eq_bot_of_isCartanSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/ker-restrict-eq-bot-of-iscartansubalgebra--b6590a07947a0875f184de6b.md) | 51 | `result-track:b6590a07947a0875f184de6b1f4681eaf1ff5fa09d23a4eb118579070e4005ca` |
| 3 | `lemma` | [ker_traceForm_eq_bot_of_isCartanSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/ker-traceform-eq-bot-of-iscartansubalgebra--329c2f04e2113e3c55c79dbf.md) | 65 | `result-track:329c2f04e2113e3c55c79dbfb18a5653070f532fd2fbeb07bcd2cf002e97afce` |
| 4 | `lemma` | [traceForm_cartan_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/traceform-cartan-nondegenerate--2b28809c386fa30f2e4b572a.md) | 70 | `result-track:2b28809c386fa30f2e4b572a941eb3794f515277475605c40e71b7b6b0181b40` |
| 5 | `instance` | [instIsLieAbelianOfIsCartanSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/instislieabelianofiscartansubalgebra--550482e5880fefa7c27c726c.md) | 77 | `declaration-track:550482e5880fefa7c27c726c7606a293e11b67f5d0e005c3f0a0a02650592ed4` |
| 6 | `lemma` | [killingForm_apply_eq_zero_of_mem_rootSpace_of_add_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/killingform-apply-eq-zero-of-mem-rootspace-of-add-ne-zero--1e069fae65d6b0ac1f605f02.md) | 98 | `result-track:1e069fae65d6b0ac1f605f021919b95a5d250301b50912f4563c0fb4c5cc907f` |
| 7 | `lemma` | [mem_ker_killingForm_of_mem_rootSpace_of_forall_rootSpace_neg](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/mem-ker-killingform-of-mem-rootspace-of-forall-rootspace-neg--ac1f8e6509c558d40bef7edd.md) | 122 | `result-track:ac1f8e6509c558d40bef7edd1b11f2909a68f565b9869199d5024049f091c18a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/instance--17e87e0f3b02f76f21e0c2c8.md) | 153 | `declaration-track:17e87e0f3b02f76f21e0c2c86ab73eb4c278ce414c0855896152915f9d99f6fb` |
| 9 | `lemma` | [coe_neg](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/coe-neg--956985e228573f927adbc14f.md) | 165 | `result-track:956985e228573f927adbc14f9434bd62e209def510e36e288e26ec3b4c9c304b` |
| 10 | `lemma` | [IsZero.neg](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/iszero-neg--3eba6023ce3b8554d86ac599.md) | 167 | `result-track:3eba6023ce3b8554d86ac5992540eef11025675155ec52fad491e5d311369a78` |
| 11 | `lemma` | [isZero_neg](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/iszero-neg--4c0fb1d36133fd73b460cbe6.md) | 169 | `result-track:4c0fb1d36133fd73b460cbe62ff47484a230c773e484966ad0b0c689eaa0ff03` |
| 12 | `lemma` | [IsNonZero.neg](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/isnonzero-neg--26a07ab3ee06447bc26c8a4e.md) | 171 | `result-track:26a07ab3ee06447bc26c8a4efe1c44c8eed5c1bb428920e59f55b0a8a4abb3ba` |
| 13 | `lemma` | [isNonZero_neg](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/isnonzero-neg--5233523ee83779c3e635a81e.md) | 173 | `result-track:5233523ee83779c3e635a81e1925ec97f973c8ed798aab5f82a795f5341e57ad` |
| 14 | `lemma` | [toLinear_neg](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/tolinear-neg--31d87cf6b3312658408de10a.md) | 175 | `result-track:31d87cf6b3312658408de10a41002dcc091301b1ac418f7aa3914261e7fdb9cb` |
| 15 | `lemma` | [eq_zero_of_isNilpotent_ad_of_mem_isCartanSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/eq-zero-of-isnilpotent-ad-of-mem-iscartansubalgebra--3396d58628685c01ca0bd32d.md) | 197 | `result-track:3396d58628685c01ca0bd32d89ee79da27cd906a685ac1ae65c7828b8eb1ecaa` |
| 16 | `lemma` | [corootSpace_zero_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/corootspace-zero-eq-bot--c24d27312ebc6feb2dcc6265.md) | 210 | `result-track:c24d27312ebc6feb2dcc6265f085d65eb829e3ba581632e110f373dcdba42702` |
| 17 | `def` | [cartanEquivDual](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/cartanequivdual--ff8fc25964fcf35c2fe4e2ee.md) | 224 | `declaration-track:ff8fc25964fcf35c2fe4e2eefc611a567d8c3e0a462c38996fd929f3d597a1e9` |
| 18 | `def` | [coroot](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/coroot--a954a9585a4a2ba15f2b0c64.md) | 231 | `declaration-track:a954a9585a4a2ba15f2b0c640187418fefd74802a056a3423bf44d9559f28069` |
| 19 | `lemma` | [traceForm_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/traceform-coroot--bf3b24948411d394333e9a37.md) | 234 | `result-track:bf3b24948411d394333e9a37f36264e07687ea89046afd9ebf623b7f2e79f251` |
| 20 | `lemma` | [coroot_neg](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/coroot-neg--26b6fe033b87c12fdb9b6346.md) | 241 | `result-track:26b6fe033b87c12fdb9b6346b6d12c0b0c1415b5fe3b0698c249cd27b60a468d` |
| 21 | `lemma` | [lie_eq_killingForm_smul_of_mem_rootSpace_of_mem_rootSpace_neg_aux](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/lie-eq-killingform-smul-of-mem-rootspace-of-mem-rootspace-neg-aux--4977919607de2809d39caa6c.md) | 247 | `result-track:4977919607de2809d39caa6cca4775988e771f3ff3ce7f28fe1951c5e11c4cd1` |
| 22 | `lemma` | [cartanEquivDual_symm_apply_mem_corootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/cartanequivdual-symm-apply-mem-corootspace--cd2c943eac9ff24911a8dc8c.md) | 267 | `result-track:cd2c943eac9ff24911a8dc8c63174ef3e9a227708c52d3c20cce7ee3c52a0ba0` |
| 23 | `lemma` | [span_weight_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/span-weight-eq-top--afd45e073fd7e420750c55ee.md) | 282 | `result-track:afd45e073fd7e420750c55ee4cc0ba244db0ddaf41c5d1608929a2cdf71c30d0` |
| 24 | `lemma` | [span_weight_isNonZero_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/span-weight-isnonzero-eq-top--7841d0edafafb9d9b8ad9af1.md) | 290 | `result-track:7841d0edafafb9d9b8ad9af1939d31395d3a2e7d76002e19a77e68feec21f5f8` |
| 25 | `lemma` | [iInf_ker_weight_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/iinf-ker-weight-eq-bot--bd1194f54a7d60cc50b68712.md) | 302 | `result-track:bd1194f54a7d60cc50b6871258ccafbc06b802492162e4cd8e7e60750c2606d9` |
| 26 | `lemma` | [isSemisimple_ad_of_mem_isCartanSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/issemisimple-ad-of-mem-iscartansubalgebra--370c6b63acf8ea26e4d8971b.md) | 313 | `result-track:370c6b63acf8ea26e4d8971b5830c026cea6c2caa705ceafc8babd1d0a2d6f38` |
| 27 | `lemma` | [lie_eq_smul_of_mem_rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/lie-eq-smul-of-mem-rootspace--2311cae2dbd559c4f8b01e24.md) | 369 | `result-track:2311cae2dbd559c4f8b01e2403432488a9ffd187bac12fe968a7f54fc4a5ef7f` |
| 28 | `lemma` | [lie_eq_killingForm_smul_of_mem_rootSpace_of_mem_rootSpace_neg](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/lie-eq-killingform-smul-of-mem-rootspace-of-mem-rootspace-neg--1c50489211d15dc5f373e8d7.md) | 378 | `result-track:1c50489211d15dc5f373e8d77b42f75e7c2ffdfbbe2743353068768629f474f4` |
| 29 | `lemma` | [coe_corootSpace_eq_span_singleton'](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/coe-corootspace-eq-span-singleton--110a070b98baf08370f04c0b.md) | 384 | `result-track:110a070b98baf08370f04c0b8494c378116123bbc58771eeda2db8a7523333bd` |
| 30 | `lemma` | [eq_zero_of_apply_eq_zero_of_mem_corootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/eq-zero-of-apply-eq-zero-of-mem-corootspace--080f5da04a82383f2c201ace.md) | 414 | `result-track:080f5da04a82383f2c201acec1ecbca19361093b33b8c1e53b0c019163a08705` |
| 31 | `lemma` | [disjoint_ker_weight_corootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/disjoint-ker-weight-corootspace--facf1e7cfb610c5819cb6221.md) | 425 | `result-track:facf1e7cfb610c5819cb622138b74b33151eeb16d423bb3663b49b2d3f89df0e` |
| 32 | `lemma` | [root_apply_cartanEquivDual_symm_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/root-apply-cartanequivdual-symm-ne-zero--3e45a2ba6649841d4a75b3b3.md) | 432 | `result-track:3e45a2ba6649841d4a75b3b3bf7e6afb6956cb972b5145c44bdb44c64c7d9839` |
| 33 | `lemma` | [root_apply_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/root-apply-coroot--43a4f8686db188b5c60c3444.md) | 440 | `result-track:43a4f8686db188b5c60c34446d9523b6ba1f8e4ec5e3f2284656923d1d449f93` |
| 34 | `lemma` | [coroot_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/coroot-eq-zero-iff--1be2bf3d80fcb17f191c1ec5.md) | 445 | `result-track:1be2bf3d80fcb17f191c1ec53dd1920c41bb5d9e6c8c82ed0b51a2b0fec52e72` |
| 35 | `lemma` | [coroot_zero](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/coroot-zero--c7599b9a7d7fc83ec0164aa2.md) | 453 | `result-track:c7599b9a7d7fc83ec0164aa29490d635f6477b55777ac31b143822684eb33539` |
| 36 | `lemma` | [coe_corootSpace_eq_span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/coe-corootspace-eq-span-singleton--f1aab4f696c3db1cdc5fe35e.md) | 455 | `result-track:f1aab4f696c3db1cdc5fe35e9289a302ed5f5e3dc4fdaa25ed5e33c23298adc5` |
| 37 | `lemma` | [corootSpace_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/corootspace-eq-bot-iff--02a17492014ee9f48b95d27f.md) | 467 | `result-track:02a17492014ee9f48b95d27f363eda3df67be3fa4463415ad52628de603cc9f3` |
| 38 | `lemma` | [isCompl_ker_weight_span_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/iscompl-ker-weight-span-coroot--010cabad8ebf04a84bb66230.md) | 471 | `result-track:010cabad8ebf04a84bb662303b9fff6e3f5145a8dcdfd4b729d99267f6e85059` |
| 39 | `lemma` | [traceForm_eq_zero_of_mem_ker_of_mem_span_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/traceform-eq-zero-of-mem-ker-of-mem-span-coroot--61da98d32449fea18d25c7f7.md) | 483 | `result-track:61da98d32449fea18d25c7f79307ced25159847da702ffe30120427cb9cfce67` |
| 40 | `lemma` | [orthogonal_span_coroot_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/orthogonal-span-coroot-eq-ker--943c7ffaf0dffd24a28a8723.md) | 498 | `result-track:943c7ffaf0dffd24a28a87235266bfb6e3f627d57b00a88cb42e084f36943365` |
| 41 | `lemma` | [coroot_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/coroot-eq-iff--0fc9b69832bf5edf37f9385e.md) | 514 | `result-track:0fc9b69832bf5edf37f9385e5225e5a2e226fc0ab9d1468339886ccfe913f4f0` |
| 42 | `lemma` | [exists_isSl2Triple_of_weight_isNonZero](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/exists-issl2triple-of-weight-isnonzero--47904075a6885d8082b05623.md) | 536 | `result-track:47904075a6885d8082b05623d1f2a0e1215da1d735e10c88ddc8788ab11dd4fa` |
| 43 | `lemma` | [_root_.IsSl2Triple.h_eq_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/root-issl2triple-h-eq-coroot--adc4d6db98f9d0fb4ddfa00e.md) | 564 | `result-track:adc4d6db98f9d0fb4ddfa00ea57ea7aa9e68a49124872e695590999bd120a685` |
| 44 | `lemma` | [finrank_rootSpace_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/finrank-rootspace-eq-one--28e63d429f1fa268b1e39df0.md) | 589 | `result-track:28e63d429f1fa268b1e39df0c32e6463464ae062500d1eebc65e66050f2b67c4` |
| 45 | `def` | [sl2SubalgebraOfRoot](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/sl2subalgebraofroot--814fd4db643be96917feb84b.md) | 615 | `declaration-track:814fd4db643be96917feb84bb127cacd6f3103f8c639d3c7cfdc83c5a7147833` |
| 46 | `lemma` | [mem_sl2SubalgebraOfRoot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/mem-sl2subalgebraofroot-iff--2b7e3474e61298129e87c98b.md) | 620 | `result-track:2b7e3474e61298129e87c98bb587405ed9665d75593763db14073a425b717039` |
| 47 | `abbrev` | [_root_.LieSubalgebra.root](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/root-liesubalgebra-root--5b644dcd55b33f9c2033b362.md) | 648 | `declaration-track:5b644dcd55b33f9c2033b36253f6c2abbdc20e1cada189d48c4e0e190d3b3656` |
| 48 | `lemma` | [restrict_killingForm_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/declarations/restrict-killingform-eq-sum--4e42a97924db95f77a24c184.md) | 650 | `result-track:4e42a97924db95f77a24c1843c5880aea878994e3ecebd49d700a23d94e946a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
