# Verification target: GRWTSK.Algebra.LinearAlgebra.Algebra.Variant176a3c6decd8abfab3433fcf1539b9eedac2779ae8b4e3f4acd2e6fbd36d86ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38d43872c693445c142278aba5bcb22c76485235",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Algebra/Variant176a3c6decd8abfab3433fcf1539b9eedac2779ae8b4e3f4acd2e6fbd36d86ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Algebra/Variant176a3c6decd8abfab3433fcf1539b9eedac2779ae8b4e3f4acd2e6fbd36d86ed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Algebra/Variant176a3c6decd8abfab3433fcf1539b9eedac2779ae8b4e3f4acd2e6fbd36d86ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38d43872c693445c142278aba5bcb22c76485235`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Algebra/Variant176a3c6decd8abfab3433fcf1539b9eedac2779ae8b4e3f4acd2e6fbd36d86ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Algebra/Variant176a3c6decd8abfab3433fcf1539b9eedac2779ae8b4e3f4acd2e6fbd36d86ed.lean.json)

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
| 1 | `def` | [moduleOfAlgebraModule](../../../../../mathematics/Algebra/LinearAlgebra/Algebra/Variant176a3c6decd8abfab3433fcf1539b9eedac2779ae8b4e3f4acd2e6fbd36d86ed.lean/declarations/moduleofalgebramodule--d75d28ecae199aa2e0a3f07d.md) | 55 | `declaration-track:d75d28ecae199aa2e0a3f07d48716103c8d2b68bb291708568aa362a4fe88fbd` |
| 2 | `theorem` | [isScalarTower_of_algebra_moduleCat](../../../../../mathematics/Algebra/LinearAlgebra/Algebra/Variant176a3c6decd8abfab3433fcf1539b9eedac2779ae8b4e3f4acd2e6fbd36d86ed.lean/declarations/isscalartower-of-algebra-modulecat--77bfdd2aa2954c43cffcf301.md) | 61 | `result-track:77bfdd2aa2954c43cffcf30179001c962afd6f53f11d5a7f15f55423d02228f0` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Algebra/Variant176a3c6decd8abfab3433fcf1539b9eedac2779ae8b4e3f4acd2e6fbd36d86ed.lean/declarations/example--aae57dee0c185fa5fbd82848.md) | 68 | `declaration-track:aae57dee0c185fa5fbd82848abc00b195a0693511c1d6653eb4dfef013620f89` |
| 4 | `instance` | [linearOverField](../../../../../mathematics/Algebra/LinearAlgebra/Algebra/Variant176a3c6decd8abfab3433fcf1539b9eedac2779ae8b4e3f4acd2e6fbd36d86ed.lean/declarations/linearoverfield--b02098652662ee6e8c698251.md) | 71 | `declaration-track:b02098652662ee6e8c698251c793dc46a05f8b9696601168153665997bbfee5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
