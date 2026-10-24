# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrivateV3Input.Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a2337aaada374b14c548052f4740feeea352f06",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a2337aaada374b14c548052f4740feeea352f06`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtNorm` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [earlyPrimeBlock](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/declarations/earlyprimeblock--4736593aac43ab1f8d52214d.md) | 26 | `declaration-track:4736593aac43ab1f8d52214d81fb575cf9f960db231cb87e94f59727a071a536` |
| 2 | `def` | [complementaryPrimeBlocks](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/declarations/complementaryprimeblocks--79d33e2e9fe089f494ae174d.md) | 30 | `declaration-track:79d33e2e9fe089f494ae174d5f1c0fad7dcb910d3ee0723f0d53d7377c111b00` |
| 3 | `theorem` | [earlyCorrelation_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/declarations/earlycorrelation-ge--601f3a5a623ff064527d3923.md) | 35 | `result-track:601f3a5a623ff064527d392378cf9d4d98b9d72b7ad5ccb11daefbd4c6b19a15` |
| 4 | `theorem` | [earlyTailTest_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/declarations/earlytailtest-le--8da2673d8ae36d334cddb6d7.md) | 45 | `result-track:8da2673d8ae36d334cddb6d76caae6e99a18c2758cc78042acffa45ef4a3b71d` |
| 5 | `theorem` | [earlyPrimeBlock_le_mass](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/declarations/earlyprimeblock-le-mass--c711d69eaa6ba1090b6d77a7.md) | 70 | `result-track:c711d69eaa6ba1090b6d77a7428195e0c77f685ccb74b06646fe68c942275d9d` |
| 6 | `theorem` | [earlyPrimeMass_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/declarations/earlyprimemass-ge--3bddd335a4e7735d9c7822d0.md) | 89 | `result-track:3bddd335a4e7735d9c7822d0bb0878a9f8a83aae2a842913dca8a85e525abfe8` |
| 7 | `theorem` | [earlyPrimeBlock_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/declarations/earlyprimeblock-le--80962d8105caa7dad438de7d.md) | 98 | `result-track:80962d8105caa7dad438de7dc180a6901b1eb31f6420ba090d8b5e0b29bb72bf` |
| 8 | `theorem` | [earlyPrimeBlock_eventual_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/declarations/earlyprimeblock-eventual-bound--dbbf827fe3080ca87a9b7034.md) | 111 | `result-track:dbbf827fe3080ca87a9b7034582a22293ee73a02ea6293a1a43f32ccfb7feaae` |
| 9 | `theorem` | [primeSum_eq_early_add_complement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/declarations/primesum-eq-early-add-complement--fc678c9a1e4f03364846bf69.md) | 121 | `result-track:fc678c9a1e4f03364846bf69f350f16232cdbf0dfaefff6463da280415fc22ae` |
| 10 | `theorem` | [complementary_repayment_of_tail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variantbdcbf62c829aa80d6966be5901548bec0f5cc25dfa03e6015848ee3b3432edf1.lean/declarations/complementary-repayment-of-tail--0e48499ea5cc5fee9690c3de.md) | 130 | `result-track:0e48499ea5cc5fee9690c3def19c42b5664cdc4e68319f7d13807c967c806756` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
