# Verification target: GRWTSK.Analysis.MeasureTheory.OperatorScout.Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e69671caf7367c1dadebdfd8264c0771a58cf50e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e69671caf7367c1dadebdfd8264c0771a58cf50e`.

Source path: `GRWTSK/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean/declarations/fullh--fbaeb0332c6c7dd3f30d79bc.md) | 20 | `declaration-track:fbaeb0332c6c7dd3f30d79bcf5e67376c4a9318212b6881a1ca5692fc64bc5ed` |
| 2 | `def` | [fullShift](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean/declarations/fullshift--2e68dd40d8194e066ca3be0b.md) | 22 | `declaration-track:2e68dd40d8194e066ca3be0bd76460e58fbcb7faec63e58c48f933bbb50a7725` |
| 3 | `theorem` | [fullShift_ae](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean/declarations/fullshift-ae--2cbc318c146b281f023b6323.md) | 25 | `result-track:2cbc318c146b281f023b6323f00545e7bd1b7a2ad917acd7121e9d10f88ade12` |
| 4 | `theorem` | [fullShift_continuous](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean/declarations/fullshift-continuous--cc000807b228db406391ee79.md) | 29 | `result-track:cc000807b228db406391ee79e17dfe0bd6f2962da76304e2293798eebe752288` |
| 5 | `theorem` | [halfLine_zeroExtension_memLp](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean/declarations/halfline-zeroextension-memlp--e855e191b21d16be3d915449.md) | 37 | `result-track:e855e191b21d16be3d9154494d26e4537c36e6726f12fbb9457c4296b66c4f63` |
| 6 | `theorem` | [weighted_shift_integrable](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean/declarations/weighted-shift-integrable--cbcf64461525fa1a73b3e844.md) | 42 | `result-track:cbcf64461525fa1a73b3e844e08443a959dc4a9fc11b109e38bc820eec45a061` |
| 7 | `def` | [bochnerVector](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean/declarations/bochnervector--529e889f5a3e72f8944d775a.md) | 52 | `declaration-track:529e889f5a3e72f8944d775a41f2479e1333d7796a11419c7bc242e0807d8831` |
| 8 | `theorem` | [bochnerVector_norm_le](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731.lean/declarations/bochnervector-norm-le--5f5ea91c9eb1908b95e5d92e.md) | 54 | `result-track:5f5ea91c9eb1908b95e5d92ec1cd9d5a1c44acd6610b49356a9af01740c5e52d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
