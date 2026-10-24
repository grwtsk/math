# Verification target: GRWTSK.Analysis.SpectralBound.Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6f0b69854b9801df56ebf5335d4e4c80c93a94b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpectralBound/Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SpectralBound/Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6.lean/index.md) · [Full source](../../../../mathematics/Analysis/SpectralBound/Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6f0b69854b9801df56ebf5335d4e4c80c93a94b`.

Source path: `GRWTSK/Analysis/SpectralBound/Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpectralBound/Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathematics.AbelReynolds.DiscrepancyTrace` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SpectralBoundKind](../../../../mathematics/Analysis/SpectralBound/Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6.lean/declarations/spectralboundkind--b6086af590aac7de2ebe65c1.md) | 22 | `declaration-track:b6086af590aac7de2ebe65c10c6ffb8bf6965c88cd526e3fd19b4a657d13d444` |
| 2 | `structure` | [SameSpectrumControl](../../../../mathematics/Analysis/SpectralBound/Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6.lean/declarations/samespectrumcontrol--aee9ab798437bcb673a8461f.md) | 31 | `declaration-track:aee9ab798437bcb673a8461fa2039ad5e14afeea3aa82a1f7e1f233265d5ec03` |
| 3 | `theorem` | [spectral_sum_bound](../../../../mathematics/Analysis/SpectralBound/Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6.lean/declarations/spectral-sum-bound--1457ce7d216d3d746237e591.md) | 73 | `result-track:1457ce7d216d3d746237e591ff683bb9c65143c2e399adbd4f1764ea44cb5838` |
| 4 | `theorem` | [centeredDiscrepancy_bound](../../../../mathematics/Analysis/SpectralBound/Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6.lean/declarations/centereddiscrepancy-bound--ed75d3dee430c412325d535d.md) | 100 | `result-track:ed75d3dee430c412325d535d8e522199070e16fe68c475835a9970776a292c5e` |
| 5 | `theorem` | [centeredDiscrepancy_squareRootLog_bound](../../../../mathematics/Analysis/SpectralBound/Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6.lean/declarations/centereddiscrepancy-squarerootlog-bound--68f1e3be75da26a7a54a3325.md) | 123 | `result-track:68f1e3be75da26a7a54a33254498c462db928c47efcfecba9ad704bd882c525a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
