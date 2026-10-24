# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualAbsoluteCutoffCost.Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c057b5fa29778b9671ce287235a06ab5d31ea417",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c057b5fa29778b9671ce287235a06ab5d31ea417`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualPositiveCutoffFlux` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [absoluteCutoffCostAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/absolutecutoffcostat--f8e3699680e6613a93bd9301.md) | 26 | `declaration-track:f8e3699680e6613a93bd9301507d14bd63343a22fb00b05512fdb8b09f0e9101` |
| 2 | `def` | [absoluteCutoffCost](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/absolutecutoffcost--a8f296487b4ec283831f32d8.md) | 30 | `declaration-track:a8f296487b4ec283831f32d8ffcf55ce97cd6681911788f1d18c0ce56b6cd602` |
| 3 | `theorem` | [moebius_twelve_mul_eq_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/moebius-twelve-mul-eq-zero--5b4b9ab9116f5fd3a20315a4.md) | 34 | `result-track:5b4b9ab9116f5fd3a20315a42ffe2d140571c2b51cee3341f821e1457fdc7880` |
| 4 | `theorem` | [vonMangoldt_twelve_mul_eq_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/vonmangoldt-twelve-mul-eq-zero--52fe790b7c66182ad84d7ce5.md) | 44 | `result-track:52fe790b7c66182ad84d7ce50ba63f1ebd57f291390d6523b8dc37b92ada3b35` |
| 5 | `theorem` | [twelfth_event_flux_eq_log](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/twelfth-event-flux-eq-log--2219df8e033921e112a85e66.md) | 59 | `result-track:2219df8e033921e112a85e666c023f5f387d8d420030a88819ccfac59f3e6a16` |
| 6 | `theorem` | [twelfth_event_mem_inventory](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/twelfth-event-mem-inventory--2de93a8f312e9980d765785a.md) | 73 | `result-track:2de93a8f312e9980d765785ae189f7a0ea43c533c070f75e8faa9aeb940a2b60` |
| 7 | `theorem` | [twelfth_event_legal_at_actual_scale](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/twelfth-event-legal-at-actual-scale--b530f7003f27a587a7db60bd.md) | 81 | `result-track:b530f7003f27a587a7db60bd13a8aa02b0d0eefb077faeb79c8de1ad0f4aa417` |
| 8 | `theorem` | [twelfth_event_complete_balance](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/twelfth-event-complete-balance--0eec17171c54b9f0c58bebc8.md) | 90 | `result-track:0eec17171c54b9f0c58bebc887b519caf213719dc4cc61721bdcf2a27f9a1d16` |
| 9 | `theorem` | [twelfth_event_log_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/twelfth-event-log-lower--c9853a98bee663dd1d626a37.md) | 103 | `result-track:c9853a98bee663dd1d626a37ae9d32587cd50e16b0a2f6b1fe1d315760c3c796` |
| 10 | `theorem` | [harmonic_div_twelve_le_absoluteCutoffCostAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/harmonic-div-twelve-le-absolutecutoffcostat--67ed3ab5ac6d52775d0fec31.md) | 122 | `result-track:67ed3ab5ac6d52775d0fec31851e814d0aa9e3d2f4a5c6660bea43ba9d3a694b` |
| 11 | `theorem` | [harmonic_div_twelve_le_absoluteCutoffCost](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/harmonic-div-twelve-le-absolutecutoffcost--57f01e9e63cf692e9ef5d632.md) | 171 | `result-track:57f01e9e63cf692e9ef5d632b8962c62b326ba649401ca91a71354b724546dab` |
| 12 | `theorem` | [log_div_twelve_le_absoluteCutoffCost](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/log-div-twelve-le-absolutecutoffcost--18a13d529532f998507d74f8.md) | 177 | `result-track:18a13d529532f998507d74f88c0f60d4e5c4fcb3cd08d316f740d506b6aa2238` |
| 13 | `theorem` | [vaughanCutoff_sqrt_twelve_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/vaughancutoff-sqrt-twelve-mul--bf55addcb0a2badcc800d5f4.md) | 183 | `result-track:bf55addcb0a2badcc800d5f4ecd385f3dd10894994c5156caca147067e4626df` |
| 14 | `theorem` | [absoluteCutoffCost_unbounded](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/absolutecutoffcost-unbounded--5586a9850865bf891a655791.md) | 191 | `result-track:5586a9850865bf891a6557919132c0ec85f78068b04379c44449243c8545cc02` |
| 15 | `theorem` | [no_eventual_absoluteCutoffCost_upper_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/declarations/no-eventual-absolutecutoffcost-upper-bound--585308c032034927b7ff4b4b.md) | 216 | `result-track:585308c032034927b7ff4b4b75dd9de29d032d3e8a5a31761b2238b263ce0c4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
