# Verification target: GRWTSK.Analysis.MeasureTheory.Integral.MoebiusCumulativeEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d63aa10a7624ab5bcadab6f0c905ba644865e18",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d63aa10a7624ab5bcadab6f0c905ba644865e18`.

Source path: `GRWTSK/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion`](../../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound`](../../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [globalPickup](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/globalpickup--28dc025da59569909226aaba.md) | 13 | `declaration-track:28dc025da59569909226aabaf2c07ad61e1e191fbc9f4297fef3cd83d267518b` |
| 2 | `theorem` | [inventory_mono](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/inventory-mono--5af685997ba97ef4165b2d08.md) | 15 | `result-track:5af685997ba97ef4165b2d08fc359c122748bc0c2cc74d7399eb0f4f42fe4695` |
| 3 | `theorem` | [pickup_cutoff_consistent](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/pickup-cutoff-consistent--b520f5aefdfbf817f3c799df.md) | 21 | `result-track:b520f5aefdfbf817f3c799df0354317f1d209914923eee3df8250205a502931b` |
| 4 | `theorem` | [pickup_continuous](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/pickup-continuous--5ac3062f199701d0a56e52a8.md) | 34 | `result-track:5ac3062f199701d0a56e52a84f6b861982fc9db87a84bacdda97e7a1e8997ab6` |
| 5 | `theorem` | [globalPickup_continuous](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/globalpickup-continuous--132ba1cccab2f5435f933a64.md) | 41 | `result-track:132ba1cccab2f5435f933a64fde3ee7293528ede7b8c4575e3d8145ea2cbff7a` |
| 6 | `theorem` | [energy_eq_global_integral](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/energy-eq-global-integral--9cc59c4467416b576f7f693d.md) | 48 | `result-track:9cc59c4467416b576f7f693d181850d545eef2793711ae242c036063bfc8df26` |
| 7 | `theorem` | [energy_common_cutoff](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/energy-common-cutoff--d6a01e76c26b3ef4865d0813.md) | 55 | `result-track:d6a01e76c26b3ef4865d08137b9baf2cc236d78a60577012a34c8ed14cb4a69b` |
| 8 | `theorem` | [energy_monotone](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/energy-monotone--7518c92663c60ebd59362ad8.md) | 62 | `result-track:7518c92663c60ebd59362ad83b8103d4850d92c8e4f3c20d0f631fd2669d3e88` |
| 9 | `theorem` | [energy_zero](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/energy-zero--369e4fa2c5f86b90fcf31bb2.md) | 68 | `result-track:369e4fa2c5f86b90fcf31bb2474c0d848d55b0acd2087a89d72b4d0274e74507` |
| 10 | `def` | [windowEnergy](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/windowenergy--77da83ce80407c0a8c0e12de.md) | 70 | `declaration-track:77da83ce80407c0a8c0e12de32ce9c5e8b05bfd2e2abf42578584a692a41c8d9` |
| 11 | `theorem` | [windowEnergy_common_cutoff](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/windowenergy-common-cutoff--89f0936e549f7720a39c403b.md) | 72 | `result-track:89f0936e549f7720a39c403b362356629aadc1db0103dd776083d07212beb73e` |
| 12 | `theorem` | [energy_successor](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/energy-successor--bdd6759e4a27233d07f7c320.md) | 79 | `result-track:bdd6759e4a27233d07f7c3207f1d360d97e585c3d915e07dde16644eded3fe86` |
| 13 | `theorem` | [fixed_window_implies_energy_polynomial](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/fixed-window-implies-energy-polynomial--a98a2dfa03e0db31a75a3150.md) | 98 | `result-track:a98a2dfa03e0db31a75a3150ecf88e72d7a8783b61c4e6498455527ebd33f8c6` |
| 14 | `theorem` | [fixed_window_implies_literal_P04](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/declarations/fixed-window-implies-literal-p04--28baff26a08547b27a9274cf.md) | 132 | `result-track:28baff26a08547b27a9274cf4edd3123579b16d8a1ba98a4e720ec9ff8cc9b6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
