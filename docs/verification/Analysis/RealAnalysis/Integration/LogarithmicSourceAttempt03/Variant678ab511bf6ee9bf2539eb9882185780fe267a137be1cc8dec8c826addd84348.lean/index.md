# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicSourceAttempt03.Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15da8f59a8d73ddab42a1a9eba1e5250a497effc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15da8f59a8d73ddab42a1a9eba1e5250a497effc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean/declarations/positiveloglift--18bacc6f2a61cfadb5f81e41.md) | 18 | `declaration-track:18bacc6f2a61cfadb5f81e417b34605cf4b91123233e34f70dfac2327c8177bb` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean/declarations/positiveloglift-exp--005eb093dde609183f784cfb.md) | 21 | `result-track:005eb093dde609183f784cfb84b8b4a79efecf739b1b20d4d534c95479a19229` |
| 3 | `theorem` | [exp_square_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean/declarations/exp-square-weight--7e703a751deb13ad6066f819.md) | 25 | `result-track:7e703a751deb13ad6066f819fafb51784d9a24dbe32b9f8fa8b85de6029f3e73` |
| 4 | `theorem` | [lift_square_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean/declarations/lift-square-jacobian--a90e55a36651a545a564ee53.md) | 31 | `result-track:a90e55a36651a545a564ee53abeb7d14346fd020b871a13ff4b223252a08faf0` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean/declarations/lift-square-integrable-iff--f85b06240b41ab551697243a.md) | 38 | `result-track:f85b06240b41ab551697243a62cba20b20bcfa9c6c43224a0b94876426fc07e4` |
| 6 | `theorem` | [lift_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean/declarations/lift-square-integral--b06a70ead51434978d2d1c6b.md) | 49 | `result-track:b06a70ead51434978d2d1c6b46fc09d13aa9f9c3d0cb7a37cb4aaf026113e061` |
| 7 | `def` | [actualLogSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean/declarations/actuallogsource--65ecbf107c4f172fe7cccfb4.md) | 60 | `declaration-track:65ecbf107c4f172fe7cccfb4e1fd01dc05736573efcbb9fa9e8344db7be72abc` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean/declarations/actuallogsource-square-integrable--47414c4d8f9fd182be09af9e.md) | 63 | `result-track:47414c4d8f9fd182be09af9e9a6d7f7206aba4a1cdbf56f494e98d88441cd98a` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean/declarations/actuallogsource-square-integral--1a115ac4d7cf40e6d8213ad5.md) | 67 | `result-track:1a115ac4d7cf40e6d8213ad5aebb2dd7aed10d9780178206ea289ebb69a91776` |
| 10 | `theorem` | [positiveLogLift_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant678ab511bf6ee9bf2539eb9882185780fe267a137be1cc8dec8c826addd84348.lean/declarations/positiveloglift-dilation--6c7738d0fb864317ceaf7151.md) | 72 | `result-track:6c7738d0fb864317ceaf71510d1acd6e4611a580b217320c24b953f9defb695d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
