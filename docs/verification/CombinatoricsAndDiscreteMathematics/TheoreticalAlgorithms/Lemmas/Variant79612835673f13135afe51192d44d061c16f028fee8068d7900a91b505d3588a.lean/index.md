# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "031a20bfc22800645da648927fdd59ab846a046c",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `031a20bfc22800645da648927fdd59ab846a046c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toList_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/tolist-nil--336948f531df7557b842fea7.md) | 47 | `result-track:336948f531df7557b842fea76da2f71bd1bb8d6974aaf142c3c8519cffadca8a` |
| 2 | `theorem` | [toList_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/tolist-cons--e6a88172886872ca1c6d1343.md) | 48 | `result-track:e6a88172886872ca1c6d134384f6ba455624005fd548a6f4696c2af62e52c727` |
| 3 | `theorem` | [foldl_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/foldl-eq--4533fb935a0f2f9b0a361a6d.md) | 52 | `result-track:4533fb935a0f2f9b0a361a6dc0863d656b30e03bb31d62aed271a519a2cad40d` |
| 4 | `theorem` | [length_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/length-eq--0d206a2b91d4b9851ff21aec.md) | 57 | `result-track:0d206a2b91d4b9851ff21aec6323423eb089540bdee792d6f70de2124f14c99c` |
| 5 | `theorem` | [get?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/get-eq--15c510b06d1f010a4eaf2338.md) | 67 | `result-track:15c510b06d1f010a4eaf233885b1a5c2a1315e80fdc052d7b91f01ca125158dd` |
| 6 | `theorem` | [getCast?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getcast-eq--f72e21a27a50cba4b5221db0.md) | 72 | `result-track:f72e21a27a50cba4b5221db095c07c50697572e8877d20498c1bcb59333caa62` |
| 7 | `theorem` | [contains_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/contains-eq--edee40e0f5b203c1a10d70ec.md) | 77 | `result-track:edee40e0f5b203c1a10d70ec82ec979801c88cfb59ed5fe7582f65cee49e623c` |
| 8 | `theorem` | [getCast_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getcast-eq--b32807867de03d259e5b61b2.md) | 82 | `result-track:b32807867de03d259e5b61b26439ffe2f2de0141b32fc388f1ae2352a80417b1` |
| 9 | `theorem` | [get_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/get-eq--a204d12fc4b974c8971856f0.md) | 89 | `result-track:a204d12fc4b974c8971856f0943560960363a5328c2ee73aed52281e08f88cf2` |
| 10 | `theorem` | [getEntry_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getentry-eq--d1aa263090081faec973fa05.md) | 96 | `result-track:d1aa263090081faec973fa05c96785e028fa5b53a9acc493537a5a343e17add7` |
| 11 | `theorem` | [getEntry?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getentry-eq--99f5659d89f9e3a7196f42b5.md) | 104 | `result-track:99f5659d89f9e3a7196f42b5f39333599da25bb79b59bca92914564bd38d2c2e` |
| 12 | `theorem` | [getEntryD_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getentryd-eq--6f7dce07ab46b7d0c828158d.md) | 112 | `result-track:6f7dce07ab46b7d0c828158d83c9b9a8941401a5658852d12fc53dfe91aa16ea` |
| 13 | `theorem` | [getEntry!_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getentry-eq--9cc7499ddda5cfa0469448b3.md) | 120 | `result-track:9cc7499ddda5cfa0469448b30c37458368250a47c410ea9668fbfb0c3cd765cc` |
| 14 | `theorem` | [getCastD_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getcastd-eq--b15f8801842a89fb7649dd18.md) | 128 | `result-track:b15f8801842a89fb7649dd184962e7c14bb750708ec09058a9c09975bf826b3e` |
| 15 | `theorem` | [getD_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getd-eq--a18478a25d73e4ad5f36b27a.md) | 136 | `result-track:a18478a25d73e4ad5f36b27aacfb8ea20e1f369f353d8b2706b7160bedbeacb5` |
| 16 | `theorem` | [panicWithPosWithDecl_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/panicwithposwithdecl-eq--2d4297b590816d7e1c5ba12b.md) | 144 | `result-track:2d4297b590816d7e1c5ba12bf78066ed16912e80941cd8acdd88c018dd40f86a` |
| 17 | `theorem` | [getCast!_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getcast-eq--f3de2a9618a9dfd0c3e21f73.md) | 148 | `result-track:f3de2a9618a9dfd0c3e21f738c830bd717f853e849cc420cd303266c821985a4` |
| 18 | `theorem` | [get!_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/get-eq--355197cf37a18dcbf425c5eb.md) | 156 | `result-track:355197cf37a18dcbf425c5ebc89fecb821934e699b3a353dd1f4d2deb5016358` |
| 19 | `theorem` | [getKey?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getkey-eq--e5f9bd61d070ab362addc58c.md) | 164 | `result-track:e5f9bd61d070ab362addc58c3f959a789e412c92c71faabbb2715463f1c8c259` |
| 20 | `theorem` | [getKey_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getkey-eq--0421022b4c68d191154ab340.md) | 169 | `result-track:0421022b4c68d191154ab3400228b35142b36383569f0ccf4ccbd0c96897f226` |
| 21 | `theorem` | [getKeyD_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getkeyd-eq--bfc2cf5936f810c51251a370.md) | 176 | `result-track:bfc2cf5936f810c51251a370242b3462d415b3a6d34670646859fccc254d438e` |
| 22 | `theorem` | [getKey!_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/getkey-eq--05ce5a09b915df9621b1f04b.md) | 183 | `result-track:05ce5a09b915df9621b1f04b75c682f6532afcf10600136a330ef7dc4fb4cedc` |
| 23 | `theorem` | [toList_replace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/tolist-replace--00b0d448eef654a32b5fcbc8.md) | 190 | `result-track:00b0d448eef654a32b5fcbc896db3e0e8bd68e1950a377ed2e1ae26bb53c1ad2` |
| 24 | `theorem` | [toList_erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/tolist-erase--ab433c3e5389d338186d7cf6.md) | 197 | `result-track:ab433c3e5389d338186d7cf62aed0ce1af9dec5c52f620280937162643dee2dd` |
| 25 | `theorem` | [toList_filterMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/tolist-filtermap--cea064930d8a9ce68d6dc8a2.md) | 203 | `result-track:cea064930d8a9ce68d6dc8a27da1570ebc132a5ecc0a3586a08635f2b9049c48` |
| 26 | `theorem` | [toList_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/tolist-map--5d80ce948283a6377f3690fd.md) | 221 | `result-track:5d80ce948283a6377f3690fd6331527790da966b2b9c607c54029bc42d16e360` |
| 27 | `theorem` | [toList_filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/tolist-filter--7a048e5a9a514e2698ddaf69.md) | 235 | `result-track:7a048e5a9a514e2698ddaf69a8c13165bb0fd93884b6dafb4f4b1d6bb4de372a` |
| 28 | `theorem` | [filterMap_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/filtermap-eq-map--65a305e254e1ebad0f0b7db1.md) | 250 | `result-track:65a305e254e1ebad0f0b7db13cd5915fc079ada1310386cccde921995ebaf722` |
| 29 | `theorem` | [filterMap_eq_filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/filtermap-eq-filter--56167a0faaf3cab77781ca0e.md) | 258 | `result-track:56167a0faaf3cab77781ca0e47a0a6ff73db66980bc9591e7542f63693f2cd5b` |
| 30 | `theorem` | [toList_alter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/tolist-alter--20abd4f23bb31961006e9da3.md) | 268 | `result-track:20abd4f23bb31961006e9da3010ae1cefd4d02b6736cb3f681b849c627bbeb2e` |
| 31 | `theorem` | [modify_eq_alter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/modify-eq-alter--2f55544341028655abc9972d.md) | 279 | `result-track:2f55544341028655abc9972d912d6ed4525da24edc52cf7ab0490d434c9a8950` |
| 32 | `theorem` | [toList_alter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/tolist-alter--0de779c863fd447ebd273c57.md) | 289 | `result-track:0de779c863fd447ebd273c577ecb0de4adbd96f03b1cd1ec3480892e03e09141` |
| 33 | `theorem` | [modify_eq_alter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/modify-eq-alter--70feed0e330b26b0a43517d5.md) | 299 | `result-track:70feed0e330b26b0a43517d5ab9e148fd12b0606d1f006d99041dab6c89d1b4c` |
| 34 | `theorem` | [foldl_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/foldl-apply--fdf71cf10b61db4d6303c190.md) | 307 | `result-track:fdf71cf10b61db4d6303c1909326106ad20d3223817462f01b9bd18f969137e5` |
| 35 | `theorem` | [foldr_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/foldr-apply--7c7dda6b2cd728de1c5a8958.md) | 312 | `result-track:7c7dda6b2cd728de1c5a89589ccb6925835af1e7a19d5f64b3c3b873fc13b0d7` |
| 36 | `theorem` | [foldl_push_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant79612835673f13135afe51192d44d061c16f028fee8068d7900a91b505d3588a.lean/declarations/foldl-push-apply--94bd7eca4b82ae77b898fd74.md) | 317 | `result-track:94bd7eca4b82ae77b898fd74df02bcf81e3ff162446159572846258aae36ff63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
