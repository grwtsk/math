# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuadraticMap.Variantc852a010a999766f2c1cf541ad64584bd0106265160f9f7b6708809e92e9f72d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fafeeca5a556af260be514724e536216ab64bdc7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variantc852a010a999766f2c1cf541ad64584bd0106265160f9f7b6708809e92e9f72d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variantc852a010a999766f2c1cf541ad64584bd0106265160f9f7b6708809e92e9f72d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variantc852a010a999766f2c1cf541ad64584bd0106265160f9f7b6708809e92e9f72d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fafeeca5a556af260be514724e536216ab64bdc7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variantc852a010a999766f2c1cf541ad64584bd0106265160f9f7b6708809e92e9f72d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variantc852a010a999766f2c1cf541ad64584bd0106265160f9f7b6708809e92e9f72d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LineDeriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasLineDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variantc852a010a999766f2c1cf541ad64584bd0106265160f9f7b6708809e92e9f72d.lean/declarations/haslinederivat--facca91a66dbcb7d08fefc28.md) | 32 | `result-track:facca91a66dbcb7d08fefc28cec485fe6e3d0a9ce91873248098e49bd308453a` |
| 2 | `theorem` | [lineDifferentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variantc852a010a999766f2c1cf541ad64584bd0106265160f9f7b6708809e92e9f72d.lean/declarations/linedifferentiableat--9f59cf60af07e7403fb3d1b6.md) | 39 | `result-track:9f59cf60af07e7403fb3d1b63ee6d20e1ae207814a1a39ce3b9f4b4bf9139d49` |
| 3 | `theorem` | [lineDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variantc852a010a999766f2c1cf541ad64584bd0106265160f9f7b6708809e92e9f72d.lean/declarations/linederiv--8446944b7dfb1cc7987a46a8.md) | 43 | `result-track:8446944b7dfb1cc7987a46a8be6d3933d022b7243b68a2cc36616c83c411cf04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
