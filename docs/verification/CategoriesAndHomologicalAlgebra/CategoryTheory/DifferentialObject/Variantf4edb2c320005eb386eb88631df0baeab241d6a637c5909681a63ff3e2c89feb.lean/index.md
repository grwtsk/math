# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DifferentialObject.Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad85ea8640c6057c5a9f2a9eff1e0d75fff00f8a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad85ea8640c6057c5a9f2a9eff1e0d75fff00f8a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.DifferentialObject` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [objEqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/declarations/objeqtohom--dee0eba39f2d6f627d5ace50.md) | 36 | `declaration-track:dee0eba39f2d6f627d5ace506a6237226262cdae0f72619335f2805186c21235` |
| 2 | `theorem` | [objEqToHom_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/declarations/objeqtohom-refl--962a890703aa2310aca629a1.md) | 41 | `result-track:962a890703aa2310aca629a12f3b3105cbc17b9bd08ea3e2f0179c9847676763` |
| 3 | `theorem` | [objEqToHom_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/declarations/objeqtohom-d--0cb4d0efdeebb4a35423fa79.md) | 45 | `result-track:0cb4d0efdeebb4a35423fa79d6dea082ba23bf85e6423b6a7ebca242b46378a8` |
| 4 | `theorem` | [d_squared_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/declarations/d-squared-apply--2b0b659ce38eccda2e97e3c1.md) | 49 | `result-track:2b0b659ce38eccda2e97e3c1995f284a74853c17f58e64bedb8f1eeeece3da4f` |
| 5 | `theorem` | [eqToHom_f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/declarations/eqtohom-f--e9044a7670551cd62bfcd4f3.md) | 52 | `result-track:e9044a7670551cd62bfcd4f3ade723d9729aa53ab061a72c071cdf69e3edda43` |
| 6 | `theorem` | [d_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/declarations/d-eqtohom--d5904844c3d8f697a5f081a2.md) | 65 | `result-track:d5904844c3d8f697a5f081a29c7e4bb7a436b8fed6ee32736b9aae860c564400` |
| 7 | `def` | [dgoToHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/declarations/dgotohomologicalcomplex--32e4a7a42cb39e4232fcfaa8.md) | 72 | `declaration-track:32e4a7a42cb39e4232fcfaa80288f85bc7e1123e38388efa92b08960d9b64b40` |
| 8 | `def` | [homologicalComplexToDGO](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/declarations/homologicalcomplextodgo--3ce20e71f74bcd6a1594a522.md) | 96 | `declaration-track:3ce20e71f74bcd6a1594a5229c789b585090514f89e7b3c02ee4ce760a87590d` |
| 9 | `def` | [dgoEquivHomologicalComplexUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/declarations/dgoequivhomologicalcomplexunitiso--6e0035fcfc8bf8e757c47710.md) | 107 | `declaration-track:6e0035fcfc8bf8e757c47710400884fad069dffcfe3ef7e77b842c54e6165032` |
| 10 | `def` | [dgoEquivHomologicalComplexCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/declarations/dgoequivhomologicalcomplexcounitiso--3dc99b23e561c5d326e7199b.md) | 117 | `declaration-track:3dc99b23e561c5d326e7199b90e455bf85b3e2f829d6ea88e2b2f88496a260c2` |
| 11 | `def` | [dgoEquivHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb.lean/declarations/dgoequivhomologicalcomplex--945c07510541e36445601da4.md) | 128 | `declaration-track:945c07510541e36445601da4997a209f9c3ad303a15c28398d1e5de7028c02ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
