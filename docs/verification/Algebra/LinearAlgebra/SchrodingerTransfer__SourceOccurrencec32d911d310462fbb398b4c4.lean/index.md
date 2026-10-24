# Verification target: GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff6b73545cb92a4bc48a99962c3f58695f6d545e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff6b73545cb92a4bc48a99962c3f58695f6d545e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SchrodingerTransfer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schrodingerTransfer](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/declarations/schrodingertransfer--47d3f153270244722752228e.md) | 40 | `declaration-track:47d3f153270244722752228e933b3784ec0562c2ac04ec2441c66347c4c5c5ca` |
| 2 | `def` | [rawState](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/declarations/rawstate--6a71c554c52c2186ba5b703d.md) | 46 | `declaration-track:6a71c554c52c2186ba5b703d3f629ca9c696ebbd12c339ef403d978d3b76c720` |
| 3 | `theorem` | [schrodinger_recurrence_iff_transfer](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/declarations/schrodinger-recurrence-iff-transfer--7766da6b69d5b6f8e096d333.md) | 52 | `result-track:7766da6b69d5b6f8e096d333ceddf7ff961afcdf95deaeae772e6445e469ce0b` |
| 4 | `theorem` | [det_schrodingerTransfer](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/declarations/det-schrodingertransfer--f50ea380fc4d9c11aded19d1.md) | 77 | `result-track:f50ea380fc4d9c11aded19d10af094169bbf1df34293cf04a383fc75f00a15bc` |
| 5 | `def` | [schrodingerSL](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/declarations/schrodingersl--2df338687c7dc4ccc8a08c25.md) | 84 | `declaration-track:2df338687c7dc4ccc8a08c2501b45b53355cc1bc85bec3cb6ecb202f151e5674` |
| 6 | `theorem` | [schrodinger_same_SL_syntax_not_equal](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/declarations/schrodinger-same-sl-syntax-not-equal--f23bb899254cbaf12cf6651e.md) | 91 | `result-track:f23bb899254cbaf12cf6651ed415567bac74e80d833fd3fb878fd6de11ae8110` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
