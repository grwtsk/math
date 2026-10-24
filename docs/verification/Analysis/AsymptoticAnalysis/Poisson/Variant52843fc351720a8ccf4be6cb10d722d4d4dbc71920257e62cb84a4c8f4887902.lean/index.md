# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Poisson.Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f5e5f7cf935d55f2cda540b3738e277f8a2b7a5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f5e5f7cf935d55f2cda540b3738e277f8a2b7a5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.PoissonSummation` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 33; external provider; requires a separately pinned dependency.
- `Zeta23.Defs` — import line 34; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson.PaperFT` — import line 35; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Strip` — import line 36; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Fourier` — import line 37; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigO_of_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/isbigo-of-decay--7cc6b95e69899ffff05d62b3.md) | 53 | `result-track:7cc6b95e69899ffff05d62b37f4cc2f4e2d22912a9a945f8b80aeea214f9a883` |
| 2 | `def` | [gInt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/gint--b09deb563e1b01c26d6aa10e.md) | 96 | `declaration-track:b09deb563e1b01c26d6aa10e0a0d8a8f0697ecf1874648b870009f773e70a9d6` |
| 3 | `def` | [Gaux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/gaux--28786b16d66950de8736cf2d.md) | 101 | `declaration-track:28786b16d66950de8736cf2d6dce7611211361a3c94ebe0a77c9f56eb80b2e8b` |
| 4 | `theorem` | [gInt_eq_zero_of_not_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/gint-eq-zero-of-not-mem--440db8677cb4e6838263c400.md) | 105 | `result-track:440db8677cb4e6838263c400e07831a169caf56cc3ef1a090db7e259b0854e30` |
| 5 | `theorem` | [gInt_continuous](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/gint-continuous--bc67dfa2976d4eabf6154fa9.md) | 121 | `result-track:bc67dfa2976d4eabf6154fa91ba108d25d5f84d88d6aa9d273bfce0b6b005fdd` |
| 6 | `theorem` | [gInt_hasCompactSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/gint-hascompactsupport--4cc37281ae0e05729e88b659.md) | 126 | `result-track:4cc37281ae0e05729e88b659eee620335652bf8d689db1b2e0af948c01ef4387` |
| 7 | `theorem` | [gInt_integrable_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/gint-integrable-prod--71579c881ea8bf81e588b01d.md) | 140 | `result-track:71579c881ea8bf81e588b01d1d5365d5271a406163b3a48655ffdf073cf29f88` |
| 8 | `theorem` | [Gaux_continuous](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/gaux-continuous--5fc8f86bd2e10e70f5430de0.md) | 146 | `result-track:5fc8f86bd2e10e70f5430de01d3c7fc7ee9fe3f3df4cb9e29652e4e7b6600968` |
| 9 | `theorem` | [Gaux_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/gaux-eq-zero--2aa5318ebe0ee3eec251884d.md) | 162 | `result-track:2aa5318ebe0ee3eec251884d77d89cd67fc3a654f45d8206188b104120b2e3ad` |
| 10 | `theorem` | [Gaux_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/gaux-zero--dfa04a010705875f709c3560.md) | 172 | `result-track:dfa04a010705875f709c3560c9e9ea3bd28161f5758a47d13942322b7db2f831` |
| 11 | `theorem` | [cexp_bookkeeping](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/cexp-bookkeeping--035ad5a010714c07c2e18df6.md) | 185 | `result-track:035ad5a010714c07c2e18df6080fa37b2bab344c88d70e09a2d3300664eba714` |
| 12 | `theorem` | [fourier_Gaux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/fourier-gaux--8c599f4766846317678c75ad.md) | 197 | `result-track:8c599f4766846317678c75ad98044ee68320a085d33e8e393618c4464f3a74db` |
| 13 | `theorem` | [hasSum_paperFT_mul_paperFT](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/hassum-paperft-mul-paperft--28298a58c3a9a2a38c9c1847.md) | 271 | `result-track:28298a58c3a9a2a38c9c18478ea1a984d9303ac2f9d14f6feb323e30faba9a52` |
| 14 | `theorem` | [phiHat_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/phihat-decay--07c5e800e4f5a61c37651b1b.md) | 343 | `result-track:07c5e800e4f5a61c37651b1bd51520caf2761d5daa8f1c8fc4c56d4a1b8782a6` |
| 15 | `theorem` | [hasSum_phiHatR_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/hassum-phihatr-mul--6757cb8c829eb2275f638dbb.md) | 355 | `result-track:6757cb8c829eb2275f638dbbeeab15a87987e8e1f457bbd52b9d5d83c2d9b581` |
| 16 | `theorem` | [hasSum_phiHatR_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/hassum-phihatr-sq--f37b101b3164553f2a94a41b.md) | 375 | `result-track:f37b101b3164553f2a94a41b86b54eb21622e8d1de03fe9f08a0505d2ceca1f8` |
| 17 | `theorem` | [w_pos'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/w-pos--019c4cbef203920faf2580ca.md) | 389 | `result-track:019c4cbef203920faf2580cafeda9e0a85082e3b919fcb0b16e2649c5276a22e` |
| 18 | `theorem` | [hasSum_phiHatR_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/hassum-phihatr-mul--10664afad07d273bcfd6dcf2.md) | 396 | `result-track:10664afad07d273bcfd6dcf2ea79fa8940d8464b27a460e7f6e8e23d5cd5bd8c` |
| 19 | `theorem` | [hasSum_phiHatR_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/hassum-phihatr-sq--73f41f14509b665c0eabdf5d.md) | 402 | `result-track:73f41f14509b665c0eabdf5df0084670cc803584af17040f2e824975ea56f845` |
| 20 | `theorem` | [tsum_phiHatR_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/declarations/tsum-phihatr-sq--673784c05e73adf964570101.md) | 406 | `result-track:673784c05e73adf964570101fd1eac3b56ac546c5a6fad638f200692ea313a10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
