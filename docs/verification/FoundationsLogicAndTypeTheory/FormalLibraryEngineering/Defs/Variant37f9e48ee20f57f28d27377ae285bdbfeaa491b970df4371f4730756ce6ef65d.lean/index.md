# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defs.Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "035a92dbd99286ff17968ca83dfca3180c8c2a63",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `035a92dbd99286ff17968ca83dfca3180c8c2a63`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Coe` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lift` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/instance--62e745d7ba4a8b17ce7ac22d.md) | 22 | `declaration-track:62e745d7ba4a8b17ce7ac22d08a8bf1d33ee8ff1fccd2205f01b86cb9ceabab0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/instance--f8fb93de7e2a460ebef9e12e.md) | 25 | `declaration-track:f8fb93de7e2a460ebef9e12e9f1a4ba815bd3dc3d3630b90ef08275d0a0866c6` |
| 3 | `theorem` | [mk_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/mk-coe--72d5831c7806dfc6e189aebb.md) | 32 | `result-track:72d5831c7806dfc6e189aebb251c2de1f7d91be5a3b0ae87e86934c831d96a7d` |
| 4 | `def` | [natPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/natpred--57902d6841b13cab874da00d.md) | 36 | `declaration-track:57902d6841b13cab874da00de4974327ef5f059d797579be335add6f19273fe8` |
| 5 | `theorem` | [natPred_eq_pred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/natpred-eq-pred--ae1c23186912ce895e1e3f5b.md) | 40 | `result-track:ae1c23186912ce895e1e3f5b47b0d90c086c6c12d71d4d9a1f0a8a68755bd510` |
| 6 | `def` | [toPNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/topnat--2fde96cd83fcf3c6eb995f42.md) | 49 | `declaration-track:2fde96cd83fcf3c6eb995f42f95f63f226d0b63f05605d627db9d467e07436d4` |
| 7 | `def` | [succPNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/succpnat--7de4534277a13b587c5f2714.md) | 53 | `declaration-track:7de4534277a13b587c5f271421291cb3816a7ee29da9486fbc923b4d9a013fb9` |
| 8 | `theorem` | [succPNat_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/succpnat-coe--d8a2e9a0786189d5c881c9d6.md) | 57 | `result-track:d8a2e9a0786189d5c881c9d6004db966ff13e0d01779c0c442735dce9e5ae45d` |
| 9 | `theorem` | [natPred_succPNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/natpred-succpnat--2635e30bd2b119f5fc1dc735.md) | 61 | `result-track:2635e30bd2b119f5fc1dc735339f2ce25cd61258a9700fb8c43bf351a402ef9a` |
| 10 | `theorem` | [_root_.PNat.succPNat_natPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/root-pnat-succpnat-natpred--d359c111ff352ec807190a6c.md) | 65 | `result-track:d359c111ff352ec807190a6c539efa1295fc50f9bd4a5d7bd4ec857d70dd6fc3` |
| 11 | `def` | [toPNat'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/topnat--e1b5e231a9c351c6a26eed20.md) | 70 | `declaration-track:e1b5e231a9c351c6a26eed20ea73b6b58f692c4ee1bb0eb9294993b28464f080` |
| 12 | `theorem` | [toPNat'_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/topnat-zero--4b56c2a2e526256caf457597.md) | 74 | `result-track:4b56c2a2e526256caf45759782f8ee9b25c7d7518a96c21350f5d556d1a74d5b` |
| 13 | `theorem` | [toPNat'_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/topnat-coe--f24b7f020fcd8d6299ba10fb.md) | 77 | `result-track:f24b7f020fcd8d6299ba10fb725ca91b1b63532880ddd0d3b2cbdaed59f822b2` |
| 14 | `theorem` | [mk_le_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/mk-le-mk--b1c8a54e7e454a8525e36e7b.md) | 94 | `result-track:b1c8a54e7e454a8525e36e7b3e6b247b7b5e8bfc039060b6d012b42d69f6c63a` |
| 15 | `theorem` | [mk_lt_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/mk-lt-mk--4a87d33fa3a517c50fcadc49.md) | 96 | `result-track:4a87d33fa3a517c50fcadc49ad72e2a37e77fad119df8ba603483cf831a34ce9` |
| 16 | `theorem` | [coe_le_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/coe-le-coe--51a3169a9dca8b8bdfafc11e.md) | 99 | `result-track:51a3169a9dca8b8bdfafc11e56c023dd1a0d870247be2afecef8e4c283a58146` |
| 17 | `theorem` | [coe_lt_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/coe-lt-coe--030bb992489b1a900e45ee27.md) | 103 | `result-track:030bb992489b1a900e45ee27068a21411ddc16c48f61b7c2153767c98b952752` |
| 18 | `theorem` | [pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/pos--ceb5a2bea4d1c83b0e1683ff.md) | 107 | `result-track:ceb5a2bea4d1c83b0e1683ff8942e71687defdabd9721e22674e3dd995932939` |
| 19 | `theorem` | [eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/eq--4bb06fa475fbfac42feb376d.md) | 110 | `result-track:4bb06fa475fbfac42feb376d6e464ac1b23c3afe93c7e33f8af94fc19cebdcd2` |
| 20 | `theorem` | [coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/coe-injective--6e816e078cba32bb6aa3ce78.md) | 113 | `result-track:6e816e078cba32bb6aa3ce78713def4ede4482238327158655b1f04d595c929a` |
| 21 | `theorem` | [ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/ne-zero--17bee0699b994acaeaaa10b4.md) | 117 | `result-track:17bee0699b994acaeaaa10b45215012f6f1fdda6b7182d9d30b89d942b313438` |
| 22 | `instance` | [_root_.NeZero.pnat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/root-nezero-pnat--505024251ac8f1a376c8defb.md) | 120 | `declaration-track:505024251ac8f1a376c8defb1802fb9da77520ad15fbe2879e16a9e1f2811438` |
| 23 | `theorem` | [toPNat'_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/topnat-coe--df9708c6afad8a07ecd7bab7.md) | 123 | `result-track:df9708c6afad8a07ecd7bab79be7e333f8a81db2bedb476b6b86ef9ac70f33f1` |
| 24 | `theorem` | [coe_toPNat'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/coe-topnat--b437370139d459e75dfd220e.md) | 127 | `result-track:b437370139d459e75dfd220e5f7880d09bd95af53f1303ead777a920f378f5e0` |
| 25 | `theorem` | [one_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/one-le--7af936f6641a8f98de69a411.md) | 131 | `result-track:7af936f6641a8f98de69a41189172b78dfc9de28a3e0ebe9eae2a9176c2d28dc` |
| 26 | `theorem` | [not_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/not-lt-one--812300933e26b3013d5fc1a1.md) | 135 | `result-track:812300933e26b3013d5fc1a14d5d628f9297601f2c256b53d65b3ec0b4298ca4` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/instance--e900e2bf74a104b4aeddab9b.md) | 138 | `declaration-track:e900e2bf74a104b4aeddab9b2d217f3b8816b706c05dbbb61d0ef880d150ff63` |
| 28 | `theorem` | [mk_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/mk-one--ed42f4a5fa81ec41e97cdad0.md) | 143 | `result-track:ed42f4a5fa81ec41e97cdad0324b54bd450efec4b15fac11eedc2d168017c661` |
| 29 | `theorem` | [one_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/one-coe--7dcddb162aabc131f9c88382.md) | 147 | `result-track:7dcddb162aabc131f9c8838215adfe3eaa94b75e011f923ebe1b618a5fee8407` |
| 30 | `theorem` | [coe_eq_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/coe-eq-one-iff--b28750e3ab5a8990edce4003.md) | 151 | `result-track:b28750e3ab5a8990edce4003855aed0759e9580d458610bea1f54fe5fcfe2906` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/instance--bcdfb793b6e87fb0c4d2014b.md) | 154 | `declaration-track:bcdfb793b6e87fb0c4d2014be97b58ce63f1b42174ce86986b6ece506e6aaa45` |
| 32 | `def` | [strongInductionOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/stronginductionon--cc6a00dec2a7a82387452437.md) | 158 | `declaration-track:cc6a00dec2a7a823874524379de25ef1f489d4f1bcff5e2548d5d49f4bd3b4a4` |
| 33 | `def` | [modDivAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/moddivaux--ceef4dda9540275ae77c77e2.md) | 169 | `declaration-track:ceef4dda9540275ae77c77e2887dc6d1d9b908763910167398149bfb00a8237d` |
| 34 | `def` | [modDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/moddiv--2eb917ceeaff933142cca2ec.md) | 181 | `declaration-track:2eb917ceeaff933142cca2ecd609bc8b2a2ff402f7a3d164d6c3bbb03876c99a` |
| 35 | `def` | [mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/mod--d47ff5408da3f2e6a108b0db.md) | 187 | `declaration-track:d47ff5408da3f2e6a108b0dbb70c2bd30bb6cb80cfb434a1cae8f0df52c6b96a` |
| 36 | `def` | [div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/div--fadc473595faaf2170bcc2db.md) | 194 | `declaration-track:fadc473595faaf2170bcc2dbe92bf700b9905993dae94ab93c73499180717cc3` |
| 37 | `theorem` | [mod_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/mod-coe--bdcc48743fdf4783880e426c.md) | 197 | `result-track:bdcc48743fdf4783880e426cd72b5974fce09d571879c81d7a58195e1a3a3537` |
| 38 | `theorem` | [div_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/div-coe--d7bf0738f2e22d8d72d09f5f.md) | 208 | `result-track:d7bf0738f2e22d8d72d09f5fcf77aebb882e34ca1e1ad69638514d8ab7657f26` |
| 39 | `def` | [divExact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/divexact--304dd7e2bd8280a922852fd6.md) | 220 | `declaration-track:304dd7e2bd8280a922852fd675256b1697a2a802ce3846f701a3d29b2be8fade` |
| 40 | `instance` | [Nat.canLiftPNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/nat-canliftpnat--608802ffba35c488e540eb92.md) | 227 | `declaration-track:608802ffba35c488e540eb92b9da3c6b51d7819e00783387c2c1f037b20d23a1` |
| 41 | `instance` | [Int.canLiftPNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant37f9e48ee20f57f28d27377ae285bdbfeaa491b970df4371f4730756ce6ef65d.lean/declarations/int-canliftpnat--5308bcf60471ed6a84cff9f7.md) | 230 | `declaration-track:5308bcf60471ed6a84cff9f7bbc7f6ab91f924a320d07887ff0d006fdb0cd56e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
