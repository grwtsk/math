# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Cardinality.Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f9081906f768de3a664bbda453f7af32e44af8b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f9081906f768de3a664bbda453f7af32e44af8b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cardinal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Continuum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cantorFunctionAux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/cantorfunctionaux--d0b3dcb36b014a0ca759dae6.md) | 57 | `declaration-track:d0b3dcb36b014a0ca759dae6e8bba83ead163ae0b33c574ceb7a2dc2f4b3f691` |
| 2 | `theorem` | [cantorFunctionAux_true](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/cantorfunctionaux-true--709d80d61c1a4c6450c6cb98.md) | 61 | `result-track:709d80d61c1a4c6450c6cb9839edde8ac39f39e80761187c1441f9658bead418` |
| 3 | `theorem` | [cantorFunctionAux_false](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/cantorfunctionaux-false--340df5f6d9a5d709183313d3.md) | 65 | `result-track:340df5f6d9a5d709183313d3754f5df0c040b828d05573f402a50d7fe0764f93` |
| 4 | `theorem` | [cantorFunctionAux_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/cantorfunctionaux-nonneg--95e477ca88a1cffe9b8550fa.md) | 68 | `result-track:95e477ca88a1cffe9b8550fa991730c0343cdbb82dcf34fb6751b8d0b4fe2b47` |
| 5 | `theorem` | [cantorFunctionAux_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/cantorfunctionaux-eq--f572ce0424b06f86f1ae7942.md) | 73 | `result-track:f572ce0424b06f86f1ae7942fd801c91712e4b7ad3058b25a463b499ccc54712` |
| 6 | `theorem` | [cantorFunctionAux_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/cantorfunctionaux-zero--f092dd1d0441dcdea5952e05.md) | 76 | `result-track:f092dd1d0441dcdea5952e0536567176360fb0a600546c4fd6b880b4175c342c` |
| 7 | `theorem` | [cantorFunctionAux_succ](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/cantorfunctionaux-succ--24eed78fedf315d041551f42.md) | 79 | `result-track:24eed78fedf315d041551f42584ca9f5cbbe0633b465c136c516b226f0c6e317` |
| 8 | `theorem` | [summable_cantor_function](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/summable-cantor-function--c17cddb4ac4e1f9d68ee166b.md) | 85 | `result-track:c17cddb4ac4e1f9d68ee166bf724a1a37db99b2f47a4d5ec22c3cdceeb6e8e42` |
| 9 | `def` | [cantorFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/cantorfunction--8dfaf44eb60abbf6d27df76a.md) | 92 | `declaration-track:8dfaf44eb60abbf6d27df76a715a0e1ef6718952a85cf7f2eddbe92c3ff1260a` |
| 10 | `theorem` | [cantorFunction_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/cantorfunction-le--2a94db37b50d7d6c60154310.md) | 95 | `result-track:2a94db37b50d7d6c60154310d55ed397650550e926dbfaaac9b3ec9b3f06f5f5` |
| 11 | `theorem` | [cantorFunction_succ](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/cantorfunction-succ--9804bf3b22bae20ab48cee56.md) | 102 | `result-track:9804bf3b22bae20ab48cee56bd6c838a7851ff168ccd3bc987da4c3768b4cfaf` |
| 12 | `theorem` | [increasing_cantorFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/increasing-cantorfunction--afb0cfa6ce4f6ab14ea35464.md) | 110 | `result-track:afb0cfa6ce4f6ab14ea354646eae7807c90555416d322074c64ac31f9423e764` |
| 13 | `theorem` | [cantorFunction_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/cantorfunction-injective--005069aaf6b19e1edbd4fbba.md) | 154 | `result-track:005069aaf6b19e1edbd4fbbadc2c74722f85bfc58afe4adef9eb2deaba479d07` |
| 14 | `theorem` | [mk_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/mk-real--7ea354e3bc6392d928361fe6.md) | 180 | `result-track:7ea354e3bc6392d928361fe6495bff30699348a930f099b1ed8373d51b54be46` |
| 15 | `theorem` | [mk_univ_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/mk-univ-real--1f9036491f1bd3d6527622b0.md) | 193 | `result-track:1f9036491f1bd3d6527622b0b8e762051226a3a3c36c5c1c83671386242fcee1` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/instance--0fe6a40d3111d7f9292d9999.md) | 196 | `declaration-track:0fe6a40d3111d7f9292d9999069aab3db61a0d4e82deda88ac4b07e9cc190ea8` |
| 17 | `theorem` | [not_countable_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/not-countable-real--4bbce5327083e02066a0c368.md) | 200 | `result-track:4bbce5327083e02066a0c368484ac8b28fea96fac89c8b96e4a54f834c9d0ad4` |
| 18 | `theorem` | [mk_Ioi_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/mk-ioi-real--6f3d0e1e3b74fdcdb14fb69e.md) | 204 | `result-track:6f3d0e1e3b74fdcdb14fb69eed3524444cd173afae817fb84c37131cb2c712ca` |
| 19 | `theorem` | [mk_Ici_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/mk-ici-real--3f19a3340ca3f7552a8612d6.md) | 225 | `result-track:3f19a3340ca3f7552a8612d617b982cafe8ccb35e971bca7f114ec8afdaf70e2` |
| 20 | `theorem` | [mk_Iio_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/mk-iio-real--4779067b335f1aea0b693eac.md) | 229 | `result-track:4779067b335f1aea0b693eac63bce9d840c01e5052239f24fbbf8c0f9ecd5b4e` |
| 21 | `theorem` | [mk_Iic_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/mk-iic-real--69ae43321126034a78d6ed55.md) | 236 | `result-track:69ae43321126034a78d6ed5576c18d5794f9956bde79e5bc647159f1a90f2d4c` |
| 22 | `theorem` | [mk_Ioo_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/mk-ioo-real--679a395ae18c973c937040ac.md) | 240 | `result-track:679a395ae18c973c937040ace7737bff1b0d70f311ec6720ae54c0765f44b790` |
| 23 | `theorem` | [mk_Ico_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/mk-ico-real--97626390bee0012c93d7b55a.md) | 251 | `result-track:97626390bee0012c93d7b55adb64a0d95537503467bb0120565ff84c58a17f1d` |
| 24 | `theorem` | [mk_Icc_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/mk-icc-real--c7861aa716a5d18d178beeeb.md) | 255 | `result-track:c7861aa716a5d18d178beeeb53c225ec09715f9b032ef5e8d0dba38e004b2ea7` |
| 25 | `theorem` | [mk_Ioc_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/declarations/mk-ioc-real--f7dcb753e0703ab837800dd1.md) | 259 | `result-track:f7dcb753e0703ab837800dd133f726a5eeb4ab06a202fe6598870861faef4cbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
