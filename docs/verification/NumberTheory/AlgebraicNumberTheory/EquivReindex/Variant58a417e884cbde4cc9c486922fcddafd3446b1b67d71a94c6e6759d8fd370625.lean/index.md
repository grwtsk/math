# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.EquivReindex.Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7f3909d991561947c78a49eb45e7f06f15b009c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7f3909d991561947c78a49eb45e7f06f15b009c`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean.json)

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
| 1 | `abbrev` | [equivReindex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean/declarations/equivreindex--fedd9a781fffee9719c9f7e9.md) | 41 | `declaration-track:fedd9a781fffee9719c9f7e90d9de1ec43d49fc2a6cba44ca11122681d1cf6c8` |
| 2 | `abbrev` | [basisMatrix](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean/declarations/basismatrix--25762cb2b7e55ede7c994c76.md) | 48 | `declaration-track:25762cb2b7e55ede7c994c76a202143141ad9af99feec1c2a475a8e9b355e0d9` |
| 3 | `theorem` | [basisMatrix_eq_embeddingsMatrixReindex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean/declarations/basismatrix-eq-embeddingsmatrixreindex--3d856066e065aa4bcc2798a8.md) | 51 | `result-track:3d856066e065aa4bcc2798a8f9e78c6cb91ac3825c3e883718da988467e6e2df` |
| 4 | `theorem` | [conj_basisMatrix](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean/declarations/conj-basismatrix--96ce4156f8da7b34c30a103f.md) | 57 | `result-track:96ce4156f8da7b34c30a103f4e13d3fa60cd4698d74bdf189200f76bfd551121` |
| 5 | `theorem` | [det_of_basisMatrix_non_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean/declarations/det-of-basismatrix-non-zero--beaf3a717bde4998785e100f.md) | 62 | `result-track:beaf3a717bde4998785e100f099d96019d1be3395648cedeb6bb4eb869e774d7` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean/declarations/instance--19fbbe2f8f09d7c1e8c0d679.md) | 71 | `declaration-track:19fbbe2f8f09d7c1e8c0d6798d2197065f1be2eff70ab4da87722308e1511677` |
| 7 | `theorem` | [canonicalEmbedding_eq_basisMatrix_mulVec](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean/declarations/canonicalembedding-eq-basismatrix-mulvec--0291c290861408f475e7d56f.md) | 76 | `result-track:0291c290861408f475e7d56f74c8e28ff7c9bd2df8a8ea82d5980f7deb42b53b` |
| 8 | `theorem` | [inverse_basisMatrix_mulVec_eq_repr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean/declarations/inverse-basismatrix-mulvec-eq-repr--7f95acd4333ceaa2ef60d579.md) | 83 | `result-track:7f95acd4333ceaa2ef60d579ad23952911e1adc77d3b72ed002c734727712592` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
