# Verification target: GRWTSK.Algebra.LinearAlgebra.QuotSMulTop.Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40da1dc66eda3397c917ea7eceb2e50555be0506",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40da1dc66eda3397c917ea7eceb2e50555be0506`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [QuotSMulTop](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/quotsmultop--3d359a52346eb3436e83e9e6.md) | 40 | `declaration-track:3d359a52346eb3436e83e9e642f01bccee1c455d546a08320879b091a7776055` |
| 2 | `def` | [equivQuotTensor](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/equivquottensor--225a20ba66873b06d4bf6200.md) | 47 | `declaration-track:225a20ba66873b06d4bf6200ece707692d4ae1d517da63b9c4f4a38f3a586118` |
| 3 | `def` | [equivTensorQuot](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/equivtensorquot--4163a4a3270e204d85be0552.md) | 53 | `declaration-track:4163a4a3270e204d85be0552a3e6b935e89168b86727c6d707bb9e0a8ab8eb58` |
| 4 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/map--b6ae2054819782564a50df52.md) | 61 | `declaration-track:b6ae2054819782564a50df527a5fb22f68208336e8506de5beed955aeec3f2d7` |
| 5 | `lemma` | [map_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/map-apply-mk--9f8dda48f9f53d318c90fb27.md) | 67 | `result-track:9f8dda48f9f53d318c90fb27bca210bc3bd509445748565776e8bedc71f2d1bf` |
| 6 | `lemma` | [map_comp_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/map-comp-mkq--93f0fed21bfd89e35fceeea2.md) | 72 | `result-track:93f0fed21bfd89e35fceeea27879169d45c48b348cc561f09e5411885159d985` |
| 7 | `lemma` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/map-id--5398ac8d55e8121ea2e49fb5.md) | 79 | `result-track:5398ac8d55e8121ea2e49fb5fbb6d7d536acffedb90a1b349e8d02eca674624a` |
| 8 | `lemma` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/map-comp--f4b37ef5d23b5d84a44498a7.md) | 85 | `result-track:f4b37ef5d23b5d84a44498a741a275cb08cc0d113535073af0ce1c498a93265b` |
| 9 | `lemma` | [equivQuotTensor_naturality_mk](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/equivquottensor-naturality-mk--e378c5e029462cd43da735e5.md) | 89 | `result-track:e378c5e029462cd43da735e58577fbdb67601076a22f6cfe3797736140e47cfa` |
| 10 | `lemma` | [equivQuotTensor_naturality](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/equivquottensor-naturality--90e22746111778522a1d7e3b.md) | 95 | `result-track:90e22746111778522a1d7e3b260b0041ca5b2abf3959794a055b1cb60f500bf2` |
| 11 | `lemma` | [equivTensorQuot_naturality_mk](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/equivtensorquot-naturality-mk--d26232783d03b39721e0f768.md) | 100 | `result-track:d26232783d03b39721e0f76825505754d992192048b7793a8b94ec49ca3f2e37` |
| 12 | `lemma` | [equivTensorQuot_naturality](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/equivtensorquot-naturality--f9a41180e755aa2e3fa956e9.md) | 106 | `result-track:f9a41180e755aa2e3fa956e988c02564a0ec79e6e0f6a930a769dd2c8dd9e57f` |
| 13 | `lemma` | [map_surjective](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/map-surjective--9a80c60388c40c3580b73406.md) | 111 | `result-track:9a80c60388c40c3580b73406e6b0bcf62e09c583178da42921a138cfbca12994` |
| 14 | `lemma` | [map_exact](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/map-exact--e4a60bc03472b254c039f424.md) | 116 | `result-track:e4a60bc03472b254c039f4246f4e88eeaff81affc972eb5f1678c9cd3434e553` |
| 15 | `def` | [tensorQuotSMulTopEquivQuotSMulTop](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/tensorquotsmultopequivquotsmultop--a16d418f17b5541e51b97373.md) | 125 | `declaration-track:a16d418f17b5541e51b97373d51e0cc63cba591231b1271f6413f1477600603e` |
| 16 | `def` | [quotSMulTopTensorEquivQuotSMulTop](../../../../../mathematics/Algebra/LinearAlgebra/QuotSMulTop/Variant6a861a95cb69f7b5dc7382c7e4b985382883be4c2ca1e774a1d2435fd801d2ab.lean/declarations/quotsmultoptensorequivquotsmultop--a20ca390634d4e224825433a.md) | 132 | `declaration-track:a20ca390634d4e224825433ac9f8c95f3397214aa7b7e472a171252ae607fa4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
