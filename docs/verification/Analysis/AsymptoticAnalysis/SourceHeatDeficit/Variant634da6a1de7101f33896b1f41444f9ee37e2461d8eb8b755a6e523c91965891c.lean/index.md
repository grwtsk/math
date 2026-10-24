# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SourceHeatDeficit.Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c08aec2d2f82925ed335e6c9f14bad4a6aff4c24",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c08aec2d2f82925ed335e6c9f14bad4a6aff4c24`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/gaussianterm--ea3a9e696d5ad57ac22340a2.md) | 29 | `declaration-track:ea3a9e696d5ad57ac22340a298f594a9a78ea31b6ef579f9dc8f57e4f5ef3f88` |
| 2 | `def` | [deficitTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/deficitterm--fe48b39f982b1d6657933796.md) | 33 | `declaration-track:fe48b39f982b1d6657933796607a2a49e3d6b653caf93f3d465720cdbef0a4e6` |
| 3 | `def` | [detectionThreshold](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/detectionthreshold--f6f9d918e9901d92f607e589.md) | 37 | `declaration-track:f6f9d918e9901d92f607e589d675d9b590cb4f172731d0058e6abbe842a7d08e` |
| 4 | `theorem` | [gaussianTerm_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/gaussianterm-nonneg--100415c2dd4870d5202b6f29.md) | 40 | `result-track:100415c2dd4870d5202b6f298a89765449a1e4d0341550bc1af528c11288e626` |
| 5 | `theorem` | [deficitTerm_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/deficitterm-nonneg--587815e589b0adde2bd0dca1.md) | 45 | `result-track:587815e589b0adde2bd0dca1d35d0d147e83a01b80832ec5335ac55ca036a8c7` |
| 6 | `theorem` | [detectionThreshold_le_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/detectionthreshold-le-term--7c6fc9c5d175aeabaaf2f914.md) | 52 | `result-track:7c6fc9c5d175aeabaaf2f9149d4433cbea259e3a6fbc4aa536d1402c7b9b210a` |
| 7 | `theorem` | [one_sub_exp_neg_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/one-sub-exp-neg-le--7618b14e0d954f23637b939e.md) | 78 | `result-track:7618b14e0d954f23637b939e005e569064fe8769da90a8107e805b4b53c0616d` |
| 8 | `theorem` | [deficitTerm_le_quarter_gaussian](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/deficitterm-le-quarter-gaussian--146f3f5d5e1d3c6d206a0340.md) | 83 | `result-track:146f3f5d5e1d3c6d206a03408209d47b609256d135dcc335ff238d8f3c5d987b` |
| 9 | `def` | [heatDeficit](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/heatdeficit--c9ba871b4e8ce8a5f4d4bb79.md) | 104 | `declaration-track:c9ba871b4e8ce8a5f4d4bb7950d5a259ca0ec57120894a1080ad1309067146f8` |
| 10 | `def` | [gaussianMass](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/gaussianmass--3614413d67fc1046ec3207b6.md) | 108 | `declaration-track:3614413d67fc1046ec3207b6bb0264959379574647452d43fe3ccc6a8edda9d1` |
| 11 | `theorem` | [deficit_summable_of_gaussian](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/deficit-summable-of-gaussian--8b1c6be4c92b236c2135cfbb.md) | 112 | `result-track:8b1c6be4c92b236c2135cfbba7178c40e50acf86bf94b75ab19d03fa7906bd92` |
| 12 | `theorem` | [excludes_closed_region](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/excludes-closed-region--15c70626c4b977d6980418a2.md) | 123 | `result-track:15c70626c4b977d6980418a233e7f438fb7e4723f5cddc860eed7f27f9360ad2` |
| 13 | `theorem` | [heatDeficit_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/heatdeficit-bounds--b9d6448480bf076c16437477.md) | 137 | `result-track:b9d6448480bf076c1643747765ce0dbd9552f752084a274f0134429083bfd063` |
| 14 | `theorem` | [region_coverage_of_limits](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/region-coverage-of-limits--92fe7bbf51e9d2965c491e03.md) | 154 | `result-track:92fe7bbf51e9d2965c491e033fd33f6b16a1df0f04bdec228404fb879deac4d2` |
| 15 | `theorem` | [all_displacements_zero_of_exhausting_certificates](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/declarations/all-displacements-zero-of-exhausting-certificates--d2e1b8ec2c3a64a983034082.md) | 168 | `result-track:d2e1b8ec2c3a64a983034082198a2457e32410e2249cf01381cf3aac08d3c0b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
