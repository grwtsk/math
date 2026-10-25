# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Find.Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28d2f6d62ec0776243b8db8ee80786b5c06a62cd",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28d2f6d62ec0776243b8db8ee80786b5c06a62cd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.WF` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lbp](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/lbp--5fd0bc721358171389bbfa9c.md) | 22 | `declaration-track:5fd0bc721358171389bbfa9c28be752be47d0541569b6ee9ca9f2f0817a41bae` |
| 2 | `def` | [wf_lbp](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/wf-lbp--789b87bcc904f8524b0bd458.md) | 27 | `declaration-track:789b87bcc904f8524b0bd45859d48c8a845b881d6aeafba5141e06811031d05c` |
| 3 | `def` | [findX](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findx--b93be162e150a3ab707d65fe.md) | 42 | `declaration-track:b93be162e150a3ab707d65fe94cac902cc0c1bda210148ab7e3cfc01369a0efb` |
| 4 | `def` | [find](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find--31f4279ad23b5bb468a0a460.md) | 63 | `declaration-track:31f4279ad23b5bb468a0a46093e95c7445643bf7f9dfe10e35925ed9ac3e5806` |
| 5 | `theorem` | [find_spec](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-spec--abe655539c965a5fadbfeb10.md) | 66 | `result-track:abe655539c965a5fadbfeb10ae3bf4417c86e97a94287fcc109b90fe2bb30ee4` |
| 6 | `theorem` | [find_min](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-min--caa84246c25a93a0e207abbe.md) | 69 | `result-track:caa84246c25a93a0e207abbe0463dec42fbd0c4b43b1bbf59fdff6765ed7026b` |
| 7 | `theorem` | [find_min'](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-min--9362f534034c0e9113dee613.md) | 72 | `result-track:9362f534034c0e9113dee613135a068c6ba4966838a361f6bdbb7e861d603ed8` |
| 8 | `lemma` | [find_eq_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-eq-iff--2678d43a3c39004214c5c0ac.md) | 75 | `result-track:2678d43a3c39004214c5c0ac9ee2d9f67511bd8a91d86b53fab89eca60adbafb` |
| 9 | `lemma` | [find_lt_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-lt-iff--a3ebd585c5d4e81bf05d5b55.md) | 82 | `result-track:a3ebd585c5d4e81bf05d5b5567c640305c5baba057b66d13116f13e6b7fa54a0` |
| 10 | `lemma` | [find_le_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-le-iff--2702b2a084bcd8edef75b2fd.md) | 86 | `result-track:2702b2a084bcd8edef75b2fd27c68e08f92827905e1d79d97402980092d76172` |
| 11 | `lemma` | [le_find_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/le-find-iff--3b8693cc36071e786b5568e9.md) | 89 | `result-track:3b8693cc36071e786b5568e9582c221f5127a3da5159f1a76cc9680725afa135` |
| 12 | `lemma` | [lt_find_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/lt-find-iff--2b81c6712d0a9301c726014e.md) | 92 | `result-track:2b81c6712d0a9301c726014eea7dc8fe3c33de550654c16a0eeaf6eeaa07b939` |
| 13 | `lemma` | [find_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-eq-zero--fb75ebaa6f7499b43dafcfd3.md) | 95 | `result-track:fb75ebaa6f7499b43dafcfd382bdb5a4026594162ee9164ab7276e464ba1dc92` |
| 14 | `lemma` | [find_mono_of_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-mono-of-le--7127a80e9d33b0976488f4db.md) | 101 | `result-track:7127a80e9d33b0976488f4db84f0aaaa9f71d40916218a57a9e1c9937d7f64e3` |
| 15 | `lemma` | [find_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-mono--428270807275b464b212250a.md) | 107 | `result-track:428270807275b464b212250a2a3069efaed68b68dd20239897f4204772cfefdd` |
| 16 | `lemma` | [find_congr](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-congr--92a30af7ba1593d5d3816930.md) | 117 | `result-track:92a30af7ba1593d5d3816930883e1b409cd3184cff364c82af56ee4b79277903` |
| 17 | `lemma` | [find_congr'](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-congr--7a9bf0b24e78260ab6ff830e.md) | 123 | `result-track:7a9bf0b24e78260ab6ff830e24932f82d8915b89ac21d99b7c3d401996670815` |
| 18 | `lemma` | [find_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-le--3982290feef5aa75c34da1c3.md) | 127 | `result-track:3982290feef5aa75c34da1c374b13caad393d7c47210fd3fe75da9491a145981` |
| 19 | `lemma` | [find_comp_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-comp-succ--ee0e4cbd2f4e7018f1a3fa8d.md) | 130 | `result-track:ee0e4cbd2f4e7018f1a3fa8d554e2d6066189ed77854d38e4604f2cc8ea81293` |
| 20 | `lemma` | [find_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-pos--d843470ebbee7c9b27878bb7.md) | 136 | `result-track:d843470ebbee7c9b27878bb71f0d5422111daf8a1573b5a6a4e88590b022b1ff` |
| 21 | `lemma` | [find_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/find-add--e5a0c533a3e3e0f90dd7765c.md) | 139 | `result-track:e5a0c533a3e3e0f90dd7765c32e80d48d710c5045e68eaefde62160130079cf2` |
| 22 | `def` | [findGreatest](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest--c1c788869d79a6ddbd57ad93.md) | 158 | `declaration-track:c1c788869d79a6ddbd57ad93d1fa3b8e7e6738330b9d84472b54c7f2985d3ad7` |
| 23 | `lemma` | [findGreatest_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-zero--f39be476c6e771af5a516d27.md) | 164 | `result-track:f39be476c6e771af5a516d278e644bddb4d9485adba32d412229cc806eba5e4a` |
| 24 | `lemma` | [findGreatest_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-succ--9acdae4e2c76d38715873a3d.md) | 166 | `result-track:9acdae4e2c76d38715873a3d67236a297922e34f9669807261351c8a4c7c85da` |
| 25 | `lemma` | [findGreatest_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-eq--a64104c313b41177029df8ca.md) | 169 | `result-track:a64104c313b41177029df8cac14493822e88227159efa48e7a808560e2b29fdb` |
| 26 | `lemma` | [findGreatest_of_not](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-of-not--99fe66959d385f9d47d6f3d9.md) | 174 | `result-track:99fe66959d385f9d47d6f3d95638c13c5f3aaa587d8e93913b88dde1899a85eb` |
| 27 | `lemma` | [findGreatest_eq_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-eq-iff--1bcbb73e5df624feb15f1f48.md) | 177 | `result-track:1bcbb73e5df624feb15f1f48071efbbd111c8c180c5afc78f558a4f359b3ddca` |
| 28 | `lemma` | [findGreatest_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-eq-zero-iff--0e32352eeec8fa9a234f7f8a.md) | 206 | `result-track:0e32352eeec8fa9a234f7f8a24c5ddc7a1770c461e9858a9428e38c526b08526` |
| 29 | `lemma` | [findGreatest_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-pos--754bcb684e33a6905cf82e2a.md) | 209 | `result-track:754bcb684e33a6905cf82e2a17d239e9c34777779d324eb18ebf0627e4a4e42f` |
| 30 | `lemma` | [findGreatest_spec](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-spec--1ead21144766c095f8458f03.md) | 212 | `result-track:1ead21144766c095f8458f0379173f4c00e0c7a88551bba504bc6dc407c29aec` |
| 31 | `lemma` | [findGreatest_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-le--11f55ca647f518014867f20d.md) | 219 | `result-track:11f55ca647f518014867f20dce11b73d079986b6ca218bfa96bc1b90d8160e12` |
| 32 | `lemma` | [le_findGreatest](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/le-findgreatest--c2f1b0b476005737b48862ce.md) | 222 | `result-track:c2f1b0b476005737b48862ce28565cb7ee7d413e5830f3be8a0443cb4886fa47` |
| 33 | `lemma` | [findGreatest_mono_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-mono-right--2d1005bfd2a7b9b481667833.md) | 225 | `result-track:2d1005bfd2a7b9b481667833e08469eb52880e70843cbf610ecbdb1894856fbe` |
| 34 | `lemma` | [findGreatest_mono_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-mono-left--417ee021980bf4cc53908bcb.md) | 235 | `result-track:417ee021980bf4cc53908bcb3aa36146bdafd9de50eaf981ef367d6cde13c00f` |
| 35 | `lemma` | [findGreatest_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-mono--6f50f0d6d98236dd32528c7f.md) | 245 | `result-track:6f50f0d6d98236dd32528c7fbb04c9aacaf0098c047a4b5a4278134d343e077b` |
| 36 | `theorem` | [findGreatest_is_greatest](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-is-greatest--5c49778a98a235afa1977e1b.md) | 249 | `result-track:5c49778a98a235afa1977e1b6a9e9fef80272d7329f199724910cc67aa0e8e05` |
| 37 | `theorem` | [findGreatest_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/declarations/findgreatest-of-ne-zero--3f2166970bb8fda41f98f1cd.md) | 252 | `result-track:3f2166970bb8fda41f98f1cd287a641567f3455ed3ebd7f9aedb982608ae32b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
