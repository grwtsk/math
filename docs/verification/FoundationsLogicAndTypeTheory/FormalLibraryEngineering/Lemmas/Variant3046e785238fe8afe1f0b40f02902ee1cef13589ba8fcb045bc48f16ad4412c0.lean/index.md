# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "269cc7b25097f324e8df8dc4a857420041397d57",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `269cc7b25097f324e8df8dc4a857420041397d57`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.TacticsExtra` — import line 9; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Simproc` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mod_add_mod_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/mod-add-mod-lt--fe5b35ccbb0fea2ec15d4b1d.md) | 26 | `result-track:fe5b35ccbb0fea2ec15d4b1d5bcf77a03d34a8b3b72a3793b78fbb17c2d56949` |
| 2 | `theorem` | [mod_add_mod_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/mod-add-mod-eq--4c7f088e2209097bd2a2575c.md) | 31 | `result-track:4c7f088e2209097bd2a2575cb39d8a58cdbd0d2fe5dd8af395d7f70b89bf3616` |
| 3 | `theorem` | [add_mod_eq_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/add-mod-eq-sub--731899eb20a22367ed8fff4e.md) | 47 | `result-track:731899eb20a22367ed8fff4e3d11f5cb46959dec57773b955a48ce8cd81a1356` |
| 4 | `theorem` | [lt_div_iff_mul_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/lt-div-iff-mul-lt--449140b49f1266f944a11207.md) | 51 | `result-track:449140b49f1266f944a1120756c8c921be6a943c084e7a7a09d2973f6bfe191f` |
| 5 | `theorem` | [div_le_iff_le_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/div-le-iff-le-mul--15419eb9504996a8d4ec0135.md) | 59 | `result-track:15419eb9504996a8d4ec0135244e39e482893435f4b0ca4baa78d69ae3262ba3` |
| 6 | `theorem` | [le_mul_iff_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/le-mul-iff-le-left--1d19b6bddea802e2f9e80160.md) | 63 | `result-track:1d19b6bddea802e2f9e80160be1e5738bddd0a071a041f62d8eee5a9a300bb9c` |
| 7 | `theorem` | [le_mul_iff_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/le-mul-iff-le-right--2210d017d719adc63ee23eea.md) | 68 | `result-track:2210d017d719adc63ee23eea8dca7a385d6f96ab74d8cf32658a4b727f4b480c` |
| 8 | `theorem` | [div_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/div-eq-iff--17cdbc35ebafe60a33369c7d.md) | 73 | `result-track:17cdbc35ebafe60a33369c7db8b6c4ea8df581078826d49023468da20b3a613d` |
| 9 | `theorem` | [lt_of_div_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/lt-of-div-eq-zero--bd19b07ac96860e488dbae7d.md) | 76 | `result-track:bd19b07ac96860e488dbae7d9895b170a93b05b34215be018dd02a386a587fa6` |
| 10 | `theorem` | [div_eq_zero_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/div-eq-zero-iff-lt--0ed3a16b6df97722030ba7f0.md) | 80 | `result-track:0ed3a16b6df97722030ba7f066c5a3e35ceff1f47eb2abe28a85056ff0df418e` |
| 11 | `theorem` | [div_mul_self_eq_mod_sub_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/div-mul-self-eq-mod-sub-self--48a1cf47a29d65b26425630b.md) | 83 | `result-track:48a1cf47a29d65b26425630be620516e12239a4003acb9f88077b8bc1f026b62` |
| 12 | `theorem` | [mul_div_self_eq_mod_sub_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/mul-div-self-eq-mod-sub-self--596f201c8bb1284814051e3c.md) | 88 | `result-track:596f201c8bb1284814051e3cc290a923cec58acae7cfc461ffa9c742fe4b42cc` |
| 13 | `theorem` | [lt_div_mul_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/lt-div-mul-self--a478ea7d6cbfdc08628f0a89.md) | 91 | `result-track:a478ea7d6cbfdc08628f0a89cb4233d7f8370136df7c605da79ac7018525b6d9` |
| 14 | `theorem` | [div_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/div-pos--af84563a081115be1dbde691.md) | 96 | `result-track:af84563a081115be1dbde6918e39211b17c7da837e8e79506b8e4985dec715e3` |
| 15 | `theorem` | [div_le_div_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/div-le-div-left--e50878ae71c84b4ab78b9f6a.md) | 101 | `result-track:e50878ae71c84b4ab78b9f6aea1b5372e8970df0211139bb81ab46220031d71b` |
| 16 | `theorem` | [div_le_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/div-le-div--16de2b8f91031ae7e34c5526.md) | 105 | `result-track:16de2b8f91031ae7e34c55269ebbd2e1968059e6f3cfd94eacdf3ff54f442df2` |
| 17 | `theorem` | [div_add_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/div-add-le-right--94ada56c11da696bfb336eaa.md) | 109 | `result-track:94ada56c11da696bfb336eaa0b05ae09ef85fa7caa706f79b6bacb0754f6d68c` |
| 18 | `theorem` | [div_add_div_le_add_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/div-add-div-le-add-div--9cabbb05a4ff661a43232997.md) | 113 | `result-track:9cabbb05a4ff661a43232997741e043414ee57d3bef47dac2f84433986d16545` |
| 19 | `theorem` | [succ_div_of_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/succ-div-of-dvd--544ad49e481330bf3f6e3add.md) | 119 | `result-track:544ad49e481330bf3f6e3add48696080d7628794b3ccee1b7d31d942026d6a19` |
| 20 | `theorem` | [succ_div_of_mod_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/succ-div-of-mod-eq-zero--980e4ac46ac50669b0ffcbd8.md) | 141 | `result-track:980e4ac46ac50669b0ffcbd8cbb3afad70282a95e4d3ce490e5fec851a2faca8` |
| 21 | `theorem` | [succ_div_of_not_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/succ-div-of-not-dvd--0f8b8fc44bfacd056271c75e.md) | 145 | `result-track:0f8b8fc44bfacd056271c75ec3950608904606c817a32e546c2c7d6d8340a88b` |
| 22 | `theorem` | [succ_div_of_mod_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/succ-div-of-mod-ne-zero--5fb10a7172132f029397fa38.md) | 159 | `result-track:5fb10a7172132f029397fa3803ec46fc3a29a0bcde5a75c16925b6e89c486332` |
| 23 | `theorem` | [succ_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/succ-div--d0877210d3cc431aa6389a1c.md) | 163 | `result-track:d0877210d3cc431aa6389a1ccc67df7e37bcbcbdb7013a3055964968033d1215` |
| 24 | `theorem` | [add_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/add-div--2df75f79083465fd24a6b264.md) | 168 | `result-track:2df75f79083465fd24a6b264e91389554dea2925ea966eb58ff7e4475198a04d` |
| 25 | `theorem` | [mod_add_mod_lt_of_add_mod_eq_sub_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/mod-add-mod-lt-of-add-mod-eq-sub-one--2ffad3f01c5058e261b93338.md) | 185 | `result-track:2ffad3f01c5058e261b93338214a166e970fe3ff6e27c9804d4ec90616735b8d` |
| 26 | `theorem` | [add_div_of_dvd_add_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/add-div-of-dvd-add-add-one--4c1b20bfc6b08f4f1b39582d.md) | 192 | `result-track:4c1b20bfc6b08f4f1b39582d5391952935a40c9551efa17257445a22b12dae4a` |
| 27 | `theorem` | [div_lt_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/div-lt-of-lt--e311dd54539a21bbc45c7ac9.md) | 199 | `result-track:e311dd54539a21bbc45c7ac9272447cf1354f6a8fa29465b1dcb9ab5a13d150e` |
| 28 | `theorem` | [div_mod_eq_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/div-mod-eq-div--e8e28c6bc6edb27ecc12033e.md) | 206 | `result-track:e8e28c6bc6edb27ecc12033ee10f7972fd8746a83f523df4d11d9e8a399547b5` |
| 29 | `theorem` | [div_mod_eq_mod_div_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/div-mod-eq-mod-div-mod--ae88414247fdcfedfa037600.md) | 209 | `result-track:ae88414247fdcfedfa0376007872054a246735c0ce3eea26e33222c7447323fa` |
| 30 | `theorem` | [mod_mod_eq_mod_of_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/mod-mod-eq-mod-of-lt-right--f458c495d8b8ba0fb32ca25d.md) | 213 | `result-track:f458c495d8b8ba0fb32ca25dfd5bde70c1fb818a0bed2b232bf4a26ea55d7b06` |
| 31 | `theorem` | [mod_mod_eq_mod_mod_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/mod-mod-eq-mod-mod-mod--a7434ea1781f14fcb509eca0.md) | 216 | `result-track:a7434ea1781f14fcb509eca028796b99918f807238c7a8a2fb085a9052353f29` |
| 32 | `theorem` | [mod_mod_eq_mod_mod_of_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/mod-mod-eq-mod-mod-of-dvd--c01246c3a93df47a917b3549.md) | 220 | `result-track:c01246c3a93df47a917b3549a91bc9a809ae6974637812d7da63b8db11728595` |
| 33 | `theorem` | [mod_mod_of_dvd'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/mod-mod-of-dvd--0b8964f357189a9ca737e41e.md) | 225 | `result-track:0b8964f357189a9ca737e41ea964134b097abde7461a3a3aa43c1af7c1218286` |
| 34 | `theorem` | [mod_mod_eq_mod_mod_mod_of_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/mod-mod-eq-mod-mod-mod-of-dvd--65337439b8ffac6dc364d447.md) | 228 | `result-track:65337439b8ffac6dc364d4474a6c46b1e1e9db9371fa03a1af89dfbbcecbf2b7` |
| 35 | `theorem` | [mod_eq_mod_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/mod-eq-mod-iff--c4af1f2d8da70b17abf8b961.md) | 235 | `result-track:c4af1f2d8da70b17abf8b9610fed4c905850f9e5644365314630ecd0c0110b2c` |
| 36 | `theorem` | [ext_div_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/ext-div-mod--3108fae7b023a89cf325d5e6.md) | 250 | `result-track:3108fae7b023a89cf325d5e6f07c8998a3a8ef765772ace403c6a151eba2aada` |
| 37 | `theorem` | [ext_div_mod_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/ext-div-mod-iff--dff3ef182e886c9118f7a52a.md) | 253 | `result-track:dff3ef182e886c9118f7a52a9ce66ef1baa5e48ca13a09de869c570861b8f63a` |
| 38 | `theorem` | [base_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/declarations/base-induction--c6b932945e7a8f233c0b68d4.md) | 257 | `result-track:c6b932945e7a8f233c0b68d4247334e0ccad0d30931401415c9a17169dcd65b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
