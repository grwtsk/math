# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualArithmeticIntercept.Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d81980f3258749d18e5830cbb84e4ba17349d93",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d81980f3258749d18e5830cbb84e4ba17349d93`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean.json)

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
| 1 | `theorem` | [exponential_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean/declarations/exponential-integral--afdd1b2ce11afd0ed80e1403.md) | 21 | `result-track:afdd1b2ce11afd0ed80e140375878b3d5de329b203e82aa8cbc9057be2b99adf` |
| 2 | `theorem` | [linear_exponential_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean/declarations/linear-exponential-integral--dadef135f2dc1885b4efbfcd.md) | 25 | `result-track:dadef135f2dc1885b4efbfcd2f06811081e4fd20bb6b8a4611272e762b219caa` |
| 3 | `theorem` | [actual_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean/declarations/actual-laplace-integrable--efdb4e4173eefa46ab7e9faa.md) | 31 | `result-track:efdb4e4173eefa46ab7e9faa133aedab7e3ada1bee76a2a5903e6a82256add6d` |
| 4 | `theorem` | [actual_laplace_compensation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean/declarations/actual-laplace-compensation--dadf0eba5ef5b6b3f8ea6a2d.md) | 41 | `result-track:dadf0eba5ef5b6b3f8ea6a2dee9320a0a7fd979fe96e4a01b4dc4d2b0afe0287` |
| 5 | `theorem` | [actual_laplace_eq_LSeries_quotient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean/declarations/actual-laplace-eq-lseries-quotient--984b134d5de46c12a9a958b5.md) | 59 | `result-track:984b134d5de46c12a9a958b5cc69e10c987df471607245fac881ab16e5b5fadc` |
| 6 | `theorem` | [real_right_tendsto_complex_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean/declarations/real-right-tendsto-complex-positive--4757f9ec5abdeb052f1a8f70.md) | 72 | `result-track:4757f9ec5abdeb052f1a8f701b86f4c44137284435350bf603312a36839636eb` |
| 7 | `theorem` | [actual_laplace_tendsto_coefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean/declarations/actual-laplace-tendsto-coefficient--2ef40a832ef7d5199afd177e.md) | 81 | `result-track:2ef40a832ef7d5199afd177e5cb79d8caf2e36468de823605333a57930b58e2b` |
| 8 | `theorem` | [actual_remainder_integral_eq_coefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24.lean/declarations/actual-remainder-integral-eq-coefficient--32a7757ddb3c1bb567db09bd.md) | 94 | `result-track:32a7757ddb3c1bb567db09bd8e84bd7b8eef2b511aaf4b1e11611208b3af648a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
