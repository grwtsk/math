# Verification target: GRWTSK.Algebra.LinearAlgebra.Grading.Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf2f4dee0afe2b682c1501fbe9ca9c1d1eba932e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf2f4dee0afe2b682c1501fbe9ca9c1d1eba932e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grading/Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grading/Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedAlgebra.ι](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d.lean/declarations/gradedalgebra--6d3dd7340136c1ca0226ee82.md) | 36 | `declaration-track:6d3dd7340136c1ca0226ee82cd120246cd6d8d7c7ac8411da63c3c60d83bd456` |
| 2 | `theorem` | [GradedAlgebra.ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d.lean/declarations/gradedalgebra-apply--9e5ac1248bf99a78565b8015.md) | 40 | `result-track:9e5ac1248bf99a78565b80159a89757863fdf03ad3269a5041c9d56ea23389d7` |
| 3 | `instance` | [gradedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d.lean/declarations/gradedalgebra--fe0d052689d1009d60e0d0b1.md) | 49 | `declaration-track:fe0d052689d1009d60e0d0b1713f3b3ec2bef96cbf081f333f1eb5d475f71276` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
