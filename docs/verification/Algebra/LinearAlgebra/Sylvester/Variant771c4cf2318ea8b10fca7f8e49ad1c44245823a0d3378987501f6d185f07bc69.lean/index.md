# Verification target: GRWTSK.Algebra.LinearAlgebra.Sylvester.Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8a662e47dc8adf7442e41bc58e732f0bba70d04",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8a662e47dc8adf7442e41bc58e732f0bba70d04`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.HermitianPosPart` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hermForm](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/hermform--3f99af74cbc8fc32cc615554.md) | 43 | `declaration-track:3f99af74cbc8fc32cc61555435240b7bea60901d641b089867c29295532000b6` |
| 2 | `def` | [PosDefOn](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/posdefon--aa730182073bdd2ae6f0f078.md) | 47 | `declaration-track:aa730182073bdd2ae6f0f0788021ec698ea9b445e126f6dbf2b20b2b9be1462f` |
| 3 | `lemma` | [hermForm_conj](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/hermform-conj--c29291e20183990090a45397.md) | 51 | `result-track:c29291e20183990090a453977e1eca898e28ffc3aa4b2e71383ecc449c554d1e` |
| 4 | `lemma` | [hermForm_add](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/hermform-add--1597606749bfa47266cf1fce.md) | 60 | `result-track:1597606749bfa47266cf1fce5822aca9281e35bd786a595872cfad315cf2546d` |
| 5 | `lemma` | [hermForm_sub](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/hermform-sub--dacbc28eb61ec7631990a483.md) | 66 | `result-track:dacbc28eb61ec7631990a48340e29ccc1aec2a21623fa213d0bd25b8493c7537` |
| 6 | `lemma` | [hermForm_nonneg_of_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/hermform-nonneg-of-possemidef--872d6e4290234c83a8c44798.md) | 73 | `result-track:872d6e4290234c83a8c44798c8a33e2560997824cbe50657083d4c5e195a1ac3` |
| 7 | `theorem` | [finrank_le_posIndex_of_posDefOn](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/finrank-le-posindex-of-posdefon--92670de36dcd02b2e394475b.md) | 82 | `result-track:92670de36dcd02b2e394475b262dd9d0a040c9e3576df2702564bfa7a5428935` |
| 8 | `theorem` | [posDefOn_range_hermPosPart](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/posdefon-range-hermpospart--b7da4aa46c3607e734e0af7d.md) | 123 | `result-track:b7da4aa46c3607e734e0af7d859f8de5cc2e3ee226fa2ed205681cbb60d6436f` |
| 9 | `lemma` | [hermForm_one](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/hermform-one--60c8fac0adb5a050edb6a57b.md) | 181 | `result-track:60c8fac0adb5a050edb6a57bde1477b49cded74a37102e4027edb8672b85d618` |
| 10 | `lemma` | [sum_normSq_unitary_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/sum-normsq-unitary-mulvec--9d5865cb258e1de51ee3ac1e.md) | 188 | `result-track:9d5865cb258e1de51ee3ac1e5a59c61ffca6041e8ea90dcb3be619950295786c` |
| 11 | `lemma` | [hermForm_le_of_eigenvalues_le](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/hermform-le-of-eigenvalues-le--e71886c9b6a2656534cfb80c.md) | 200 | `result-track:e71886c9b6a2656534cfb80c77955221c7147982cfe1f223abd9a9f8948f5d4d` |
| 12 | `theorem` | [hermForm_gt_on_range_truncPos](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/hermform-gt-on-range-truncpos--21f1ef3a9acbc1439c503c5d.md) | 215 | `result-track:21f1ef3a9acbc1439c503c5d4b79057d4dd3f66e370c58f2795ae730320ceb86` |
| 13 | `lemma` | [finrank_range_truncPos](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/finrank-range-truncpos--e62710aa198beed5d81c0718.md) | 289 | `result-track:e62710aa198beed5d81c07188c6f79e6da2b554b9f77809c49e69a0b082ef2bc` |
| 14 | `lemma` | [finrank_range_hermPosPart](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/finrank-range-hermpospart--54f4c7e2bcc087cbf30aee89.md) | 299 | `result-track:54f4c7e2bcc087cbf30aee89c46ba69fa424caee30085572d581d270f0e4e8dd` |
| 15 | `theorem` | [posIndex_eq_max_finrank_posDefOn](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/declarations/posindex-eq-max-finrank-posdefon--624ff7310fe8a013d9350ad4.md) | 304 | `result-track:624ff7310fe8a013d9350ad4686381d6b8cb7c76fde22dc57763930e0ed91e4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
