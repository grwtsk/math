# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c3545bfad15863789fe97fb1f099e3512be7a8f",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c3545bfad15863789fe97fb1f099e3512be7a8f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MulZeroClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mulzeroclass--f03414891d1606ae3203e57e.md) | 33 | `declaration-track:f03414891d1606ae3203e57e2156cc4400a4f99a1026a55e9b2672a62e9f19e6` |
| 2 | `class` | [IsLeftCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/isleftcancelmulzero--c3232b3d3be67d54686116bc.md) | 40 | `declaration-track:c3232b3d3be67d54686116bcc415ef548cca448cf5147a7f2227f761d34ddad9` |
| 3 | `theorem` | [mul_left_cancel₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-left-cancel--d24359d1bfeeaae6d815af02.md) | 48 | `result-track:d24359d1bfeeaae6d815af02f30810963b3166ade0bb7a097068a08ab92e59e0` |
| 4 | `theorem` | [mul_right_injective₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-right-injective--2d63f26f5dd2a6ef45e016bc.md) | 51 | `result-track:2d63f26f5dd2a6ef45e016bc000bd89af5460af58e701f826d37702097fbdb8b` |
| 5 | `class` | [IsRightCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/isrightcancelmulzero--da87bb478215d40fc4710691.md) | 57 | `declaration-track:da87bb478215d40fc4710691c1bc25193f3d64bc0837df2ff0b764afac2e9989` |
| 6 | `theorem` | [mul_right_cancel₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-right-cancel--b0bd9c159582bc3613b18750.md) | 65 | `result-track:b0bd9c159582bc3613b18750af1cf818c2b594286be90627bd8c67427c75419d` |
| 7 | `theorem` | [mul_left_injective₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-left-injective--9389c7d8fcc7535b9f9b3f86.md) | 68 | `result-track:9389c7d8fcc7535b9f9b3f8626e2d46acc7c690c76bbb7521e34914c89d59b65` |
| 8 | `class` | [IsCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/iscancelmulzero--c6e4dbde5c2f52c8871863d4.md) | 74 | `declaration-track:c6e4dbde5c2f52c8871863d4a259567aa5f8cfc817f1afffde0827d0c964d4dd` |
| 9 | `class` | [NoZeroDivisors](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/nozerodivisors--4be53980ab077483db8883fe.md) | 82 | `declaration-track:4be53980ab077483db8883fe9c7d0561d9c39a134cb4f8621028342a3f92e5a1` |
| 10 | `class` | [SemigroupWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/semigroupwithzero--1fa7af7ded554315cbcd0f36.md) | 89 | `declaration-track:1fa7af7ded554315cbcd0f36804858a11a2d53ef3b3ff4ac00b17e36d472e945` |
| 11 | `class` | [MulZeroOneClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mulzerooneclass--39c6586932abdd8ed29d49df.md) | 92 | `declaration-track:39c6586932abdd8ed29d49dfb7c84eb7eb5c1836ead4e153c62b6a3e7ff76be1` |
| 12 | `class` | [MonoidWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/monoidwithzero--b78e5b93780aee167f9d223f.md) | 96 | `declaration-track:b78e5b93780aee167f9d223ff38dbddf9c49eb484b924c80ce6fb39c35862db6` |
| 13 | `theorem` | [pow_mul_apply_eq_pow_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/pow-mul-apply-eq-pow-mul--0fe06b6951896396502c396e.md) | 103 | `result-track:0fe06b6951896396502c396eb673e8deb5cdee00b5f231261128c55f61d720eb` |
| 14 | `class` | [CancelMonoidWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/cancelmonoidwithzero--e3ebfb6f1b77dc85b28e7a5b.md) | 114 | `declaration-track:e3ebfb6f1b77dc85b28e7a5baba0eefc438fe66255c9e3e9f088f95316f7c248` |
| 15 | `class` | [CommMonoidWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/commmonoidwithzero--4aca5101f2e23eb1c9fdcbbb.md) | 118 | `declaration-track:4aca5101f2e23eb1c9fdcbbb9749c4b67610774c9a14820143fe57e656c56317` |
| 16 | `theorem` | [mul_left_inj'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-left-inj--a409f950db8b4f24661a3179.md) | 124 | `result-track:a409f950db8b4f24661a3179a2c55042cde37127c2e67904ba7863ad6e28f983` |
| 17 | `theorem` | [mul_right_inj'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-right-inj--d332d6b67666c1d29cbadae6.md) | 127 | `result-track:d332d6b67666c1d29cbadae63473582a9637fb78ee224052da44b5c05483eaff` |
| 18 | `lemma` | [IsLeftCancelMulZero.to_isRightCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/isleftcancelmulzero-to-isrightcancelmulzero--b850c61429ba7a2943faa1d2.md) | 136 | `result-track:b850c61429ba7a2943faa1d2ba1c42ba9b0ceb6937556ef5e1a340d277889c7b` |
| 19 | `lemma` | [IsRightCancelMulZero.to_isLeftCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/isrightcancelmulzero-to-isleftcancelmulzero--f39a0a3e2a7649b713dd7caf.md) | 141 | `result-track:f39a0a3e2a7649b713dd7caf9bff18adf00c6b11cbeee115bdbc6ace4f5d17b4` |
| 20 | `lemma` | [IsLeftCancelMulZero.to_isCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/isleftcancelmulzero-to-iscancelmulzero--3f982b01b2a51c075b1c4aa8.md) | 146 | `result-track:3f982b01b2a51c075b1c4aa8f9d0daaf70f42279d16278658d6047126768fce1` |
| 21 | `lemma` | [IsRightCancelMulZero.to_isCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/isrightcancelmulzero-to-iscancelmulzero--82150634eeb69da92d5155ad.md) | 150 | `result-track:82150634eeb69da92d5155ad09164364ce4c9854c9690a120e154d80e8701245` |
| 22 | `class` | [CancelCommMonoidWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/cancelcommmonoidwithzero--91172480bd04d9903c6b93fb.md) | 159 | `declaration-track:91172480bd04d9903c6b93fb1564d66c1ec9041969a339b7457836e753205a39` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/instance--f778b549d0d009cc1f6b9629.md) | 164 | `declaration-track:f778b549d0d009cc1f6b9629f92263770c555f6df5add48993bc4ffc31b80824` |
| 24 | `class` | [MulDivCancelClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/muldivcancelclass--f90dbd734f0b97c402fd7f80.md) | 172 | `declaration-track:f90dbd734f0b97c402fd7f80d3de4a0e88d428c2947c9e680956dd39074eea3c` |
| 25 | `lemma` | [mul_div_cancel_right₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-div-cancel-right--9b2513c463e3ccacd1c5f520.md) | 178 | `result-track:9b2513c463e3ccacd1c5f52079aa701e3766390e52b14216683febcaa8b2b961` |
| 26 | `lemma` | [mul_div_cancel_left₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-div-cancel-left--35864f171e03784a3aa24c84.md) | 186 | `result-track:35864f171e03784a3aa24c84dff1621386564fd919917264c773362feef8e3a9` |
| 27 | `class` | [GroupWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/groupwithzero--987c72cca18632c9d2d08c88.md) | 197 | `declaration-track:987c72cca18632c9d2d08c8848ce5c3ca4f64a51532dac5d93510149bc6e4cda` |
| 28 | `lemma` | [inv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/inv-zero--61f840fd4326248ab6e7f08b.md) | 206 | `result-track:61f840fd4326248ab6e7f08bb380949c959cc159f261ff14b933de4e4d1280e0` |
| 29 | `lemma` | [mul_inv_cancel₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-inv-cancel--7420424206d1a48e5cc8d00b.md) | 209 | `result-track:7420424206d1a48e5cc8d00bd3ac3f92b4aa541ba6829fe2fa595872a4017f06` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/instance--10aa0f814a17e2e6d7690641.md) | 212 | `declaration-track:10aa0f814a17e2e6d769064167dbefd98c7ab16f9004804de0d1d8e56e699a90` |
| 31 | `class` | [CommGroupWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/commgroupwithzero--cd06655e4d2c32f9446d8d28.md) | 221 | `declaration-track:cd06655e4d2c32f9446d8d28a5d63f48e82f5408dca6f4468e52180d51633e57` |
| 32 | `lemma` | [eq_zero_or_one_of_sq_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/eq-zero-or-one-of-sq-eq-self--e487bfd29f7ffa45c4d35da8.md) | 226 | `result-track:e487bfd29f7ffa45c4d35da8535651006e33c982c50ae77745c1fe6e3d0f0d6d` |
| 33 | `theorem` | [mul_inv_cancel_right₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-inv-cancel-right--0424c99c5310da46f8745889.md) | 236 | `result-track:0424c99c5310da46f87458895c1d7a18ea323c53fcf5b8e0a0709ad85e19fa1f` |
| 34 | `theorem` | [mul_inv_cancel_left₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-inv-cancel-left--c06ed5587cace775e3981b4f.md) | 242 | `result-track:c06ed5587cace775e3981b4fcad368a275c9d04cd067ae0860af7dbec62a5f12` |
| 35 | `theorem` | [mul_eq_zero_of_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-eq-zero-of-left--8e06ecd3b1743df7e9de0376.md) | 253 | `result-track:8e06ecd3b1743df7e9de037678c2271f78999d88867e691883cb5262db296909` |
| 36 | `theorem` | [mul_eq_zero_of_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-eq-zero-of-right--2c9079c6195c0014ae0441f0.md) | 255 | `result-track:2c9079c6195c0014ae0441f096992e749f1fed93683946f98487f8df40af5db4` |
| 37 | `theorem` | [mul_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-eq-zero--2c3c0db0685bea59dbb49247.md) | 262 | `result-track:2c3c0db0685bea59dbb492479cd6f2bba84ce16241f21615788a5fb66d135824` |
| 38 | `theorem` | [zero_eq_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/zero-eq-mul--2aa3f97e022620051e8f98bc.md) | 269 | `result-track:2aa3f97e022620051e8f98bc5e1f4a20b484bd845956ce6ae48596e4b8c6d5dd` |
| 39 | `theorem` | [mul_ne_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-ne-zero-iff--c05c7c062ee3309733f8a038.md) | 273 | `result-track:c05c7c062ee3309733f8a038843a50fce406cf8f11259f98a4c27c70a638df3e` |
| 40 | `theorem` | [mul_eq_zero_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-eq-zero-comm--9121bdda3a8b111159c7c878.md) | 277 | `result-track:9121bdda3a8b111159c7c87802188f3a60e2c5c0d77dd1d1c53383ac9074262b` |
| 41 | `theorem` | [mul_ne_zero_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-ne-zero-comm--ee5b8d9031e0c50776c90115.md) | 282 | `result-track:ee5b8d9031e0c50776c901150f0a5c3225e7e3be8a6f89f299fbce29deaca360` |
| 42 | `theorem` | [mul_self_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-self-eq-zero--90e480f449bd61ce928a6c29.md) | 284 | `result-track:90e480f449bd61ce928a6c298c02cd4a4b8ff578cff8cc490068eed4c1d3d75b` |
| 43 | `theorem` | [zero_eq_mul_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/zero-eq-mul-self--632edf3501d9887981395b66.md) | 286 | `result-track:632edf3501d9887981395b666f9f5d854405397705234be90add6d5072843f9a` |
| 44 | `theorem` | [mul_self_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-self-ne-zero--b7bd634a257b2074b107bb14.md) | 288 | `result-track:b7bd634a257b2074b107bb148898bf339d0dbbecac8e5e3b19e5230a2eee6279` |
| 45 | `theorem` | [zero_ne_mul_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/zero-ne-mul-self--5872ec12a8b9c3efc716317d.md) | 290 | `result-track:5872ec12a8b9c3efc716317da6d789093926dc43da3f6ee5b2b98e3a704865ba` |
| 46 | `theorem` | [mul_eq_zero_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-eq-zero-iff-left--2e1e109aeb3e943e229dc910.md) | 292 | `result-track:2e1e109aeb3e943e229dc910cc25423911a03f46d90ca5558c7593383af07768` |
| 47 | `theorem` | [mul_eq_zero_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-eq-zero-iff-right--50d3c2fef97433c54bbbfe84.md) | 294 | `result-track:50d3c2fef97433c54bbbfe848aff2b9e625fbcdba741ca30a42e2bf97374837a` |
| 48 | `theorem` | [mul_ne_zero_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-ne-zero-iff-left--bea6497fb30126f082909daf.md) | 296 | `result-track:bea6497fb30126f082909daf9bea033de932e7bf6dd61ba43b5551c871e6c20d` |
| 49 | `theorem` | [mul_ne_zero_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6739a2deb685224c688bc34fb759d0ecf9c897fafa6e6d5f80ee72b8aad2e998.lean/declarations/mul-ne-zero-iff-right--0245bc8f9cddf2d77ef0731f.md) | 298 | `result-track:0245bc8f9cddf2d77ef0731f5164dd9ada1ee62b25b63920ef88d2e604b84dd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
