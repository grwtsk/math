# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointRadius.Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3af1880ae6b6018bf8637dacfb0027821d4232cf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3af1880ae6b6018bf8637dacfb0027821d4232cf`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [envelope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/declarations/envelope--3e93c08990ab775b486c2c21.md) | 20 | `declaration-track:3e93c08990ab775b486c2c21a4faf402fa623918b34ff3b3bf669aa8af62cc4a` |
| 2 | `def` | [endpointBudget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/declarations/endpointbudget--b0018a540bd754769e11d406.md) | 21 | `declaration-track:b0018a540bd754769e11d4067732a490b3ebc57d6b0838578ec628522cb6097b` |
| 3 | `theorem` | [envelope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/declarations/envelope-hasderivat--355bd5649b93313058bab3e7.md) | 23 | `result-track:355bd5649b93313058bab3e7362160560ff7e924aaefce476155aa848a74386b` |
| 4 | `theorem` | [envelope_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/declarations/envelope-antitoneon--991f6e4ac964ea8b7ca65fae.md) | 31 | `result-track:991f6e4ac964ea8b7ca65faed50fe78999123fcd3e7ff8ab66aa5461dcd51bfb` |
| 5 | `theorem` | [envelope_le_peak](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/declarations/envelope-le-peak--7946cd233e0d2a1e06da9df1.md) | 42 | `result-track:7946cd233e0d2a1e06da9df178aefb1920fbbd91922024d26cfce23dfa338035` |
| 6 | `theorem` | [envelope_le_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/declarations/envelope-le-budget--54f28a1d25c3fa672aa1a4f0.md) | 71 | `result-track:54f28a1d25c3fa672aa1a4f06c565c4533e42f73b17656ffedd6509b2e6b9e80` |
| 7 | `theorem` | [envelope_peak_lt_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/declarations/envelope-peak-lt-three--25d91eb5d27023ad64750b16.md) | 79 | `result-track:25d91eb5d27023ad64750b167b2e827a7342d123584e8c49c69313e72def34ef` |
| 8 | `theorem` | [endpointBudget_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/declarations/endpointbudget-nonneg--4d9939fedd2400f4b60b07b6.md) | 90 | `result-track:4d9939fedd2400f4b60b07b6e87c3defa328390fe31e372ef168e4f59182e4ce` |
| 9 | `theorem` | [endpointBudget_eq_of_three_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/declarations/endpointbudget-eq-of-three-le--d33a841f47e07bbf297802bf.md) | 95 | `result-track:d33a841f47e07bbf297802bfd8ee7e123149ac17f322eff66dcf565b3c9319bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
