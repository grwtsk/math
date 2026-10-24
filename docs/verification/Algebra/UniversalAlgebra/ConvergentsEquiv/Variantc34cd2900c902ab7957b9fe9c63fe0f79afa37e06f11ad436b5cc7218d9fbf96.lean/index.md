# Verification target: GRWTSK.Algebra.UniversalAlgebra.ConvergentsEquiv.Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b7e294c26b98cb48b99b91866efd6b9a495a965",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b7e294c26b98cb48b99b91866efd6b9a495a965`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean.json)

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
| 1 | `def` | [squashSeq](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/squashseq--96d07e1d7277d07d95a566f5.md) | 94 | `declaration-track:96d07e1d7277d07d95a566f5304a7ab0b8272310aa7e13b5b4ce1b091b27c4ba` |
| 2 | `theorem` | [squashSeq_eq_self_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/squashseq-eq-self-of-terminated--acc0282fc1a98409f28edff9.md) | 106 | `result-track:acc0282fc1a98409f28edff9a9c895a5bc7edfcfb90897aa3b53da97d791b04c` |
| 3 | `theorem` | [squashSeq_nth_of_not_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/squashseq-nth-of-not-terminated--9656bb743ffe0f0801648d51.md) | 113 | `result-track:9656bb743ffe0f0801648d511ae6a11e8efec488f0ebd0aa9bbbce4e9f377a73` |
| 4 | `theorem` | [squashSeq_nth_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/squashseq-nth-of-lt--64d6457fe58c5f6dae3f1bf5.md) | 119 | `result-track:64d6457fe58c5f6dae3f1bf5096d0c2631dd05d84a431d42fafc6c00551e572f` |
| 5 | `theorem` | [squashSeq_succ_n_tail_eq_squashSeq_tail_n](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/squashseq-succ-n-tail-eq-squashseq-tail-n--f86017dc3aaef0561768f7ff.md) | 129 | `result-track:f86017dc3aaef0561768f7ff6a73b1ce9ec53aa07cead9cdd217c43af67123b1` |
| 6 | `theorem` | [succ_succ_nth_conv'Aux_eq_succ_nth_conv'Aux_squashSeq](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/succ-succ-nth-conv-aux-eq-succ-nth-conv-aux-squashseq--37141bb89542e4ca21de1909.md) | 149 | `result-track:37141bb89542e4ca21de190946948ce30bfc6652970c01f2af4177cda682e441` |
| 7 | `def` | [squashGCF](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/squashgcf--fcdf8aabd91063e487cee6b8.md) | 181 | `declaration-track:fcdf8aabd91063e487cee6b82ccd67881b751a5db85aaac016563d353b6318f6` |
| 8 | `theorem` | [squashGCF_eq_self_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/squashgcf-eq-self-of-terminated--d77d81f6111c1b0cbe779d8a.md) | 193 | `result-track:d77d81f6111c1b0cbe779d8a0e60fdaded640cac6bbbe0281cbae479e16b5ca8` |
| 9 | `theorem` | [squashGCF_nth_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/squashgcf-nth-of-lt--1eaef9ebeb1a3e7472a5f15a.md) | 205 | `result-track:1eaef9ebeb1a3e7472a5f15a80768f948a667df2ae6d73ae9ecf1a5dd695365f` |
| 10 | `theorem` | [succ_nth_conv'_eq_squashGCF_nth_conv'](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/succ-nth-conv-eq-squashgcf-nth-conv--c35811ada55dfb9fdf5505bd.md) | 211 | `result-track:c35811ada55dfb9fdf5505bd1640ed2f5093456326380b0256c7dfa3eacc16f5` |
| 11 | `theorem` | [contsAux_eq_contsAux_squashGCF_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/contsaux-eq-contsaux-squashgcf-of-le--29f94d01e99f7f15c4a6d257.md) | 222 | `result-track:29f94d01e99f7f15c4a6d25751288403c6f81f1011ab5d00a39dc771f7aaff50` |
| 12 | `theorem` | [succ_nth_conv_eq_squashGCF_nth_conv](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/succ-nth-conv-eq-squashgcf-nth-conv--28e60c6e09429fc20634095f.md) | 248 | `result-track:28e60c6e09429fc20634095fbbc186d8ea13c2fa2a866fdc02bb57c85c92ce83` |
| 13 | `theorem` | [convs_eq_convs'](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/convs-eq-convs--5e40d0c21024a48f95b7578e.md) | 322 | `result-track:5e40d0c21024a48f95b7578eebed4e7b9e46a2a9a2695cf363542dc094948809` |
| 14 | `theorem` | [convs_eq_convs'](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/declarations/convs-eq-convs--b746b19f8e9d7f6052c36bac.md) | 377 | `result-track:b746b19f8e9d7f6052c36bac18d24b2b06d97d4c8ba29e6e8ef0f2a615b229af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
