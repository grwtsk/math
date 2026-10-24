# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quot.Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84af5796e558dc0927aa142fa6d9fd7d19d1bff4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84af5796e558dc0927aa142fa6d9fd7d19d1bff4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.QPF.Multivariate.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientQPF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b.lean/declarations/quotientqpf--826d1b49298f0f212dd2cc91.md) | 44 | `declaration-track:826d1b49298f0f212dd2cc91f0275b6fab873f4308b32f1ebef47f3ef06cc8eb` |
| 2 | `def` | [Quot1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b.lean/declarations/quot1--a131c15731b7be69bd20be16.md) | 60 | `declaration-track:a131c15731b7be69bd20be160b51982187b62971b4b62c15de9db5f0652109df` |
| 3 | `instance` | [Quot1.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b.lean/declarations/quot1-inhabited--5edf3bc945f3e68df88cec65.md) | 63 | `declaration-track:5edf3bc945f3e68df88cec656d2187dcf9837bdf217904e67112a9e88c7aca24` |
| 4 | `def` | [Quot1.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b.lean/declarations/quot1-map--cc289649a9e4bc8aab0cdbf6.md) | 71 | `declaration-track:cc289649a9e4bc8aab0cdbf6402b4d0465b8843db62a749b7481d73061305668` |
| 5 | `def` | [Quot1.mvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b.lean/declarations/quot1-mvfunctor--214becbe0b10f7df0e8ff1d5.md) | 75 | `declaration-track:214becbe0b10f7df0e8ff1d5c12536808dc66694495d5c35fe2d5ea136c4ce2e` |
| 6 | `def` | [relQuot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b.lean/declarations/relquot--cb816ede00c2f9cbb1719488.md) | 84 | `declaration-track:cb816ede00c2f9cbb17194880b970551b4c0dfc6f379a827a0e4f1f289e127c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
