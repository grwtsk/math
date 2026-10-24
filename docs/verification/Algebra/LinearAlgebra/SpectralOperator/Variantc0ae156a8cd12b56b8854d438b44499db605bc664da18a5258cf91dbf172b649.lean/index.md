# Verification target: GRWTSK.Algebra.LinearAlgebra.SpectralOperator.Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f970ade79f8bae4137893475fe1798179fea38e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f970ade79f8bae4137893475fe1798179fea38e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.ConnesBitfield.System` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitfieldOperatorExpansion](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/declarations/bitfieldoperatorexpansion--54aeb5b51478a4e21dd146bb.md) | 16 | `declaration-track:54aeb5b51478a4e21dd146bb5f2af8e8ee291f7dcb4917215f34b348d69bc21f` |
| 2 | `def` | [BitfieldOperatorExpansion.operator](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/declarations/bitfieldoperatorexpansion-operator--cf5dbcff8a6e7fbcbae5a3df.md) | 30 | `declaration-track:cf5dbcff8a6e7fbcbae5a3dff8a64fe9f5e4bf72b762b7873a60ef533f7c50ba` |
| 3 | `structure` | [BitfieldSpectralOperator](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/declarations/bitfieldspectraloperator--9a212979c239af05b71deb6e.md) | 41 | `declaration-track:9a212979c239af05b71deb6ec2efe6316e98f6bf52b9f4f6c9e76ab291a8ee35` |
| 4 | `structure` | [BitfieldOperatorRealization](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/declarations/bitfieldoperatorrealization--c8ec03c142960c9f05bd7f9b.md) | 62 | `declaration-track:c8ec03c142960c9f05bd7f9bb5ed239f9fab5fa84c4dffc0469d3a811b8240eb` |
| 5 | `def` | [operatorEnsembleExpectation](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/declarations/operatorensembleexpectation--de2e0059d692bad3faa85732.md) | 73 | `declaration-track:de2e0059d692bad3faa857329cb708feb67d7a89e0b27439dba921d7ecf23c04` |
| 6 | `def` | [spectralParameter](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/declarations/spectralparameter--e11d4f4c186c86c4952fdd17.md) | 83 | `declaration-track:e11d4f4c186c86c4952fdd17372946522cebd807fbae148e42079aa677b300aa` |
| 7 | `theorem` | [spectralParameter_realPart](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/declarations/spectralparameter-realpart--99d6d116dd40bc57d5778843.md) | 86 | `result-track:99d6d116dd40bc57d5778843fafc0eca2a34b8ee011bf361deabb0d683fa93f6` |
| 8 | `theorem` | [spectralParameter_neg](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/declarations/spectralparameter-neg--f217ac3520a547312f803efd.md) | 95 | `result-track:f217ac3520a547312f803efd052c191e80044df79254aa7f872e9b35942526bd` |
| 9 | `theorem` | [spectralParameter_neg_eq_one_sub](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/declarations/spectralparameter-neg-eq-one-sub--a05d3b1affd0881fe257d238.md) | 102 | `result-track:a05d3b1affd0881fe257d238246a51402bfee8c15272590b9ad5892210f54ac8` |
| 10 | `theorem` | [spectralParameter_functional_fixed](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/declarations/spectralparameter-functional-fixed--f4bb5c48b950d15b5802e511.md) | 113 | `result-track:f4bb5c48b950d15b5802e5117a71fa3fa2cb13f5ccb4ec299803569208ff0aa4` |
| 11 | `def` | [finiteSpectralDeterminant](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/declarations/finitespectraldeterminant--cd4faab353232fd556670c24.md) | 120 | `declaration-track:cd4faab353232fd556670c2448891284b815ae297df9697bacaa193f10b202bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
