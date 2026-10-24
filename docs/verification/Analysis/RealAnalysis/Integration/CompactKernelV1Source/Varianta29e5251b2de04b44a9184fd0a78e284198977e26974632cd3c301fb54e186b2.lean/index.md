# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CompactKernelV1Source.Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42a97b555ddfdfd12aca1a11dc0a2f703ea8efb1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42a97b555ddfdfd12aca1a11dc0a2f703ea8efb1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardHalfKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean/declarations/forwardhalfkernel--8cbf2bed01363b3cce327f15.md) | 17 | `declaration-track:8cbf2bed01363b3cce327f1532c03e01ae9b952e466dcaa9966fc36da415f96d` |
| 2 | `theorem` | [forwardHalfKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean/declarations/forwardhalfkernel-continuous--bf3ec4881abad403a67bb749.md) | 22 | `result-track:bf3ec4881abad403a67bb7498c26a92777eb73f7ea3dc173e9ff66b97fef69fe` |
| 3 | `theorem` | [forwardHalfKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean/declarations/forwardhalfkernel-hascompactsupport--88d3abc3df20f4e514161d11.md) | 30 | `result-track:88d3abc3df20f4e514161d11f70fec55243158cdf554801b60a825ef65574e26` |
| 4 | `theorem` | [forwardHalfKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean/declarations/forwardhalfkernel-integrable--f9471154f678d5802b470a20.md) | 52 | `result-track:f9471154f678d5802b470a204fd13887e74a6b731158207106385fd1eb57ab1c` |
| 5 | `theorem` | [sourceCorrelation_eq_plus_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean/declarations/sourcecorrelation-eq-plus-shift--d08651e3d3e647c104785da8.md) | 58 | `result-track:d08651e3d3e647c104785da85313f50c1c56ec7df0df43a549a2526f022d9f34` |
| 6 | `theorem` | [negativeSmoothMoment_eq_forward_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean/declarations/negativesmoothmoment-eq-forward-integral--76f34443b760e38a8d3c52af.md) | 66 | `result-track:76f34443b760e38a8d3c52af0bbae92145b95ac279ccc002e82374206af6298f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
