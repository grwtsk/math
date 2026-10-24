# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.EquivReindex.Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25535bb42a7041e4aef67ed999f34373d17118fa",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25535bb42a7041e4aef67ed999f34373d17118fa`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean.json)

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
| 1 | `abbrev` | [equivReindex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean/declarations/equivreindex--0a0080e21e37b334078db592.md) | 33 | `declaration-track:0a0080e21e37b334078db592c6c54d1e2d1dd100ac8700630a3d5135cbd35923` |
| 2 | `abbrev` | [basisMatrix](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean/declarations/basismatrix--a4ed51d89a75ea4ef2634caa.md) | 40 | `declaration-track:a4ed51d89a75ea4ef2634caadd21e25b9aed63864ee27c0aaf20134caa1e9c5b` |
| 3 | `theorem` | [basisMatrix_eq_embeddingsMatrixReindex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean/declarations/basismatrix-eq-embeddingsmatrixreindex--ad23576665c7da3d436a1929.md) | 43 | `result-track:ad23576665c7da3d436a19297dfb6061bc036dc29761835ed237ba61ac157a08` |
| 4 | `theorem` | [conj_basisMatrix](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean/declarations/conj-basismatrix--fef7b869082e623e6001af0c.md) | 49 | `result-track:fef7b869082e623e6001af0c53171cf8e13150cb0a6d6d021cb1983ba1478f0e` |
| 5 | `theorem` | [det_of_basisMatrix_non_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean/declarations/det-of-basismatrix-non-zero--f3d7346915341d1207224d42.md) | 54 | `result-track:f3d7346915341d1207224d42a92af831201359e33320c68b772e0bb42397bbc0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean/declarations/instance--f6c976fe8cd3aead90605460.md) | 63 | `declaration-track:f6c976fe8cd3aead90605460a085fd977f9065b9c361f9bd6a3ff42b0d94c319` |
| 7 | `theorem` | [canonicalEmbedding_eq_basisMatrix_mulVec](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean/declarations/canonicalembedding-eq-basismatrix-mulvec--c76c70a61be6bad81ff8d15a.md) | 68 | `result-track:c76c70a61be6bad81ff8d15a05d24f405c31fe412c055b1c944e45856ba0a933` |
| 8 | `theorem` | [inverse_basisMatrix_mulVec_eq_repr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean/declarations/inverse-basismatrix-mulvec-eq-repr--d4a9ef39ed71d06fccf4563b.md) | 75 | `result-track:d4a9ef39ed71d06fccf4563bdd5b0f961ded24891761627a7d3871be7a1379b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
