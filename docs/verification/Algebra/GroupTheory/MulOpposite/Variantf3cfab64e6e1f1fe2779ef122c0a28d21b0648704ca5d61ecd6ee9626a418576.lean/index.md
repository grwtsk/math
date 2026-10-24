# Verification target: GRWTSK.Algebra.GroupTheory.MulOpposite.Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c8aff3337f531c33569c3d6815e1707883b2e9c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c8aff3337f531c33569c3d6815e1707883b2e9c`.

Source path: `GRWTSK/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op--9d3b60f1c5401c0bb2cc85e1.md) | 33 | `declaration-track:9d3b60f1c5401c0bb2cc85e11197d08cdc90dc2189cb6b7059803051b11ed234` |
| 2 | `theorem` | [mem_op](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/mem-op--389eec424d4ec05278a1b286.md) | 39 | `result-track:389eec424d4ec05278a1b2867f8d7f179d62f0e74e85c0b6cc55526bcd9900ce` |
| 3 | `def` | [unop](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop--5419abb3a9dad82cc6bfc83d.md) | 44 | `declaration-track:5419abb3a9dad82cc6bfc83d066605ab4612ace3501ee4ecc63486ddab19efc9` |
| 4 | `theorem` | [mem_unop](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/mem-unop--79e86db2820874d2fd7d3ed3.md) | 50 | `result-track:79e86db2820874d2fd7d3ed3f3db8648e8b58edc138762867fcb8684e7b60894` |
| 5 | `theorem` | [unop_op](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-op--89f7d3b7739e25b963460d99.md) | 53 | `result-track:89f7d3b7739e25b963460d99d5b918eb8cdd518c5cc654fa5a76067cd00b2ce9` |
| 6 | `theorem` | [op_unop](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-unop--b767d660e70bc9634f33ac53.md) | 56 | `result-track:b767d660e70bc9634f33ac539f430704c39283c8d857ffb4036fcc98461b3300` |
| 7 | `theorem` | [op_le_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-le-iff--f23592e7d3071080c878f436.md) | 61 | `result-track:f23592e7d3071080c878f436b3ddd3e5fe4cb71a7e589e39e4db67cab8768232` |
| 8 | `theorem` | [le_op_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/le-op-iff--ec21eb05e715148040fd718f.md) | 65 | `result-track:ec21eb05e715148040fd718fb5852a867c3a770d11d401407d643cfdbc66aa66` |
| 9 | `theorem` | [op_le_op_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-le-op-iff--aca7952132d24fb94e8ef84c.md) | 69 | `result-track:aca7952132d24fb94e8ef84cadd03f21b3718b0199bbf15f9a00e5b2f3a7c145` |
| 10 | `theorem` | [unop_le_unop_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-le-unop-iff--a5d7f53735d5534ede7cab31.md) | 73 | `result-track:a5d7f53735d5534ede7cab313a8f0aa010ed7246942a37a8c3e6b38624e7f3d9` |
| 11 | `def` | [opEquiv](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/opequiv--cc15946ccce4de051f996b60.md) | 79 | `declaration-track:cc15946ccce4de051f996b60d3ce37b6b3e9b4d26ec06412b14ef95b18332070` |
| 12 | `theorem` | [op_injective](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-injective--a08e3e4237b131d38896e298.md) | 87 | `result-track:a08e3e4237b131d38896e29828f11f62667babe697daf2d6b7753f1efb9a0346` |
| 13 | `theorem` | [unop_injective](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-injective--9f5178f049f461bf37f662fa.md) | 90 | `result-track:9f5178f049f461bf37f662fa60455f6e7f10320926f4fd1e879eafc98a12d0bb` |
| 14 | `theorem` | [op_inj](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-inj--ec2bb174217bc41b339c6274.md) | 93 | `result-track:ec2bb174217bc41b339c6274308b6209e3ed4980266a98ff57acfb323122fc5e` |
| 15 | `theorem` | [unop_inj](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-inj--801552738061e20a56a2a320.md) | 96 | `result-track:801552738061e20a56a2a3209a70b634209a8268113d1cb47442fbbef867248d` |
| 16 | `theorem` | [op_bot](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-bot--9d2922a157f5b344088714eb.md) | 99 | `result-track:9d2922a157f5b344088714eb93a257daa5775705c1444a78b6d6237d375130d9` |
| 17 | `theorem` | [op_eq_bot](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-eq-bot--035f1db7f072d97495a5d18a.md) | 102 | `result-track:035f1db7f072d97495a5d18aa4de3d2c40fd5cb8463c24447787baf2c035c419` |
| 18 | `theorem` | [unop_bot](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-bot--44e2be2d57a4327a1f7e7d07.md) | 105 | `result-track:44e2be2d57a4327a1f7e7d07b547f7707b10af0ceaf813607b36678d0106bb01` |
| 19 | `theorem` | [unop_eq_bot](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-eq-bot--5cd6eb19751d925b64c14cb6.md) | 108 | `result-track:5cd6eb19751d925b64c14cb676f109ca76a5cd065b38f077dc6f12cbf911898d` |
| 20 | `theorem` | [op_top](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-top--8a517ad0d12540edd9d027f4.md) | 111 | `result-track:8a517ad0d12540edd9d027f49faf6cac265e7cf61ff0379660f49154075d6330` |
| 21 | `theorem` | [op_eq_top](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-eq-top--4392ed9fb1148c07dd7533b5.md) | 114 | `result-track:4392ed9fb1148c07dd7533b5289606cb7de8968682d09da73b031a00c3c765b6` |
| 22 | `theorem` | [unop_top](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-top--8c2599e2e4d3ed4bb3413522.md) | 117 | `result-track:8c2599e2e4d3ed4bb3413522e8d9cef65bc817f69131449366b03d8614bab49c` |
| 23 | `theorem` | [unop_eq_top](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-eq-top--ca1a8f30f1c0b2cbd23b05df.md) | 120 | `result-track:ca1a8f30f1c0b2cbd23b05dfcfcf3ae704eb65d65fb3f88cc50324d7ca5d3caf` |
| 24 | `theorem` | [op_sup](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-sup--e1af6de25d03a8616f2070cc.md) | 123 | `result-track:e1af6de25d03a8616f2070cc7d1b1d1bf1386ee9a933582bb22f60c5adbbb471` |
| 25 | `theorem` | [unop_sup](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-sup--90f7897f2685c292ea48329d.md) | 127 | `result-track:90f7897f2685c292ea48329d30d50f47a30d30a1d829939dbc8d33bf4bfe481d` |
| 26 | `theorem` | [op_inf](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-inf--111aa22046e74dbfbf041d86.md) | 131 | `result-track:111aa22046e74dbfbf041d865539f476a8f57e6c3ce4cbab13ba4e2c3320dafb` |
| 27 | `theorem` | [unop_inf](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-inf--32fca91c262feb63cf0d9228.md) | 134 | `result-track:32fca91c262feb63cf0d92289439ad7db6934bae9c5d9133318e9e39cde30624` |
| 28 | `theorem` | [op_sSup](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-ssup--117218862a3ec19306da4e6f.md) | 137 | `result-track:117218862a3ec19306da4e6fb13a76fb6866cb1db4cbdbb213a6ab616b67f282` |
| 29 | `theorem` | [unop_sSup](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-ssup--05036e8348dd7e893a52f58e.md) | 141 | `result-track:05036e8348dd7e893a52f58ea5f930a11e1d9d7fa4a528468d5e2efcb14f3fe7` |
| 30 | `theorem` | [op_sInf](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-sinf--20e9980074b10a2a41c86249.md) | 145 | `result-track:20e9980074b10a2a41c86249efa8e22a38717a6843d07d280cadd968177090d3` |
| 31 | `theorem` | [unop_sInf](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-sinf--69345009fa720e20cbd283c4.md) | 149 | `result-track:69345009fa720e20cbd283c4157c3424b69d0b89a0e5030fc9dde0cb04a91c13` |
| 32 | `theorem` | [op_iSup](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-isup--ae40759f84f802d7f208d8ca.md) | 153 | `result-track:ae40759f84f802d7f208d8ca2a5cd524affeb91a17fb5e3033ab2906eb551ca2` |
| 33 | `theorem` | [unop_iSup](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-isup--1724fa7728ead50fff620119.md) | 156 | `result-track:1724fa7728ead50fff6201191fd2e37fc5732fb36129b06efc788a87b7a84f64` |
| 34 | `theorem` | [op_iInf](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-iinf--7f9912e012bc466de3b95eaf.md) | 160 | `result-track:7f9912e012bc466de3b95eaf47df64072277caa32569e2b2e743f2d798b3049f` |
| 35 | `theorem` | [unop_iInf](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-iinf--17fb85765530cdc3012db1bf.md) | 163 | `result-track:17fb85765530cdc3012db1bfc0218aaba0b854e177b5e44515492b8ac69f00e0` |
| 36 | `theorem` | [op_closure](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/op-closure--5b044b3ff11a64dbaea8b3dc.md) | 167 | `result-track:5b044b3ff11a64dbaea8b3dca7890e1c2e1474be85f5277f9bd96684dc991d6f` |
| 37 | `theorem` | [unop_closure](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/unop-closure--283d634ad08b73bde7f062f9.md) | 173 | `result-track:283d634ad08b73bde7f062f90621cac6b915c67194247b87c1c64b28f2c9a787` |
| 38 | `def` | [equivOp](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variantf3cfab64e6e1f1fe2779ef122c0a28d21b0648704ca5d61ecd6ee9626a418576.lean/declarations/equivop--c3861622a29120573f8c2adb.md) | 179 | `declaration-track:c3861622a29120573f8c2adb0e06f400965f2a09370c6374ce7c9da4a49735d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
