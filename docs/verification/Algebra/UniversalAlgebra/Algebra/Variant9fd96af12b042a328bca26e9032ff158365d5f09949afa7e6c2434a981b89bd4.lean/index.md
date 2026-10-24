# Verification target: GRWTSK.Algebra.UniversalAlgebra.Algebra.Variant9fd96af12b042a328bca26e9032ff158365d5f09949afa7e6c2434a981b89bd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb25b0eff6e4765348ff7297cb1d041ea6e94efa",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant9fd96af12b042a328bca26e9032ff158365d5f09949afa7e6c2434a981b89bd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9fd96af12b042a328bca26e9032ff158365d5f09949afa7e6c2434a981b89bd4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9fd96af12b042a328bca26e9032ff158365d5f09949afa7e6c2434a981b89bd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb25b0eff6e4765348ff7297cb1d041ea6e94efa`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant9fd96af12b042a328bca26e9032ff158365d5f09949afa7e6c2434a981b89bd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Algebra/Variant9fd96af12b042a328bca26e9032ff158365d5f09949afa7e6c2434a981b89bd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moduleOfAlgebraModule](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9fd96af12b042a328bca26e9032ff158365d5f09949afa7e6c2434a981b89bd4.lean/declarations/moduleofalgebramodule--c628972fbc485e36d52a94f8.md) | 51 | `declaration-track:c628972fbc485e36d52a94f86e609aac382f31e583e9b60a1629d1be89763329` |
| 2 | `theorem` | [isScalarTower_of_algebra_moduleCat](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9fd96af12b042a328bca26e9032ff158365d5f09949afa7e6c2434a981b89bd4.lean/declarations/isscalartower-of-algebra-modulecat--27b369763b20144ab53c90aa.md) | 56 | `result-track:27b369763b20144ab53c90aa9766fe2d2608ea274c30424f05b1d5f43c0c5aa8` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9fd96af12b042a328bca26e9032ff158365d5f09949afa7e6c2434a981b89bd4.lean/declarations/example--feb7eb8f10c0da5a3dca2f96.md) | 62 | `declaration-track:feb7eb8f10c0da5a3dca2f96ad5bbf182433dd9e3d9d0d05bf5b6ce1659d35b3` |
| 4 | `instance` | [linearOverField](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9fd96af12b042a328bca26e9032ff158365d5f09949afa7e6c2434a981b89bd4.lean/declarations/linearoverfield--b2489be17d55f8c84a470566.md) | 64 | `declaration-track:b2489be17d55f8c84a4705669208f3ef3efd4f34f02d28b3c62e2eb0b7be8676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
