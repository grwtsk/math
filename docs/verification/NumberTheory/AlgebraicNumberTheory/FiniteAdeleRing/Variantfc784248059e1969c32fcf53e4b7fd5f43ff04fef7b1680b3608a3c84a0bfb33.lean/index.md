# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.FiniteAdeleRing.Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb5434fcb154cca5e42d7fd9c4de2a9bc6db4e7a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb5434fcb154cca5e42d7fd9c4de2a9bc6db4e7a`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean.json)

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
| 1 | `theorem` | [hasFiniteMulSupport_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/hasfinitemulsupport-norm--672cf00ce6f661d6f194de94.md) | 58 | `result-track:672cf00ce6f661d6f194de94066fb30c68592f9b753019defeb74f259a127f4c` |
| 2 | `theorem` | [hasProd_subset_valued_one_lt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/hasprod-subset-valued-one-lt--32c79c0e802158f92db8f67f.md) | 62 | `result-track:32c79c0e802158f92db8f67f8de2a503f1286ef1f6ff297d9ebe3aea8f3d775d` |
| 3 | `theorem` | [hasProd_zero_subset_lt_one_valued](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/hasprod-zero-subset-lt-one-valued--66f73752d90056d6fde55f32.md) | 70 | `result-track:66f73752d90056d6fde55f32e39a1129bec0879ca7fd8988512198a1a6c587d8` |
| 4 | `theorem` | [hasProd_zero_of_not_isUnit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/hasprod-zero-of-not-isunit--eec685ace7e14c0d3b282e02.md) | 87 | `result-track:eec685ace7e14c0d3b282e02da7e291bb546a35b91c7b965e44a57bf6bec1c74` |
| 5 | `theorem` | [tprod_norm_eq_finprod_of_isUnit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/tprod-norm-eq-finprod-of-isunit--2108315723c10013e337861c.md) | 97 | `result-track:2108315723c10013e337861c4c36cbe4b93a4c553e495034e365c488b3719ded` |
| 6 | `theorem` | [tprod_norm_eq_finprod_of_unit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/tprod-norm-eq-finprod-of-unit--d717915ff3a71cbe0f578fdb.md) | 102 | `result-track:d717915ff3a71cbe0f578fdb1661fc19716ac88fbe87555d4fbc42e05aaa0b37` |
| 7 | `theorem` | [tprod_eq_zero_of_not_isUnit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/tprod-eq-zero-of-not-isunit--2047357a141585a834610c14.md) | 106 | `result-track:2047357a141585a834610c1476a43bf2019c2cd9bc1b2bd40b6da320ea578792` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/instance--eb29608aebff25780783480c.md) | 114 | `declaration-track:eb29608aebff25780783480cee76aa975e99bcadaedbf777b6d01d32ddc324fc` |
| 9 | `theorem` | [norm_def](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/norm-def--8560ddb22db565f11fdb060c.md) | 116 | `result-track:8560ddb22db565f11fdb060cf5d5b7c777cff84993c66e5783fb16efa132fb77` |
| 10 | `theorem` | [norm_eq_finprod_of_unit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/norm-eq-finprod-of-unit--dd0091ce91d45ab10902c9f5.md) | 118 | `result-track:dd0091ce91d45ab10902c9f5a376b47126e45a944fc1f069e1169963a5921943` |
| 11 | `theorem` | [norm_eq_zero_of_not_isUnit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/norm-eq-zero-of-not-isunit--a99564a818a5168f42ceec8b.md) | 121 | `result-track:a99564a818a5168f42ceec8bf8c06bd0bf13ae8686b07359ee8fa369c278d312` |
| 12 | `theorem` | [unitEmbedding_norm_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/unitembedding-norm-apply--a1dd1e7db17fa354915dcc6c.md) | 126 | `result-track:a1dd1e7db17fa354915dcc6c677cad13732bc92b14c9f7f3f43002a93ab41737` |
| 13 | `theorem` | [unitEmbedding_norm_apply_eq_finprod_finitePlace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/unitembedding-norm-apply-eq-finprod-finiteplace--35e2dba2e66b97e7656ff44c.md) | 130 | `result-track:35e2dba2e66b97e7656ff44c5cbdd41bb175519a72fbe77a870153f3be069b94` |
| 14 | `theorem` | [unitEmbedding_norm_eq_inv_abs_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/unitembedding-norm-eq-inv-abs-norm--e85bfafa6e1a45cab017c729.md) | 136 | `result-track:e85bfafa6e1a45cab017c7297ce1e3262f7c167e2c1defca6952ffe517864070` |
| 15 | `theorem` | [coe_norm_eq_inv_abs_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/declarations/coe-norm-eq-inv-abs-norm--0ffd01f23903234914fe1bba.md) | 140 | `result-track:0ffd01f23903234914fe1bbaa393b9dd0747af2bf8ff36baa8bc3ac51bd60338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
