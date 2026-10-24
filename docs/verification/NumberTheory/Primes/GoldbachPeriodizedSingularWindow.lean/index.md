# Verification target: GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c04cba84c6dd1708741ae14ac01ad2cc9c36f102",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c04cba84c6dd1708741ae14ac01ad2cc9c36f102`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachCircleWindowGeometry`](../../../../mathematics/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization`](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [unitPeriodPositive](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/unitperiodpositive--40a43e7c6db4dbb7bd465a8f.md) | 44 | `declaration-track:40a43e7c6db4dbb7bd465a8f1026ec2da051f0ee43a53577d01967425e9ad209` |
| 2 | `def` | [goldbachFiniteSingularKernelCircle](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/goldbachfinitesingularkernelcircle--b1d3c36321d4f113e1168ec6.md) | 48 | `declaration-track:b1d3c36321d4f113e1168ec63bc12d3c19e8935067f97022848fd1cc183fcf58` |
| 3 | `theorem` | [goldbachFiniteSingularKernel_eq_circle](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/goldbachfinitesingularkernel-eq-circle--cdb83c15a75544f44e5b073a.md) | 56 | `result-track:cdb83c15a75544f44e5b073a1e2a7363010ebc5fd902b13c3ef89336545e9416` |
| 4 | `theorem` | [continuous_goldbachFiniteSingularKernelCircle](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/continuous-goldbachfinitesingularkernelcircle--db6bed3266761d6c8fe0e4b5.md) | 65 | `result-track:db6bed3266761d6c8fe0e4b5f9d756cc79efc8e44894d8de7930363979578af0` |
| 5 | `theorem` | [periodic_goldbachFiniteSingularKernel](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/periodic-goldbachfinitesingularkernel--abefffa5104a91bd99552b13.md) | 72 | `result-track:abefffa5104a91bd99552b13f80f7c67d3b76a2ae4769f060c814e493bb594e7` |
| 6 | `def` | [goldbachCommonCircleSingularIntegral](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/goldbachcommoncirclesingularintegral--45ce1ee4a195d2adebdee6e2.md) | 83 | `declaration-track:45ce1ee4a195d2adebdee6e2a7895b38a967b2e5701011c6352289be9a8804fb` |
| 7 | `def` | [goldbachSymmetricRealSingularIntegral](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/goldbachsymmetricrealsingularintegral--70e48bcb0eea86743fa35da1.md) | 91 | `declaration-track:70e48bcb0eea86743fa35da171871034b3714d7e599646560df217c66af766a8` |
| 8 | `theorem` | [integral_Ioc_goldbachOffsetCircle](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/integral-ioc-goldbachoffsetcircle--e67729b934f3dd039446138b.md) | 100 | `result-track:e67729b934f3dd039446138b95c5a96e3bc52b7b0fc7b95fbde1949cfc4a8ce5` |
| 9 | `theorem` | [integral_goldbachCircleWindowPreimage_eq_common](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/integral-goldbachcirclewindowpreimage-eq-common--9e60c9b6924bbef50de975cd.md) | 128 | `result-track:9e60c9b6924bbef50de975cd69a8cd2dd1ade3e8be5cd6820f9c15f05cbbe121` |
| 10 | `theorem` | [goldbachProgressionArcSingularIntegral_eq_common](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/goldbachprogressionarcsingularintegral-eq-common--ff7a29476a460bfbe5e2472a.md) | 172 | `result-track:ff7a29476a460bfbe5e2472a40b24f6539d1e6de4a57afbf04e22854926e8c2b` |
| 11 | `theorem` | [centered_circleWindow_preimage_eq_Icc](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/centered-circlewindow-preimage-eq-icc--0ef6137d82a9f63b6f0e5bd4.md) | 183 | `result-track:0ef6137d82a9f63b6f0e5bd413f341cd6a67c6d39a03938f0be03547aceb82fe` |
| 12 | `theorem` | [goldbachCommonCircleSingularIntegral_eq_symmetric](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/goldbachcommoncirclesingularintegral-eq-symmetric--098c6a1589b754c957e87c5e.md) | 226 | `result-track:098c6a1589b754c957e87c5e7029fd29e86fd26b5f98a3f2b637f035230e34c0` |
| 13 | `theorem` | [goldbachRationalArcRadius_lt_half_of_denominator](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/goldbachrationalarcradius-lt-half-of-denominator--f67ffbd2d05e80aac000f3b9.md) | 291 | `result-track:f67ffbd2d05e80aac000f3b9ecf3227f9bf29d74fe9258eb0bbf06e6c1ce3ca6` |
| 14 | `theorem` | [goldbachRationalArcRadius_lt_half_of_global_scale](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/goldbachrationalarcradius-lt-half-of-global-scale--4bae8160c41650e62e22e324.md) | 320 | `result-track:4bae8160c41650e62e22e32459fb1646bf352804c818709caef26296884d9273` |
| 15 | `theorem` | [goldbachProgressionArcSingularIntegral_eq_symmetric](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/declarations/goldbachprogressionarcsingularintegral-eq-symmetric--5bec542ac54578dd80ddacb6.md) | 332 | `result-track:5bec542ac54578dd80ddacb6e908449ea4ae5d493712066760e65f43efaeae6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
