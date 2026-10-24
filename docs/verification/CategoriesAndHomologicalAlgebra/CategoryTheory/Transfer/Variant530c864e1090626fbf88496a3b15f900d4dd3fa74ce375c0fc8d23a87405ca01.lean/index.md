# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Transfer.Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "920e6ca36d6d633372560e13ec47c992145df4d1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `920e6ca36d6d633372560e13ec47c992145df4d1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.AbelianImages` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Transfer` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasKernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/haskernels--a0cc6687e8ddcabcc25ea150.md) | 54 | `result-track:a0cc6687e8ddcabcc25ea1503c2ad23e990e92ce75b182b0edc18af15963de33` |
| 2 | `theorem` | [hasCokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/hascokernels--475ff94c21996ee40e979964.md) | 64 | `result-track:475ff94c21996ee40e97996451bf0c3a09a1b39aafd900c8318690a8c4664d2a` |
| 3 | `def` | [abelianOfAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/abelianofadjunction--51b8cd72fe466bfbc46d1325.md) | 84 | `declaration-track:51b8cd72fe466bfbc46d13256bfc65308567a98c40ff60078d9b626594ce3812` |
| 4 | `def` | [abelianOfEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/abelianofequivalence--7c0245f62d607c6f70f0d723.md) | 107 | `declaration-track:7c0245f62d607c6f70f0d723da1467983536bf003c2f64d747796645421cbcdc` |
| 5 | `instance` | [preadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/preadditive--10f870e4e0bc28b1314146bf.md) | 124 | `declaration-track:10f870e4e0bc28b1314146bf0b1d07796c83b3615cbb16b9fceae665327bdadc` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/instance--e8b0694fc92b0276c42607a1.md) | 127 | `declaration-track:e8b0694fc92b0276c42607a1c32569069cff9d119ef659b25c8c69cb8fe209e4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/instance--b29874efcacde3f655dcff58.md) | 130 | `declaration-track:b29874efcacde3f655dcff58e34988ae31c93f1d00a5884f67d06ac5386f0d42` |
| 8 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/haslimitsofshape--f1712df817c509cb53ac9094.md) | 133 | `declaration-track:f1712df817c509cb53ac90944477c6b91b254c8f0b79359317b29394bfadd21c` |
| 9 | `instance` | [hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/hasfinitelimits--199b466eb5043725b638c238.md) | 137 | `declaration-track:199b466eb5043725b638c238b1e80bb9f146d08ef12733fca76a72508120eeae` |
| 10 | `instance` | [abelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/abelian--20a455432fe2003ed30958bc.md) | 143 | `declaration-track:20a455432fe2003ed30958bc7600c39be796efcad9f98756d33a9e548488e7d2` |
| 11 | `instance` | [preadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/preadditive--610a4c13bb0266b5ddc577c4.md) | 161 | `declaration-track:610a4c13bb0266b5ddc577c4e39405bf26056c60a07b0179f3e1d63e2ad893f3` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/instance--ec9adbdd51eb0126e6474c3a.md) | 164 | `declaration-track:ec9adbdd51eb0126e6474c3a34ef8a642c51b79d3f140cd1ff7fe493e31b7f68` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/instance--8e2f1d127f692281952cc440.md) | 167 | `declaration-track:8e2f1d127f692281952cc440cfde5d0eed51beaaa405ba5af4d61be64eb53050` |
| 14 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/haslimitsofshape--bcc843d9d43eb2d69d88fa1e.md) | 170 | `declaration-track:bcc843d9d43eb2d69d88fa1e12b2a45a0cfe888966dd200c268b93327e352671` |
| 15 | `instance` | [hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/hasfinitelimits--15073a8726cd01a59e2c30a8.md) | 174 | `declaration-track:15073a8726cd01a59e2c30a8159722975b3b24863dc044b25f9921afcb131692` |
| 16 | `instance` | [abelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant530c864e1090626fbf88496a3b15f900d4dd3fa74ce375c0fc8d23a87405ca01.lean/declarations/abelian--2dc69255894c1f694503d88a.md) | 180 | `declaration-track:2dc69255894c1f694503d88a94a62b4a0cef26119ac6a90fd4f936659c5482dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
