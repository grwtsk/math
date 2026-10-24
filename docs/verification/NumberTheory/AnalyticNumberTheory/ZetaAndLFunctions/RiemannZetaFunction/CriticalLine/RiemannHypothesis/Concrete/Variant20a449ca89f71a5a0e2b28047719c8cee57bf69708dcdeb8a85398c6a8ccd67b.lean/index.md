# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Concrete.Variant20a449ca89f71a5a0e2b28047719c8cee57bf69708dcdeb8a85398c6a8ccd67b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbaa432c6e50fea59ade9bd15b49ba535d0da4c5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant20a449ca89f71a5a0e2b28047719c8cee57bf69708dcdeb8a85398c6a8ccd67b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant20a449ca89f71a5a0e2b28047719c8cee57bf69708dcdeb8a85398c6a8ccd67b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant20a449ca89f71a5a0e2b28047719c8cee57bf69708dcdeb8a85398c6a8ccd67b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbaa432c6e50fea59ade9bd15b49ba535d0da4c5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant20a449ca89f71a5a0e2b28047719c8cee57bf69708dcdeb8a85398c6a8ccd67b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant20a449ca89f71a5a0e2b28047719c8cee57bf69708dcdeb8a85398c6a8ccd67b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideA` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Concrete` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Traces` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.Traces` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.BridgeD` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.PP` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [concreteDataD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant20a449ca89f71a5a0e2b28047719c8cee57bf69708dcdeb8a85398c6a8ccd67b.lean/declarations/concretedatad--df66a5f9c23fe14fc0a3b0e4.md) | 44 | `declaration-track:df66a5f9c23fe14fc0a3b0e41a04a6ab49f55fa4aa22185b204bbbe60a46dbde` |
| 2 | `def` | [LocalHypsCoreDEventually](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant20a449ca89f71a5a0e2b28047719c8cee57bf69708dcdeb8a85398c6a8ccd67b.lean/declarations/localhypscoredeventually--a87dd0c0e0fb079e8de0bd5f.md) | 65 | `declaration-track:a87dd0c0e0fb079e8de0bd5f42d50577b376cb1669e10edc25c089bbefcaf3a2` |
| 3 | `lemma` | [evBound_of_eventuallyAtCoreD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant20a449ca89f71a5a0e2b28047719c8cee57bf69708dcdeb8a85398c6a8ccd67b.lean/declarations/evbound-of-eventuallyatcored--e1055a7298c38fb648ba0926.md) | 70 | `result-track:e1055a7298c38fb648ba0926892d5c42963c8afd85a729a77fb05eda2a2a2c03` |
| 4 | `lemma` | [autocorr_eq_zero_of_support](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant20a449ca89f71a5a0e2b28047719c8cee57bf69708dcdeb8a85398c6a8ccd67b.lean/declarations/autocorr-eq-zero-of-support--e12dc9228a5ae9755efd449a.md) | 89 | `result-track:e12dc9228a5ae9755efd449ac81f0c57c5096a17d505320efffced4487481a47` |
| 5 | `theorem` | [concreteFactsD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant20a449ca89f71a5a0e2b28047719c8cee57bf69708dcdeb8a85398c6a8ccd67b.lean/declarations/concretefactsd--5eb5dc433c34827eec5ca16b.md) | 108 | `result-track:5eb5dc433c34827eec5ca16b0a95eef104bd953dd10b222110fd513b3e1a5342` |
| 6 | `theorem` | [tracesBoundsD_concrete](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant20a449ca89f71a5a0e2b28047719c8cee57bf69708dcdeb8a85398c6a8ccd67b.lean/declarations/tracesboundsd-concrete--7105406ad2c318eeb077768e.md) | 245 | `result-track:7105406ad2c318eeb077768ec1b8855766150ff9c3f7e4673ad41a8a2ee7c8dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
