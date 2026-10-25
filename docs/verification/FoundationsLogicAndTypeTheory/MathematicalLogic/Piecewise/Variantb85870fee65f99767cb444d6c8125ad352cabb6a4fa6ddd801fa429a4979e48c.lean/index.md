# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Piecewise.Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec2f011fa294e04b3ddb8fc0f2f31dd8f600cbbb",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec2f011fa294e04b3ddb8fc0f2f31dd8f600cbbb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [piecewise_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-empty--bba5227fa7fc3df449bbabc7.md) | 31 | `result-track:bba5227fa7fc3df449bbabc71e3bd53afc220347aede6adff9b2d53c6429d24d` |
| 2 | `theorem` | [piecewise_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-univ--52bfd665bd31d9b1328e72b1.md) | 36 | `result-track:52bfd665bd31d9b1328e72b1d2a6fee40af7b2c1347ca1d7b5819e429e505ce5` |
| 3 | `theorem` | [piecewise_insert_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-insert-self--1156c72f82b72cb11f008dee.md) | 41 | `result-track:1156c72f82b72cb11f008dee5b0e72961867f92802e660332154f207b8bce5db` |
| 4 | `theorem` | [piecewise_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-insert--15a1539beeab8eb590ad363e.md) | 46 | `result-track:15a1539beeab8eb590ad363efdce8c51d68202a6c51262bdac5868a453074ed6` |
| 5 | `theorem` | [piecewise_eq_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-eq-of-mem--2263b24d4ff62bbc7a3a9286.md) | 56 | `result-track:2263b24d4ff62bbc7a3a928654248a3fbf369c25c6cf6f5609229f6df87b8fde` |
| 6 | `theorem` | [piecewise_eq_of_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-eq-of-notmem--345040c48cd74256ea065442.md) | 60 | `result-track:345040c48cd74256ea0654423c131171c3aca2dffda133d0ae204a3df91a7d37` |
| 7 | `theorem` | [piecewise_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-singleton--c6d0aa39f155e921ab0975ad.md) | 65 | `result-track:c6d0aa39f155e921ab0975ada99e69ee8e5312cab91622de10a713642210f917` |
| 8 | `theorem` | [piecewise_eqOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-eqon--50f2dd50687b18e761c18463.md) | 73 | `result-track:50f2dd50687b18e761c1846326ce117da504ffa0d2e13391a1285e7a845af735` |
| 9 | `theorem` | [piecewise_eqOn_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-eqon-compl--a29b475581f01ba157b9c095.md) | 76 | `result-track:a29b475581f01ba157b9c095534922e1a7c6d5bdfff3572a1b761f878be0884d` |
| 10 | `theorem` | [piecewise_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-le--dea8273e230e286d9a35f2f0.md) | 79 | `result-track:dea8273e230e286d9a35f2f05c95b745d33964ee936364bfb8f9c3e133218206` |
| 11 | `theorem` | [le_piecewise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/le-piecewise--21dbee28c9592aae76269292.md) | 83 | `result-track:21dbee28c9592aae7626929203c8d02653049d1301edf155e8947a90f800582f` |
| 12 | `theorem` | [piecewise_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-mono--c3d40bcd25240a83bff6b011.md) | 89 | `result-track:c3d40bcd25240a83bff6b01158d9d895b0e779f6579742bc870df8b327d5b8b9` |
| 13 | `theorem` | [piecewise_insert_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-insert-of-ne--323df770cd64bf106b635c46.md) | 95 | `result-track:323df770cd64bf106b635c4683a56cfbf14e3bf86ff50e1f2644a88baf0d59f3` |
| 14 | `theorem` | [piecewise_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-compl--df7dd69a43d9bdf3533647e1.md) | 99 | `result-track:df7dd69a43d9bdf3533647e1fe2751d166e3cc2e579fa21d102a208c35aa3bdb` |
| 15 | `theorem` | [piecewise_range_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-range-comp--c9b185b3d6b733c1eee3bdc1.md) | 103 | `result-track:c9b185b3d6b733c1eee3bdc1b5145bf992903c8ac6dbd5bd472e9c23c0d158da` |
| 16 | `lemma` | [piecewise_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-comp--3dd73fb288bd6a9851551f40.md) | 107 | `result-track:3dd73fb288bd6a9851551f403c5d7ce1c99ff34bec7185b5b048037cfa7f2329` |
| 17 | `theorem` | [MapsTo.piecewise_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/mapsto-piecewise-ite--b5c1a894d1e84977a39ead7b.md) | 113 | `result-track:b5c1a894d1e84977a39ead7b4125469d4f239ae7183795ac4aaaaf9ee74de408` |
| 18 | `theorem` | [eqOn_piecewise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/eqon-piecewise--c7971d3c928dd931b261fb55.md) | 121 | `result-track:c7971d3c928dd931b261fb55ee2805a06d3737873b1c24ce70ac6e38abf069e2` |
| 19 | `theorem` | [EqOn.piecewise_ite'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/eqon-piecewise-ite--700c2ddf82de18a890efb036.md) | 126 | `result-track:700c2ddf82de18a890efb036b223e738ad2d685a5d8977b1bc7d33038403e13c` |
| 20 | `theorem` | [EqOn.piecewise_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/eqon-piecewise-ite--e28bf8ffd6668ad755c9f587.md) | 130 | `result-track:e28bf8ffd6668ad755c9f5878822271aff9824ef98cc3377b7907ac705be9310` |
| 21 | `theorem` | [piecewise_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-preimage--39decfce57b5f6d34d5448f9.md) | 134 | `result-track:39decfce57b5f6d34d5448f91e16d822bc56b468502091341900e16f92b86022` |
| 22 | `theorem` | [apply_piecewise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/apply-piecewise--7d86c2fedd50c8c0685dfc96.md) | 137 | `result-track:7d86c2fedd50c8c0685dfc964908204b04b731b97874c34bff928a2b93fe18e0` |
| 23 | `theorem` | [apply_piecewise₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/apply-piecewise--f32ac050d8307d14a9f4b4ad.md) | 141 | `result-track:f32ac050d8307d14a9f4b4ad05e4716dba2ad690689b8c08af5053a3a27efe95` |
| 24 | `theorem` | [piecewise_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-op--aeb027c2d93d301766b65046.md) | 147 | `result-track:aeb027c2d93d301766b65046f9b45d90970fa276b7d85d692855c88493a9424c` |
| 25 | `theorem` | [piecewise_op₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-op--84540870ed6c2b43705b0ada.md) | 151 | `result-track:84540870ed6c2b43705b0ada8feb5fc7f8b3ec24b0affaea032ffadd39db66a1` |
| 26 | `theorem` | [piecewise_same](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-same--291d19328786f756d9d22dfe.md) | 157 | `result-track:291d19328786f756d9d22dfeb5344df5ad61ab55c2012fdf4d93e1ba6adee8f2` |
| 27 | `theorem` | [range_piecewise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/range-piecewise--9df43e2f3c274e315f397fdd.md) | 161 | `result-track:9df43e2f3c274e315f397fdd6cf7bdcd07ff130ce078253cf65fb4037a71c055` |
| 28 | `theorem` | [injective_piecewise_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/injective-piecewise-iff--5dc850416c40f89b9e7eb586.md) | 167 | `result-track:5dc850416c40f89b9e7eb586d14d6350fe8e6fbddd9f2e0dc97c0b9a0b90b231` |
| 29 | `theorem` | [piecewise_mem_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/piecewise-mem-pi--cd10de215e05ba8ac363e833.md) | 175 | `result-track:cd10de215e05ba8ac363e833303217343b51821593043916ec12ff01c6e3d471` |
| 30 | `theorem` | [pi_piecewise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/pi-piecewise--aa6e086690b37847d5ca254a.md) | 181 | `result-track:aa6e086690b37847d5ca254a33be06e99014b7ccf11c34ed0ee01a529df5867f` |
| 31 | `theorem` | [univ_pi_piecewise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/univ-pi-piecewise--4e0f37f49a102edfa1f7b08a.md) | 185 | `result-track:4e0f37f49a102edfa1f7b08a9dced104b6240962565993bd4546e6e2d767175b` |
| 32 | `theorem` | [univ_pi_piecewise_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/declarations/univ-pi-piecewise-univ--034d6fd5d0b635513f98b35d.md) | 189 | `result-track:034d6fd5d0b635513f98b35d7d855babdce1a1f7d10c2096e4d7ffaace3c0e73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
