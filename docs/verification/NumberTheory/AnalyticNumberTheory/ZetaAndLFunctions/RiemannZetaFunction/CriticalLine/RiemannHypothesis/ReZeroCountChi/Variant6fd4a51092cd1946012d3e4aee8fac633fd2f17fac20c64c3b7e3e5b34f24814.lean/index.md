# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReZeroCountChi.Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aff84b91dc54960a7cf959c64fc17e59bb110fef",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aff84b91dc54960a7cf959c64fc17e59bb110fef`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.BacklundChi` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ReZeroCount` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [symL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/declarations/syml--aae72c36d812970ce57a8eeb.md) | 35 | `declaration-track:aae72c36d812970ce57a8eeb888503d7939e483b57fd5a7ecc82de9d3ff71839` |
| 2 | `lemma` | [symL_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/declarations/syml-analyticat--ddfe71bcc0f9149f408001dd.md) | 38 | `result-track:ddfe71bcc0f9149f408001dd268f622fb0acf2e32ac4235985aa2d3ff9548856` |
| 3 | `lemma` | [symL_ofReal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/declarations/syml-ofreal--29aeaf2b26c9cf2350820180.md) | 48 | `result-track:29aeaf2b26c9cf2350820180814d7fa04e51dca2a7de254ce3f62f0777c11531` |
| 4 | `theorem` | [reZeroSetL_card_le_uniform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/declarations/rezerosetl-card-le-uniform--650f1f7e39358bdc771a6d18.md) | 67 | `result-track:650f1f7e39358bdc771a6d18376fa5e88d35754f91057cfb83768aee89ee4eeb` |
| 5 | `theorem` | [backlund_horizontalChi_uniform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/declarations/backlund-horizontalchi-uniform--3943aca56810bdbc86555699.md) | 291 | `result-track:3943aca56810bdbc865556995997efdeec9dbb4c4460079e72b249d8681b1811` |
| 6 | `theorem` | [reZeroSetL_card_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/declarations/rezerosetl-card-le--b9ea16a7cf2c98103847d4d6.md) | 313 | `result-track:b9ea16a7cf2c98103847d4d6784dbcb642b187b476d3028b2a064bcdc4085098` |
| 7 | `theorem` | [backlund_horizontalChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/declarations/backlund-horizontalchi--d4578f9c1848c03d4b5b2ffd.md) | 334 | `result-track:d4578f9c1848c03d4b5b2ffdaf4d8f8301c2bce1c918d4a0ac908a2c2dda0784` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
