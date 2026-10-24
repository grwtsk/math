# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimeHarmonicPrefixStatements.Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37e9823f2adddfdab44dfdff9376433ba17d151c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37e9823f2adddfdab44dfdff9376433ba17d151c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeHarmonicPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/primeharmonicprefix--93a7441c7c9cd86b9cc2c843.md) | 21 | `declaration-track:93a7441c7c9cd86b9cc2c84339da2df38e844bfd3132d4c05d925050f670403d` |
| 2 | `theorem` | [primeHarmonicPrefix_eq_log_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/primeharmonicprefix-eq-log-sum--277d4137f092ae3bfe38a149.md) | 26 | `result-track:277d4137f092ae3bfe38a149a93d172c50fb4e8e394805f750e5f15ab8d1afe0` |
| 3 | `theorem` | [primeHarmonicPrefix_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/primeharmonicprefix-zero--e21aa9ee5af9c80eed09c1fb.md) | 36 | `result-track:e21aa9ee5af9c80eed09c1fb5354c6fb9444643b616769dbc6db2104fcacfac7` |
| 4 | `theorem` | [primeHarmonicPrefix_log_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/primeharmonicprefix-log-two--3727ae6dc2e39e151567a34b.md) | 40 | `result-track:3727ae6dc2e39e151567a34b0487c03981c0b6144ad3ab6222c9c7248e4c5ad1` |
| 5 | `theorem` | [thetaLogError_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/thetalogerror-zero--527b81350932fb648d166fe3.md) | 45 | `result-track:527b81350932fb648d166fe35fa3e8a6fbb15ab62e1e19eda06652f678659e47` |
| 6 | `def` | [primeWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/primeweight--d53fae56c3c3864e40e7713d.md) | 48 | `declaration-track:d53fae56c3c3864e40e7713ded784d0e95a80d6eca50db4453ad4ec09894a560` |
| 7 | `theorem` | [primeWeight_prefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/primeweight-prefix--f466c8787d947b3cd4b0128b.md) | 50 | `result-track:f466c8787d947b3cd4b0128b9397c3dd03a7e454ab16cd021694a102a74d8d88` |
| 8 | `theorem` | [primeHarmonicPrefix_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/primeharmonicprefix-eq--4131687b691772c426bfd74a.md) | 55 | `result-track:4131687b691772c426bfd74a78721c1c359c7643cb35351db36f018d278ce845` |
| 9 | `theorem` | [theta_div_sq_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/theta-div-sq-integrableon--42bf3e5596676acde0bf03d2.md) | 85 | `result-track:42bf3e5596676acde0bf03d23e528df3653bde54818227e58100915b802b5102` |
| 10 | `theorem` | [primeHarmonicPrefix_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/primeharmonicprefix-abel--dd3f719530d30e3ea2cd029d.md) | 100 | `result-track:dd3f719530d30e3ea2cd029d0740bf37ea899d1eee0592f2af89ac3997af747d` |
| 11 | `theorem` | [thetaLogError_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/thetalogerror-intervalintegrable--15bc2e3b158db14967a176f0.md) | 131 | `result-track:15bc2e3b158db14967a176f0711f1b7b51b799d6f50887448eb5192be4123dec` |
| 12 | `theorem` | [theta_div_sq_log_substitution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/theta-div-sq-log-substitution--29a22c73a010ef481f45b1bb.md) | 151 | `result-track:29a22c73a010ef481f45b1bbf1a1e7cd9606250c1cb166d7c45bcfba07c36cae` |
| 13 | `theorem` | [primeHarmonicPrefix_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/primeharmonicprefix-formula--a511287b52e8cc5f2e44e23f.md) | 168 | `result-track:a511287b52e8cc5f2e44e23fdbf2a3869e49f3e404e25cde620b5c350b0196ae` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/example--bdfe994d191ccb8b091e070f.md) | 187 | `declaration-track:bdfe994d191ccb8b091e070f84be93e0971d7790e31df458409df757c145b731` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/example--88db465343262690ecfb2c86.md) | 191 | `declaration-track:88db465343262690ecfb2c86e611fb1d9ae69cb36333bbdab1ec71acc293c619` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/example--264732f6621748a58e064817.md) | 197 | `declaration-track:264732f6621748a58e0648171c817109cb6cfe32ec2be6e71a386a58f829fcb4` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/example--7c9a78918b3459a3cfc550bb.md) | 200 | `declaration-track:7c9a78918b3459a3cfc550bb29a1154e87b43f55e10328556a95282a9d4b5b91` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/example--6ebdc946242d9ac3e8f0f748.md) | 203 | `declaration-track:6ebdc946242d9ac3e8f0f7485d7d8cc3a3b170c258c97c9960e7de361301720e` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/example--e7c6b2a1a4c44596d15b1f40.md) | 206 | `declaration-track:e7c6b2a1a4c44596d15b1f408be91e9de8846ccb6bf0fc4a502ba89cf7ce468f` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/example--e477b52bd11516d88cd91c6e.md) | 210 | `declaration-track:e477b52bd11516d88cd91c6ed6688c0e0e92856dbbde9fc759ff9dce88e087a1` |
| 21 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/example--8b069d3da73965887b074114.md) | 216 | `declaration-track:8b069d3da73965887b0741141263ba48aeb9f6857a927e74590363703c84a8ff` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/example--70f5d58437af64a1e47e23f1.md) | 220 | `declaration-track:70f5d58437af64a1e47e23f1f6c810784b51fd71d01fef88f455cd7b0752fbf8` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantc271624e004835c7be308f9eb612468f91571b3b9eaf71c5440a0572f0b0111e.lean/declarations/example--78af00924d8677d3510ff0a7.md) | 225 | `declaration-track:78af00924d8677d3510ff0a78031bbae7f32f64a5abff8d52ec9a93fc04d031f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
