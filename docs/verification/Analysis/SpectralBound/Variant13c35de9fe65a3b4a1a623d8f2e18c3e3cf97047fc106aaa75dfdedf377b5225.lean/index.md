# Verification target: GRWTSK.Analysis.SpectralBound.Variant13c35de9fe65a3b4a1a623d8f2e18c3e3cf97047fc106aaa75dfdedf377b5225

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a29fc61941d1e3b9556d35c39b7ea0e198f94a07",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpectralBound/Variant13c35de9fe65a3b4a1a623d8f2e18c3e3cf97047fc106aaa75dfdedf377b5225.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SpectralBound/Variant13c35de9fe65a3b4a1a623d8f2e18c3e3cf97047fc106aaa75dfdedf377b5225.lean/index.md) · [Full source](../../../../mathematics/Analysis/SpectralBound/Variant13c35de9fe65a3b4a1a623d8f2e18c3e3cf97047fc106aaa75dfdedf377b5225.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a29fc61941d1e3b9556d35c39b7ea0e198f94a07`.

Source path: `GRWTSK/Analysis/SpectralBound/Variant13c35de9fe65a3b4a1a623d8f2e18c3e3cf97047fc106aaa75dfdedf377b5225.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpectralBound/Variant13c35de9fe65a3b4a1a623d8f2e18c3e3cf97047fc106aaa75dfdedf377b5225.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.AbelReynolds.DiscrepancyTrace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SpectralBoundKind](../../../../mathematics/Analysis/SpectralBound/Variant13c35de9fe65a3b4a1a623d8f2e18c3e3cf97047fc106aaa75dfdedf377b5225.lean/declarations/spectralboundkind--e0ea77f9163a73a27af93811.md) | 30 | `declaration-track:e0ea77f9163a73a27af938116d2164ffbc2e486bf5b4f4f92cdf047856d5a8fb` |
| 2 | `structure` | [SameSpectrumControl](../../../../mathematics/Analysis/SpectralBound/Variant13c35de9fe65a3b4a1a623d8f2e18c3e3cf97047fc106aaa75dfdedf377b5225.lean/declarations/samespectrumcontrol--232dc89eef20c4a3fba2c42d.md) | 39 | `declaration-track:232dc89eef20c4a3fba2c42d5b8d5a33fb484be07905eae588b245839201f16f` |
| 3 | `theorem` | [spectral_sum_bound](../../../../mathematics/Analysis/SpectralBound/Variant13c35de9fe65a3b4a1a623d8f2e18c3e3cf97047fc106aaa75dfdedf377b5225.lean/declarations/spectral-sum-bound--81c9264875d9f25cd9c3c07b.md) | 81 | `result-track:81c9264875d9f25cd9c3c07b116d1775086b2d0062b95e388c327100b6914df7` |
| 4 | `theorem` | [centeredDiscrepancy_bound](../../../../mathematics/Analysis/SpectralBound/Variant13c35de9fe65a3b4a1a623d8f2e18c3e3cf97047fc106aaa75dfdedf377b5225.lean/declarations/centereddiscrepancy-bound--5d6d0012415e760e4ac55632.md) | 108 | `result-track:5d6d0012415e760e4ac5563278c71908c67ab8b7be9f6df47546d267f6b06883` |
| 5 | `theorem` | [centeredDiscrepancy_squareRootLog_bound](../../../../mathematics/Analysis/SpectralBound/Variant13c35de9fe65a3b4a1a623d8f2e18c3e3cf97047fc106aaa75dfdedf377b5225.lean/declarations/centereddiscrepancy-squarerootlog-bound--bfeddc7293e928dcfbd946b8.md) | 131 | `result-track:bfeddc7293e928dcfbd946b8456a1d6ea32cf77cd72d67c54897ca8a635a6984` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
