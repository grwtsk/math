# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimeHarmonicPrefix.Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f76186c9f6d7aa9724f2adaf5fdf3b5a8953482",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f76186c9f6d7aa9724f2adaf5fdf3b5a8953482`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeHarmonicPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/primeharmonicprefix--d807adc84a259a302e322859.md) | 13 | `declaration-track:d807adc84a259a302e3228591dfc5bf33199a3b7ff4b0c75e14e616ceaf7be3b` |
| 2 | `theorem` | [primeHarmonicPrefix_eq_log_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/primeharmonicprefix-eq-log-sum--b65a399f9eafa4b8c98c5436.md) | 18 | `result-track:b65a399f9eafa4b8c98c543654d18d77d08b572d7dc165fbfe55cbc91dfe3490` |
| 3 | `theorem` | [primeHarmonicPrefix_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/primeharmonicprefix-zero--556ff62a7411abc460580a60.md) | 28 | `result-track:556ff62a7411abc460580a6067071de0df2caa5cda44c0869270da8faef66638` |
| 4 | `theorem` | [primeHarmonicPrefix_log_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/primeharmonicprefix-log-two--b5cfc9dde84336dafd926c46.md) | 32 | `result-track:b5cfc9dde84336dafd926c461c797c4f21d560e31b28757ccb7c180870f31e54` |
| 5 | `theorem` | [thetaLogError_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/thetalogerror-zero--eb4121f707042ea24b879cce.md) | 37 | `result-track:eb4121f707042ea24b879ccea50fb75fe949c43ba42597f2ff4ea678b2f7ec74` |
| 6 | `def` | [primeWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/primeweight--b5f63a656d7201b520c4784f.md) | 40 | `declaration-track:b5f63a656d7201b520c4784f60e8e581bd298eddbd693744626b867279cd3801` |
| 7 | `theorem` | [primeWeight_prefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/primeweight-prefix--17965da3a744f8b5991526fa.md) | 42 | `result-track:17965da3a744f8b5991526fab4a7757a71cd8c689767862aa5b1a65de91330db` |
| 8 | `theorem` | [primeHarmonicPrefix_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/primeharmonicprefix-eq--04f2d92bb8949a8709272c4a.md) | 47 | `result-track:04f2d92bb8949a8709272c4a6fe7aad96685fe69177c2b39659bfa92e3a11956` |
| 9 | `theorem` | [theta_div_sq_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/theta-div-sq-integrableon--7b5f18173128d13ae1becfad.md) | 77 | `result-track:7b5f18173128d13ae1becfade0a099806dd6987acfc0133b625910e8cb78426a` |
| 10 | `theorem` | [primeHarmonicPrefix_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/primeharmonicprefix-abel--2b39348f7ace0b2bc462dac5.md) | 92 | `result-track:2b39348f7ace0b2bc462dac5602b59f0358a6c1e464823f29627ff268f5eab78` |
| 11 | `theorem` | [thetaLogError_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/thetalogerror-intervalintegrable--db062ddbce292dcaa3a99922.md) | 123 | `result-track:db062ddbce292dcaa3a9992267a135255cd36591ed3f45565d53921b83e71718` |
| 12 | `theorem` | [theta_div_sq_log_substitution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/theta-div-sq-log-substitution--e3b1f2b0c72eeed86649deff.md) | 143 | `result-track:e3b1f2b0c72eeed86649deffa40c9fb736be7a190a8e60dae4e06768f2c2f90a` |
| 13 | `theorem` | [primeHarmonicPrefix_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/declarations/primeharmonicprefix-formula--35cd77e1d4b227db7d6d8c1f.md) | 160 | `result-track:35cd77e1d4b227db7d6d8c1fa7d469d877f5f75a59a68d921a52c9781c172333` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
