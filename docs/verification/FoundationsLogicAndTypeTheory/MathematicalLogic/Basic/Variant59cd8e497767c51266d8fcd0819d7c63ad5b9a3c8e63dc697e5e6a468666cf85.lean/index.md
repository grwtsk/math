# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40a37271f5c48a59ed8e1eee4145d77ee9b7daed",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40a37271f5c48a59ed8e1eee4145d77ee9b7daed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Bell` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Multinomial` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DividedPowers](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/dividedpowers--14ab23aa34eec98306a72c1b.md) | 82 | `declaration-track:14ab23aa34eec98306a72c1bf5e3c1f717b3f8a0b283eb4a52ae6d6575b3266d` |
| 2 | `def` | [dividedPowersBot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/dividedpowersbot--325199fda368fd65f1688c63.md) | 100 | `declaration-track:325199fda368fd65f1688c63e479fa8260c9befd1d89106c4baa769b552a979e` |
| 3 | `lemma` | [dividedPowersBot_dpow_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/dividedpowersbot-dpow-eq--d40992250d8f2cb4601d409d.md) | 149 | `result-track:d40992250d8f2cb4601d409dc204f09ccffba2c1c4288a3a0f634005a9d21e9e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/instance--4822645ae69a4fabd1c8027f.md) | 154 | `declaration-track:4822645ae69a4fabd1c8027f42650a5eb0a78f7e22348ce3f2c97181710891f0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/instance--901a068b7e1f1b6319ce38ac.md) | 158 | `declaration-track:901a068b7e1f1b6319ce38ac0b5ec41f7c54502c7ea02a8cefaed6c588ac4af8` |
| 6 | `theorem` | [DividedPowers.ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/dividedpowers-ext--587fc3b65209145db16b5526.md) | 162 | `result-track:587fc3b65209145db16b5526a273fcbbc840c0ab2fc7284e59775be771ff08ae` |
| 7 | `theorem` | [DividedPowers.coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/dividedpowers-coe-injective--efb2954683b4ad355944795f.md) | 173 | `result-track:efb2954683b4ad355944795fde170d1e92c41a88dba960487aab7c6319fe07b2` |
| 8 | `theorem` | [dpow_add'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/dpow-add--65be0d35f4d2c18939a24742.md) | 189 | `result-track:65be0d35f4d2c18939a24742007dda46f899ab5177d75b7fcd9aaf42a63f5a30` |
| 9 | `def` | [exp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/exp--05745c126905bac35180a6e6.md) | 195 | `declaration-track:05745c126905bac35180a6e6c663e7b35db1d854f6bb9a5fb3e2d711ac5ffc2c` |
| 10 | `theorem` | [exp_add'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/exp-add--00af400a371ecb3f565f515a.md) | 199 | `result-track:00af400a371ecb3f565f515ad0739ddcbdfe2743f11d477029efe93a0e2aca09` |
| 11 | `theorem` | [exp_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/exp-add--6a27d6801afac8bcf1885cfc.md) | 207 | `result-track:6a27d6801afac8bcf1885cfcdce7a8b4af014ff88e65c5d4dd02f35d884f8832` |
| 12 | `theorem` | [dpow_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/dpow-smul--13234d665549d451cbc78989.md) | 215 | `result-track:13234d665549d451cbc78989546170c0beaedb40c66a14c247de87f914c6c804` |
| 13 | `theorem` | [dpow_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/dpow-mul-right--da006d92199992eed40a01cf.md) | 219 | `result-track:da006d92199992eed40a01cfe827f9e2247e4a5a223178053daac6299b5ce375` |
| 14 | `theorem` | [dpow_smul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/dpow-smul-right--237501908fbfab33f1d11da4.md) | 223 | `result-track:237501908fbfab33f1d11da42f20b88636165caf3b42d9eb554e4e269ed39358` |
| 15 | `theorem` | [factorial_mul_dpow_eq_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/factorial-mul-dpow-eq-pow--1f4aa5b6b6e52caafe307728.md) | 227 | `result-track:1f4aa5b6b6e52caafe307728c49a0c09869699df871dc99542468950121da51d` |
| 16 | `theorem` | [dpow_eval_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/dpow-eval-zero--6cdcdc1b650cc60643ee6eb6.md) | 237 | `result-track:6cdcdc1b650cc60643ee6eb6c2ba244d4f82edaa1a64382c33414becd03c29c1` |
| 17 | `theorem` | [nilpotent_of_mem_dpIdeal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/nilpotent-of-mem-dpideal--494bc92310a3e4aa3148ab68.md) | 245 | `result-track:494bc92310a3e4aa3148ab68959c5f405e63edd4bb9975e8d225bfbcd9d9195a` |
| 18 | `theorem` | [coincide_on_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/coincide-on-smul--29e2c42878f36f89cf04ffbb.md) | 256 | `result-track:29e2c42878f36f89cf04ffbbc7424c3b12bb3cc999d86deed791a9333fd516cb` |
| 19 | `theorem` | [prod_dpow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/prod-dpow--e394ccb1a97fbad1ed6a84d1.md) | 273 | `result-track:e394ccb1a97fbad1ed6a84d11fa88d5863db3593e51cb228c595dea1dfaf3a18` |
| 20 | `theorem` | [dpow_sum'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/dpow-sum--7ff4564e480e17a6874f116b.md) | 289 | `result-track:7ff4564e480e17a6874f116bdfb94870cfec3958d1167bd705d80955404ea0ee` |
| 21 | `theorem` | [dpow_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/dpow-sum--20c43c590d3e3ffa4a7a3094.md) | 341 | `result-track:20c43c590d3e3ffa4a7a30941bdd81902b1fcd4286727b8df5f566a27eaa5472` |
| 22 | `def` | [ofRingEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/ofringequiv--958ad4f59c3313b3899c1910.md) | 356 | `declaration-track:958ad4f59c3313b3899c19103a9053d769f9a62b8adb1b94581c1156bd60fada` |
| 23 | `theorem` | [ofRingEquiv_dpow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/ofringequiv-dpow--521f1a8d24600a21a92f203f.md) | 392 | `result-track:521f1a8d24600a21a92f203f3864b3b127e58c31b00163243e8defbd45c9993e` |
| 24 | `theorem` | [ofRingEquiv_dpow_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/ofringequiv-dpow-apply--1af3211c7fb6d484abd38337.md) | 395 | `result-track:1af3211c7fb6d484abd38337e1e6d443e08216da9bd74792a2f2dc85dcdf1cbe` |
| 25 | `def` | [equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/equiv--1463b737a184ba43c8dd9a27.md) | 400 | `declaration-track:1463b737a184ba43c8dd9a27b2eec27e150500f2d468eaa3d352b2ff5d939fcb` |
| 26 | `theorem` | [equiv_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/equiv-apply--08edf350953a8f94a2a62802.md) | 406 | `result-track:08edf350953a8f94a2a6280253832d51b541181d28b310beca7e83a155727584` |
| 27 | `theorem` | [equiv_apply'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant59cd8e497767c51266d8fcd0819d7c63ad5b9a3c8e63dc697e5e6a468666cf85.lean/declarations/equiv-apply--924637a85ca468d6b06c3830.md) | 410 | `result-track:924637a85ca468d6b06c38302607a1af8224e507d90d46ef23988609a6d5ce74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
