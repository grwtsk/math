# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PrimeFilterContractionGuard.Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d304043ce381f5d4de0e1e13501bc5b7ab79a84f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d304043ce381f5d4de0e1e13501bc5b7ab79a84f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frequency](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/frequency--22545a17ca1373acc87beeee.md) | 21 | `declaration-track:22545a17ca1373acc87beeeef22c973b769376e27b58d5d4d13d903e3bd65f82` |
| 2 | `def` | [oscillatoryRemainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/oscillatoryremainder--4cf26afd98af1b20de2b275b.md) | 23 | `declaration-track:4cf26afd98af1b20de2b275b3b059e354cb7b408a5d0d608766ee58a44ec793e` |
| 3 | `theorem` | [frequency_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/frequency-pos--8b506c92a63bf00a17e2ee8b.md) | 26 | `result-track:8b506c92a63bf00a17e2ee8b219256589105b65d2b3c6f78f35e858e2684655d` |
| 4 | `theorem` | [remainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/remainder-abs-le--02b21008d867714da2cb8344.md) | 29 | `result-track:02b21008d867714da2cb8344fafef9af0450f2f59b8bd8c9480ebbe611ba54f5` |
| 5 | `theorem` | [remainder_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/remainder-hasderivat--ea2f8131848722638d2b6c84.md) | 34 | `result-track:ea2f8131848722638d2b6c8409cbcb8638c4dd7e653ed654d27c2a4f533db1de` |
| 6 | `theorem` | [remainder_derivative_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/remainder-derivative-abs-le--50f9ef8d28309aa255cc69b2.md) | 47 | `result-track:50f9ef8d28309aa255cc69b2fcdbb7eaaee82a261027d71ceacaea1f2e7df16a` |
| 7 | `theorem` | [derivative_coefficient_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/derivative-coefficient-le--943d165ecb35d36b6b76b004.md) | 65 | `result-track:943d165ecb35d36b6b76b0047ff566a443883890b4624f9b6e1a6c192e64b246` |
| 8 | `theorem` | [remainder_derivative_abs_le_twenty_eight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/remainder-derivative-abs-le-twenty-eight--ed4a7be7e91a6a9df082445d.md) | 76 | `result-track:ed4a7be7e91a6a9df082445d42e35a69e32870b742aec17732706486334f587c` |
| 9 | `theorem` | [value_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/value-one--712cf2f75dcf41b12930448f.md) | 81 | `result-track:712cf2f75dcf41b12930448fb7730c23a1209b99e3d7853a5ae9fd5682013101` |
| 10 | `theorem` | [value_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/value-two--8cc469d44956fdbf471642da.md) | 84 | `result-track:8cc469d44956fdbf471642da4144f9dfaba68edd8fcc8d13d679a2e14254334d` |
| 11 | `theorem` | [prime_two_filter_value](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/prime-two-filter-value--f042dd148f05b54c9700546e.md) | 88 | `result-track:f042dd148f05b54c9700546ee3f7afed641580cab3f91f5a84bd1b6195de311c` |
| 12 | `theorem` | [prime_two_filter_not_contractive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/prime-two-filter-not-contractive--811a62c254c62893e940e628.md) | 95 | `result-track:811a62c254c62893e940e62871ce0402c9dde66b6ca18785da8b6a8411d3f41c` |
| 13 | `theorem` | [decay_exponents_do_not_force_contraction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/declarations/decay-exponents-do-not-force-contraction--44a43193bfb0db32a2ccea6b.md) | 101 | `result-track:44a43193bfb0db32a2ccea6b52573fcbf76e04a5a7c61c1990e0a2f4ff79c4b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
