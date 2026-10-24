# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeilFormulaImport.Variantf392a0d72cc52d708d5206be1359a5e6924580599401e7f2d8049fb353b3c77f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc6b60ed55ae3a0836321fd64cd846dffe659479",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantf392a0d72cc52d708d5206be1359a5e6924580599401e7f2d8049fb353b3c77f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantf392a0d72cc52d708d5206be1359a5e6924580599401e7f2d8049fb353b3c77f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantf392a0d72cc52d708d5206be1359a5e6924580599401e7f2d8049fb353b3c77f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc6b60ed55ae3a0836321fd64cd846dffe659479`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantf392a0d72cc52d708d5206be1359a5e6924580599401e7f2d8049fb353b3c77f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantf392a0d72cc52d708d5206be1359a5e6924580599401e7f2d8049fb353b3c77f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.WeilEF.Main` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormulaTransport` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [carrier_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantf392a0d72cc52d708d5206be1359a5e6924580599401e7f2d8049fb353b3c77f.lean/declarations/carrier-eq--2739f49239de1d427e7581f5.md) | 31 | `result-track:2739f49239de1d427e7581f5f603453e5637e609634272ebdd4aa4d68deeed69` |
| 2 | `theorem` | [multiplicity_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantf392a0d72cc52d708d5206be1359a5e6924580599401e7f2d8049fb353b3c77f.lean/declarations/multiplicity-eq--519c455e2587562f04a96b0c.md) | 37 | `result-track:519c455e2587562f04a96b0c62efcccffdc9c2a1bbdf53c2fd9d3f9497c1ed34` |
| 3 | `theorem` | [weil_formula](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantf392a0d72cc52d708d5206be1359a5e6924580599401e7f2d8049fb353b3c77f.lean/declarations/weil-formula--79e39d5eeb3094a42af93f68.md) | 42 | `result-track:79e39d5eeb3094a42af93f68aba9ae47dc1b37b74419f4c96ca49777a408516f` |
| 4 | `theorem` | [paperFT_smoothKernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantf392a0d72cc52d708d5206be1359a5e6924580599401e7f2d8049fb353b3c77f.lean/declarations/paperft-smoothkernel--fce4755de0a9b72ab1449a8b.md) | 53 | `result-track:fce4755de0a9b72ab1449a8b6d201a71e7a5a8c2bbab660b866f27d2bbb7da64` |
| 5 | `theorem` | [smooth_kernel_literature_formula](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantf392a0d72cc52d708d5206be1359a5e6924580599401e7f2d8049fb353b3c77f.lean/declarations/smooth-kernel-literature-formula--7533d449ec29ae963a0907bf.md) | 59 | `result-track:7533d449ec29ae963a0907bf9e5cdb71d5a788528e6381e3c68aaea7175dc4df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
