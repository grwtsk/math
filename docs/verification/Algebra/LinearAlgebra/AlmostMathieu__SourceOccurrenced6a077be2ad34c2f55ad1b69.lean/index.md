# Verification target: GRWTSK.Algebra.LinearAlgebra.AlmostMathieu

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "582e6d14b4efd8c14002738eb230efcc527df47d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AlmostMathieu.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrenced6a077be2ad34c2f55ad1b69.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrenced6a077be2ad34c2f55ad1b69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `582e6d14b4efd8c14002738eb230efcc527df47d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AlmostMathieu.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AlmostMathieu.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer`](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [potential](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrenced6a077be2ad34c2f55ad1b69.lean/declarations/potential--eb7766bb189c3a5537cf7c96.md) | 16 | `declaration-track:eb7766bb189c3a5537cf7c9652e42ffe07473679597e41963bb71264b2e1af11` |
| 2 | `def` | [transfer](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrenced6a077be2ad34c2f55ad1b69.lean/declarations/transfer--fd2182b0550f37787e452756.md) | 20 | `declaration-track:fd2182b0550f37787e452756970b7a79613e0e9f66e162b69548cfd2da037a43` |
| 3 | `theorem` | [recurrence_iff_transfer](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrenced6a077be2ad34c2f55ad1b69.lean/declarations/recurrence-iff-transfer--a487d1ea2724145d45486764.md) | 24 | `result-track:a487d1ea2724145d4548676467a9b0dc3cf2bfec6fe1e2ddc4aa7e18db8d88ac` |
| 4 | `theorem` | [det_transfer](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrenced6a077be2ad34c2f55ad1b69.lean/declarations/det-transfer--a9163771754a146b682346e9.md) | 30 | `result-track:a9163771754a146b682346e9386d7ada8a12a318285a3bc1f344260163b1b42b` |
| 5 | `theorem` | [det_one_does_not_bound_trace](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrenced6a077be2ad34c2f55ad1b69.lean/declarations/det-one-does-not-bound-trace--ca2e18af2fbba30474b0d57e.md) | 36 | `result-track:ca2e18af2fbba30474b0d57e6e00cf38699fb3a7409c2ccce7d0e68887d06d85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
