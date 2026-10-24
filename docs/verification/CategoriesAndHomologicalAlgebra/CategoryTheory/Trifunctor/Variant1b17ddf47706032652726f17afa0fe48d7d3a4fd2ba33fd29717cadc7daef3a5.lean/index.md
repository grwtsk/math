# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Trifunctor.Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0548f4dadccdbc677565d815210dbca34b0d1bd4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0548f4dadccdbc677565d815210dbca34b0d1bd4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Category` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bifunctorComp₁₂Obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/declarations/bifunctorcomp-obj--c92a47c2860d7ee5f61cd9a9.md) | 29 | `declaration-track:c92a47c2860d7ee5f61cd9a98da8599923894fc25d8bb5efb65eb5d406008e6c` |
| 2 | `def` | [bifunctorComp₁₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/declarations/bifunctorcomp--6fbc56a8ae666c7d926ed9b4.md) | 40 | `declaration-track:6fbc56a8ae666c7d926ed9b4aafb4687d8212e1e83bb5dd156afeeb326c55f05` |
| 3 | `def` | [bifunctorComp₁₂FunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/declarations/bifunctorcomp-functorobj--fee808b0198d0fdf329ec56b.md) | 53 | `declaration-track:fee808b0198d0fdf329ec56b30a7aab8ed21180df14a514e5b94ea96539a5471` |
| 4 | `def` | [bifunctorComp₁₂FunctorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/declarations/bifunctorcomp-functormap--319e5de3fdc224ca061f7f93.md) | 71 | `declaration-track:319e5de3fdc224ca061f7f939226bb2a16aae31557a2518e9c1cf65084122cda` |
| 5 | `def` | [bifunctorComp₁₂Functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/declarations/bifunctorcomp-functor--1b864a0f8df6b84f3e5778da.md) | 93 | `declaration-track:1b864a0f8df6b84f3e5778dadf20da284a523b0b17b1b85e46711bdb5129a42a` |
| 6 | `def` | [bifunctorComp₂₃Obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/declarations/bifunctorcomp-obj--324e2732faf7a1e7a417e583.md) | 103 | `declaration-track:324e2732faf7a1e7a417e58319e8e70941100be048e767fc2e2e85d225e63996` |
| 7 | `def` | [bifunctorComp₂₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/declarations/bifunctorcomp--dd662c791ab498fe2794d3e9.md) | 117 | `declaration-track:dd662c791ab498fe2794d3e9e6bbcefaf27d0832da45f1da1ba1f7ffc570c24b` |
| 8 | `def` | [bifunctorComp₂₃FunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/declarations/bifunctorcomp-functorobj--5e934d369a4295110822d8b9.md) | 126 | `declaration-track:5e934d369a4295110822d8b9d98a9e19c5e16d72f2c5946ffc6f544f6b922d15` |
| 9 | `def` | [bifunctorComp₂₃FunctorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/declarations/bifunctorcomp-functormap--9f7264d04f4e2d9551ed5d77.md) | 143 | `declaration-track:9f7264d04f4e2d9551ed5d77d7abe1b22e91d14e60c0290c9d12d274380c5dfb` |
| 10 | `def` | [bifunctorComp₂₃Functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant1b17ddf47706032652726f17afa0fe48d7d3a4fd2ba33fd29717cadc7daef3a5.lean/declarations/bifunctorcomp-functor--766727ed5cefddddc220ccea.md) | 156 | `declaration-track:766727ed5cefddddc220ccea39b0b8f5aa2f4390b5c06e2706993ffced357360` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
