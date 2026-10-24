# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualCriticalHalfCrude.Variant820e386f786c412b28c28fbd44d91bc297109f418412cb5ebe67b4a6997523fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "659ab92734014d8b7a8040d572884a32819f5919",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant820e386f786c412b28c28fbd44d91bc297109f418412cb5ebe67b4a6997523fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant820e386f786c412b28c28fbd44d91bc297109f418412cb5ebe67b4a6997523fc.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant820e386f786c412b28c28fbd44d91bc297109f418412cb5ebe67b4a6997523fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `659ab92734014d8b7a8040d572884a32819f5919`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant820e386f786c412b28c28fbd44d91bc297109f418412cb5ebe67b4a6997523fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant820e386f786c412b28c28fbd44d91bc297109f418412cb5ebe67b4a6997523fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualCenteredHalfZetaReduction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualCriticalHalfCrudeConstant](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant820e386f786c412b28c28fbd44d91bc297109f418412cb5ebe67b4a6997523fc.lean/declarations/actualcriticalhalfcrudeconstant--4ee86ce0104ca6ccd5f93e44.md) | 27 | `declaration-track:4ee86ce0104ca6ccd5f93e44b2b07d6514b6041c354fe4e18699afbda844133e` |
| 2 | `theorem` | [actualCriticalMoebiusHalf_abs_le_harmonic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant820e386f786c412b28c28fbd44d91bc297109f418412cb5ebe67b4a6997523fc.lean/declarations/actualcriticalmoebiushalf-abs-le-harmonic--7106fd0bfcbe29437ef578c3.md) | 31 | `result-track:7106fd0bfcbe29437ef578c30f40df2651f88c55a62c5e88b971e00a3e1d0ad1` |
| 3 | `theorem` | [half_harmonic_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant820e386f786c412b28c28fbd44d91bc297109f418412cb5ebe67b4a6997523fc.lean/declarations/half-harmonic-nonneg--04c49067538e78ec0343155a.md) | 41 | `result-track:04c49067538e78ec0343155a5f10cc03e50182234e2a9162e6f5a28748a02858` |
| 4 | `theorem` | [finiteHalfHarmonic_le_calibrated_sqrt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant820e386f786c412b28c28fbd44d91bc297109f418412cb5ebe67b4a6997523fc.lean/declarations/finitehalfharmonic-le-calibrated-sqrt--8e3d81ef39927b335ca57330.md) | 46 | `result-track:8e3d81ef39927b335ca5733019dad424c8b90e93419d6a967aecafaf44ab2d98` |
| 5 | `theorem` | [actualCenteredHalfZetaMain_abs_le_crude_sqrt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant820e386f786c412b28c28fbd44d91bc297109f418412cb5ebe67b4a6997523fc.lean/declarations/actualcenteredhalfzetamain-abs-le-crude-sqrt--25324c809d5135116892621b.md) | 59 | `result-track:25324c809d5135116892621b7546f372cddee6f5bb17b60a02a2920268615445` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
