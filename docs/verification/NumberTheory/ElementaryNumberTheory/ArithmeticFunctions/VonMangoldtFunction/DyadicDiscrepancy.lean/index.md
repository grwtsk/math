# Verification target: GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e54ed6f2f472cad8f6e60d4b80e9d0648f15f6ad",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/VonMangoldt/DyadicDiscrepancy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e54ed6f2f472cad8f6e60d4b80e9d0648f15f6ad`.

Source path: `GRWTSK/NumberTheory/VonMangoldt/DyadicDiscrepancy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/VonMangoldt/DyadicDiscrepancy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.GreenKernel.UnitInterval`](../../../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.Centering`](../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.Analysis.Integration.UnitIntervalPrimitives`](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/mangoldt--ec8f9ab820aeccee042d0982.md) | 31 | `declaration-track:ec8f9ab820aeccee042d0982206d8568f18768cc3eb1855653f84524e2f18080` |
| 2 | `def` | [window](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/window--64662d499cd3d4c85bcad48b.md) | 33 | `declaration-track:64662d499cd3d4c85bcad48bf428edeca57c5babefecca3b4a42c31f335a11aa` |
| 3 | `def` | [location](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/location--860e56775d14b78b98ad9a02.md) | 34 | `declaration-track:860e56775d14b78b98ad9a02a2fb6900bf124bc24aac9ea866a58d6477463944` |
| 4 | `def` | [coefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/coefficient--bf6b55b99f62211568badac7.md) | 35 | `declaration-track:bf6b55b99f62211568badac7dd44dfd7d24671106efe8ab12f91fd94699a676e` |
| 5 | `def` | [action](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/action--2dd8019735608a03dbac5139.md) | 37 | `declaration-track:2dd8019735608a03dbac513933194894d323390140e6d12699d7131f6a94c65b` |
| 6 | `def` | [mass0](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/mass0--4cebd8dd0c616f0a984b8ef4.md) | 41 | `declaration-track:4cebd8dd0c616f0a984b8ef4c24c334f3794ef1710167c1c99cd3c09b108163e` |
| 7 | `def` | [mass1](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/mass1--d5dda243b18ecc07a6ce1bd1.md) | 43 | `declaration-track:d5dda243b18ecc07a6ce1bd16da6df99266256b90257b1d7a13ff77fabbdcbce` |
| 8 | `def` | [cumulative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/cumulative--85d45ee39e940e00a19c3265.md) | 46 | `declaration-track:85d45ee39e940e00a19c3265cfb2c1b33b88ecedd954434873aacd9c6f52da10` |
| 9 | `def` | [center](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/center--cb8b96f9fe3777158a0aeb52.md) | 49 | `declaration-track:cb8b96f9fe3777158a0aeb527ca58c9cfd0c7f17d895a2a73663f6533cdeb9d1` |
| 10 | `def` | [greenEnergy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/greenenergy--ccdd77e640fea4d0166ed946.md) | 51 | `declaration-track:ccdd77e640fea4d0166ed94676a6f089537f2d6811b2f59b4c7def97abf796b3` |
| 11 | `def` | [augmentedEnergy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/augmentedenergy--95126010caff44e6c62fc99e.md) | 54 | `declaration-track:95126010caff44e6c62fc99ed4871b2e0bab95fb1c4cbf0852f3713391aecf1a` |
| 12 | `def` | [dyadicScale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/dyadicscale--f52b87832d10c722805cf0b5.md) | 56 | `declaration-track:f52b87832d10c722805cf0b55433cd90639dbea60752c30db2af759338794f28` |
| 13 | `def` | [AllDyadicEnergyBound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/alldyadicenergybound--86968ce846646bfcfd714f5c.md) | 58 | `declaration-track:86968ce846646bfcfd714f5ca20eefc4fb1751e2995d94041ee29a1a75c80a00` |
| 14 | `theorem` | [window_lower](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/window-lower--3c44128180f1091d1f0ba079.md) | 63 | `result-track:3c44128180f1091d1f0ba07961211199d98983b7b90fc2888e668a692bb3fcf6` |
| 15 | `theorem` | [window_upper](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/window-upper--95d366f2c4e371c32f8fd83b.md) | 66 | `result-track:95d366f2c4e371c32f8fd83b50f25b93f961b7704b194b411c8d099ed24fa5c7` |
| 16 | `theorem` | [location_mem](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/location-mem--8a58ae4efda6214668fd32c3.md) | 69 | `result-track:8a58ae4efda6214668fd32c3c4c9ec778305369c981ac96b41d4229cb8b2b5f6` |
| 17 | `theorem` | [endpoint_mem](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/endpoint-mem--7e0ba7a4164e0a6db6448c4f.md) | 83 | `result-track:7e0ba7a4164e0a6db6448c4f203007383ffa26a99c086287790ed5bafa71473e` |
| 18 | `theorem` | [endpoint_location](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/endpoint-location--4bc9a36442bb8f99e23b3222.md) | 87 | `result-track:4bc9a36442bb8f99e23b32225a7a4f5b1f3549c0ad43948b3bf001855df10f82` |
| 19 | `theorem` | [endpoint_green_silent](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/endpoint-green-silent--da334df613f0f91dddb46946.md) | 94 | `result-track:da334df613f0f91dddb469465caa84ac8f673d36a5054b47110b1787c0520844` |
| 20 | `theorem` | [center_expansion](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/center-expansion--ec69a42bd053872e572f68b1.md) | 98 | `result-track:ec69a42bd053872e572f68b195b86d910466899677afe4ef028b54ae29e3ded7` |
| 21 | `theorem` | [cumulative_integrable](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/cumulative-integrable--f73738ff8d262841072f385a.md) | 104 | `result-track:f73738ff8d262841072f385aa79f2a1440a8a0aa281d0572ceac7209bd06a824` |
| 22 | `theorem` | [cumulative_square_integrable](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/cumulative-square-integrable--0311db9d80c35fdff7a37e1a.md) | 113 | `result-track:0311db9d80c35fdff7a37e1a761bf30495a89a9f03aa5fe4a066823072b0da67` |
| 23 | `theorem` | [cumulative_memLp_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/cumulative-memlp-two--65e630c342249a97278a3523.md) | 153 | `result-track:65e630c342249a97278a3523eb4318af3b7e108d9fe672875a84850d461c89ad` |
| 24 | `theorem` | [centered_memLp_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/centered-memlp-two--a5a894af9c84a8498ccfbd35.md) | 157 | `result-track:a5a894af9c84a8498ccfbd35f8aae76cf886db5573b6d8abd10cc6450a4c7319` |
| 25 | `theorem` | [integral_cumulative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/integral-cumulative--383fb7ed5c02d18742f2d06d.md) | 162 | `result-track:383fb7ed5c02d18742f2d06d008798657dcfacdab755aad012cdf8a78a5b1da8` |
| 26 | `theorem` | [greenEnergy_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/greenenergy-nonneg--282b0774b89064f756c5c999.md) | 188 | `result-track:282b0774b89064f756c5c999d452c7f21268525fe07205394d6e7ec7e0519526` |
| 27 | `theorem` | [augmentedEnergy_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/augmentedenergy-nonneg--fa98f9a220bef571a205a541.md) | 191 | `result-track:fa98f9a220bef571a205a54114ee784c35d8289c40b8be5e8d83c923696db09a` |
| 28 | `theorem` | [mass0_sq_le_energy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/mass0-sq-le-energy--165f861fd76d8b085584a8b8.md) | 195 | `result-track:165f861fd76d8b085584a8b8ed7b72fb41286b1997ba9794b7e05629647ed3eb` |
| 29 | `theorem` | [mass1_sq_le_energy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/mass1-sq-le-energy--31f4440ca755c0140742fddf.md) | 199 | `result-track:31f4440ca755c0140742fddf9fd67a64201c6e25b3f25a425df126cdfbb70587` |
| 30 | `theorem` | [raw_cumulative_energy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/raw-cumulative-energy--904bec4d8595e1460662984d.md) | 204 | `result-track:904bec4d8595e1460662984df105edaaab1acbcc7909c9fce491ea7fcea6b9fa` |
| 31 | `def` | [mellinTest](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/mellintest--71b062f46f7f390dde3c3025.md) | 214 | `declaration-track:71b062f46f7f390dde3c3025db587e943e46d77bcb7fa420a8fb677840c61d81` |
| 32 | `def` | [dirichletBlock](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/declarations/dirichletblock--ec4c86618456bfd41f34cd80.md) | 217 | `declaration-track:ec4c86618456bfd41f34cd8096c139a466ee077c1aee254497f3cd52747808f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
