# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualArithmeticInterceptAttempt01.Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff9cd9ab04dd740fab8f1b3a6e7a9f7e8fc6684d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff9cd9ab04dd740fab8f1b3a6e7a9f7e8fc6684d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMangoldtLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `ArithmeticLaurent` — import line 2; external provider; requires a separately pinned dependency.
- `MangoldtLaplaceIntegrability` — import line 3; external provider; requires a separately pinned dependency.
- `SourceRemainderLaplace` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exponential_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/declarations/exponential-integral--5e129cbcc52f53265063b2a3.md) | 21 | `result-track:5e129cbcc52f53265063b2a37215f7ba86ab8dd999e3df65cc0e2466538fa83d` |
| 2 | `theorem` | [linear_exponential_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/declarations/linear-exponential-integral--4bb6b08c87e45792d73017af.md) | 25 | `result-track:4bb6b08c87e45792d73017af085b37427bc88c409d57bf615903cb820e606d32` |
| 3 | `theorem` | [actual_laplace_compensation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/declarations/actual-laplace-compensation--e098cc0642b38614608c6af8.md) | 31 | `result-track:e098cc0642b38614608c6af8b0456bec32af67d44692550427a3dc733a465418` |
| 4 | `theorem` | [actual_laplace_eq_LSeries_quotient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/declarations/actual-laplace-eq-lseries-quotient--becca62e23494541ab180268.md) | 48 | `result-track:becca62e23494541ab1802687e56f8799026762e43c496bcdefb1383a9c79a09` |
| 5 | `theorem` | [real_right_tendsto_complex_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/declarations/real-right-tendsto-complex-positive--983cf5f664fece2e9f72e5a5.md) | 62 | `result-track:983cf5f664fece2e9f72e5a5ef2c339e8b0b72abe4db5d00339c1a4452f9ac4e` |
| 6 | `theorem` | [actual_laplace_tendsto_coefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/declarations/actual-laplace-tendsto-coefficient--0ec704342eb1f4135beea2c7.md) | 71 | `result-track:0ec704342eb1f4135beea2c74d2996efcae20087fd96c5341ebb2ea52f23c803` |
| 7 | `theorem` | [actual_remainder_integral_eq_coefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/declarations/actual-remainder-integral-eq-coefficient--a16e68f6e6ba14f2be3a4021.md) | 86 | `result-track:a16e68f6e6ba14f2be3a40216eddf74753e691649f5d35daa306c59293f8a51f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
