# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.FiniteAdeleRing.Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d39e42a9629f1a3e14fb06e51f6fc3cf5ee57c01",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d39e42a9629f1a3e14fb06e51f6fc3cf5ee57c01`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFiniteMulSupport_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/hasfinitemulsupport-norm--8f1ac9621fff523d1c03dc02.md) | 50 | `result-track:8f1ac9621fff523d1c03dc02eb5c3b809f0169702acdf5819cc18acf6d754eab` |
| 2 | `theorem` | [hasProd_subset_valued_one_lt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/hasprod-subset-valued-one-lt--9475c1544adb65ef564cf0d6.md) | 54 | `result-track:9475c1544adb65ef564cf0d6e11c0df0a9633603edfe069562b65f46b4a89a88` |
| 3 | `theorem` | [hasProd_zero_subset_lt_one_valued](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/hasprod-zero-subset-lt-one-valued--5e144ea0a5b5717b6f94c9a2.md) | 62 | `result-track:5e144ea0a5b5717b6f94c9a21d89348a49d7e6657121109e56847a385704f39e` |
| 4 | `theorem` | [hasProd_zero_of_not_isUnit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/hasprod-zero-of-not-isunit--d08911472dbf85b894a3055a.md) | 79 | `result-track:d08911472dbf85b894a3055aca06a60c7bf251dbf8c9bc52711e5c1cee0ebf68` |
| 5 | `theorem` | [tprod_norm_eq_finprod_of_isUnit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/tprod-norm-eq-finprod-of-isunit--bdf1f59721d5c755baa57591.md) | 89 | `result-track:bdf1f59721d5c755baa57591b07d71e24965958b233d954d9be29c68431e6e24` |
| 6 | `theorem` | [tprod_norm_eq_finprod_of_unit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/tprod-norm-eq-finprod-of-unit--04bd8cdd1f885274c4f08e02.md) | 94 | `result-track:04bd8cdd1f885274c4f08e02d06f21c52eb924f6cc47cf599717f0e660e31559` |
| 7 | `theorem` | [tprod_eq_zero_of_not_isUnit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/tprod-eq-zero-of-not-isunit--b0d7bc8f9e7ce765589cda48.md) | 98 | `result-track:b0d7bc8f9e7ce765589cda48b925673f85009e06a7da8137aa7cf41814ed0dd6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/instance--7e6c5c2e8142e5e5487747c0.md) | 106 | `declaration-track:7e6c5c2e8142e5e5487747c062eac7cc843448c24c3adf7ce680f8feaec11a1e` |
| 9 | `theorem` | [norm_def](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/norm-def--ebb7eb74aa5a750a0a02e609.md) | 108 | `result-track:ebb7eb74aa5a750a0a02e609f3743e1d27bd4a3234430476f497dfd4538e53d9` |
| 10 | `theorem` | [norm_eq_finprod_of_unit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/norm-eq-finprod-of-unit--d58b954af49be619beffbc8e.md) | 110 | `result-track:d58b954af49be619beffbc8e1bfeffaeb894004da0c895311afbf62709dddea9` |
| 11 | `theorem` | [norm_eq_zero_of_not_isUnit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/norm-eq-zero-of-not-isunit--09f68b1688aad8a55eca2c7b.md) | 113 | `result-track:09f68b1688aad8a55eca2c7be46a8f4a00e3f44bfbb92bf7d519f2005e96fa31` |
| 12 | `theorem` | [unitEmbedding_norm_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/unitembedding-norm-apply--0a2658af341dd2f59075be36.md) | 118 | `result-track:0a2658af341dd2f59075be369aedcc5af0607328937363145d0f91cde16f0c6f` |
| 13 | `theorem` | [unitEmbedding_norm_apply_eq_finprod_finitePlace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/unitembedding-norm-apply-eq-finprod-finiteplace--f6d7e5513d39c40e730731e9.md) | 122 | `result-track:f6d7e5513d39c40e730731e95baaf76c2362968a6ecf62309099693ee53d77ef` |
| 14 | `theorem` | [unitEmbedding_norm_eq_inv_abs_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/unitembedding-norm-eq-inv-abs-norm--655be035303054b8dc491f6b.md) | 128 | `result-track:655be035303054b8dc491f6b666fbfb8dfcd35104f8cfafb2a77704f1ddcb35c` |
| 15 | `theorem` | [coe_norm_eq_inv_abs_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/declarations/coe-norm-eq-inv-abs-norm--8c130cf9df3cff69868b5d7f.md) | 132 | `result-track:8c130cf9df3cff69868b5d7f175d3f934e7223198d29723285f10058770f6ab9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
