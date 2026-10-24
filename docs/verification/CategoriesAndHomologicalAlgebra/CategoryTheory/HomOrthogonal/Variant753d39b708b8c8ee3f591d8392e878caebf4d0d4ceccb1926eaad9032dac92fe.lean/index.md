# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomOrthogonal.Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30faabc0ef1f0e0c4d98745dadbdcee8825b5fb2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30faabc0ef1f0e0c4d98745dadbdcee8825b5fb2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Linear.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.InvariantBasisNumber` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HomOrthogonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean/declarations/homorthogonal--ea177f1322afc3d2c96c82ad.md) | 59 | `declaration-track:ea177f1322afc3d2c96c82ad46e12ebb3860134a172ccb4e73bf9f670017d9dc` |
| 2 | `theorem` | [eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean/declarations/eq-zero--ad20ec477c501f2da30b275d.md) | 66 | `result-track:ad20ec477c501f2da30b275da69bfaca3f3dd73de1023b077ad26e931a1adaa4` |
| 3 | `def` | [matrixDecomposition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean/declarations/matrixdecomposition--966513520a777b89e9070bd6.md) | 80 | `declaration-track:966513520a777b89e9070bd63721bfcf5096ba9bb904f447b8451d9e3f38a147` |
| 4 | `def` | [matrixDecompositionAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean/declarations/matrixdecompositionaddequiv--dcc4a65c91760e771c7b973b.md) | 121 | `declaration-track:dcc4a65c91760e771c7b973b2c4dfffaf3a1f4335da67924e85ad231bc3b3798` |
| 5 | `theorem` | [matrixDecomposition_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean/declarations/matrixdecomposition-id--b98d3370ed8b566acacd5f7a.md) | 133 | `result-track:b98d3370ed8b566acacd5f7a530fcb600cc80f45044bb32377b376bfb78295f3` |
| 6 | `theorem` | [matrixDecomposition_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean/declarations/matrixdecomposition-comp--1fd0ae2d91da29498cc09806.md) | 149 | `result-track:1fd0ae2d91da29498cc098065556d8f29fb4a9d9d291249e77f93cd14c29f9a7` |
| 7 | `def` | [matrixDecompositionLinearEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean/declarations/matrixdecompositionlinearequiv--de9685895ffc4609bf5e0fc6.md) | 176 | `declaration-track:de9685895ffc4609bf5e0fc6c795535ef76b33f9de643f8163ea5c152b9279a5` |
| 8 | `theorem` | [equiv_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant753d39b708b8c8ee3f591d8392e878caebf4d0d4ceccb1926eaad9032dac92fe.lean/declarations/equiv-of-iso--e42d925c18baebf3e51b211b.md) | 200 | `result-track:e42d925c18baebf3e51b211b8e79a741d9a54b8fe3406b78214a4e6dba25a6d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
