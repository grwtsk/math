# Verification target: GRWTSK.NumberTheory.RingHoms.Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c9036dfc78fc47e8a3e9d51ab6c20d47e6b9d51",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c9036dfc78fc47e8a3e9d51ab6c20d47e6b9d51`.

Source path: `GRWTSK/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicIntegers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ZMod` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modPart](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/modpart--62484082cb0c09e3c2fd393e.md) | 66 | `declaration-track:62484082cb0c09e3c2fd393ee73be935cb11698d4397c3714d7f7842f746796c` |
| 2 | `theorem` | [modPart_lt_p](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/modpart-lt-p--9f29d26f4d989c99276430bc.md) | 71 | `result-track:9f29d26f4d989c99276430bc728579b927a1bd63b605444f0433b1c63ddf4811` |
| 3 | `theorem` | [modPart_nonneg](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/modpart-nonneg--2ce6cf595732715ddf7fb510.md) | 76 | `result-track:2ce6cf595732715ddf7fb51031c1304e1c1009cf6058527222d41ae1742d7fca` |
| 4 | `theorem` | [isUnit_den](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/isunit-den--5342c308204d9e94df3ac919.md) | 79 | `result-track:5342c308204d9e94df3ac919281eef851110855f619c5eae969c0f5cc2bf51e3` |
| 5 | `theorem` | [norm_sub_modPart_aux](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/norm-sub-modpart-aux--8ea1398dd8a5f3c20368a11e.md) | 100 | `result-track:8ea1398dd8a5f3c20368a11e291aec0ba426b778bb87624e4c17d586f7398d29` |
| 6 | `theorem` | [norm_sub_modPart](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/norm-sub-modpart--8e907b1f271cdc319ee277ff.md) | 119 | `result-track:8e907b1f271cdc319ee277ffb8ccd4c7d2d6d58ab190b2f8ca39c1bec4186ff2` |
| 7 | `theorem` | [exists_mem_range_of_norm_rat_le_one](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/exists-mem-range-of-norm-rat-le-one--551b0445382299c07b571380.md) | 132 | `result-track:551b0445382299c07b571380a3ce9094fd70233f68978b1d85c73cec88aa787d` |
| 8 | `theorem` | [zmod_congr_of_sub_mem_span_aux](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/zmod-congr-of-sub-mem-span-aux--8009689387cc97a745638a92.md) | 136 | `result-track:8009689387cc97a745638a929ee32da0d97639aced1b7691b817b15b723c51fc` |
| 9 | `theorem` | [zmod_congr_of_sub_mem_span](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/zmod-congr-of-sub-mem-span--4224ea6653b493693464df0c.md) | 146 | `result-track:4224ea6653b493693464df0cef34b1c7cfb48db14d30b63a48286b3757393134` |
| 10 | `theorem` | [zmod_congr_of_sub_mem_max_ideal](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/zmod-congr-of-sub-mem-max-ideal--572b61306d25b51da16aa731.md) | 151 | `result-track:572b61306d25b51da16aa7318062d0710fd8605253d1dcbd097e00b97018b7ec` |
| 11 | `theorem` | [exists_mem_range](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/exists-mem-range--968fef19ac781200b6bf0146.md) | 163 | `result-track:968fef19ac781200b6bf01469bfcd84645e61742272fc77128dc7e527440f8e3` |
| 12 | `theorem` | [existsUnique_mem_range](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/existsunique-mem-range--8779fa62b086b893ea36c520.md) | 184 | `result-track:8779fa62b086b893ea36c5204fed05e9b5310d761586a972961d6718f6f0303e` |
| 13 | `def` | [zmodRepr](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/zmodrepr--752c7f4d899ffeb1fe640dbc.md) | 195 | `declaration-track:752c7f4d899ffeb1fe640dbcb3dda6c9385bee9841e98147ce6b9061a52cfbaf` |
| 14 | `theorem` | [zmodRepr_spec](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/zmodrepr-spec--9f3c9773f1c2874ba74ea41a.md) | 198 | `result-track:9f3c9773f1c2874ba74ea41a661c22c6d151255cdfe6af0a7034b67f6002ba13` |
| 15 | `theorem` | [zmodRepr_unique](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/zmodrepr-unique--497634f3f10e28c26c08c09d.md) | 201 | `result-track:497634f3f10e28c26c08c09d174141578fd45bc506713d979c489186f37a3e98` |
| 16 | `theorem` | [zmodRepr_lt_p](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/zmodrepr-lt-p--1adf2ae2e75a0a1eb020e1da.md) | 205 | `result-track:1adf2ae2e75a0a1eb020e1da7516332fde72a3a3e124604a0c49756704362c63` |
| 17 | `theorem` | [sub_zmodRepr_mem](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/sub-zmodrepr-mem--d814fc6eb1e14055c4e472a0.md) | 208 | `result-track:d814fc6eb1e14055c4e472a01eed82e14431bcb5bd8313ccd4f1f6ef05020904` |
| 18 | `def` | [toZModHom](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/tozmodhom--99e7484e61be88699a44fd66.md) | 213 | `declaration-track:99e7484e61be88699a44fd666852e46a31d536a606c0c9bec4232a371bcb8d27` |
| 19 | `def` | [toZMod](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/tozmod--edff4145f3f9b88ecd6fce06.md) | 247 | `declaration-track:edff4145f3f9b88ecd6fce0642008628d6631d2388cd16d737ce06343937552e` |
| 20 | `theorem` | [toZMod_spec](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/tozmod-spec--b55f46940848b2224ce69730.md) | 265 | `result-track:b55f46940848b2224ce6973052d94d970915f3666d933dd3b9d71992d04b2121` |
| 21 | `theorem` | [ker_toZMod](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/ker-tozmod--04d8805f5b5460482a295fd0.md) | 274 | `result-track:04d8805f5b5460482a295fd01daf9249bb512e56551e7dd05c000b7d4ae96bf1` |
| 22 | `def` | [residueField](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/residuefield--7da0a1384df8bc503d7890c3.md) | 288 | `declaration-track:7da0a1384df8bc503d7890c36b624b9f69a77df742389e1e5f5e36131dbe4445` |
| 23 | `def` | [appr](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/appr--a6e03c42fb4f1bd20aed6f8c.md) | 295 | `declaration-track:a6e03c42fb4f1bd20aed6f8ccdacdc6e5afbd95e639bf8d7a633aa757009faea` |
| 24 | `theorem` | [appr_lt](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/appr-lt--688f498ffcdb73bc04cbf77d.md) | 304 | `result-track:688f498ffcdb73bc04cbf77d61246f8a1866d9d0862dfacce389ff00e2dbe7ea` |
| 25 | `theorem` | [appr_mono](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/appr-mono--aefd73b4b822bfdc35693775.md) | 323 | `result-track:aefd73b4b822bfdc35693775d27115a014d6808d33bd971ef6051c85044ee102` |
| 26 | `theorem` | [dvd_appr_sub_appr](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/dvd-appr-sub-appr--4f5bc1f99aca8afeb722239f.md) | 330 | `result-track:4f5bc1f99aca8afeb722239f685eac8bf4a2a889ce6c17b24f2596834fa96402` |
| 27 | `theorem` | [appr_spec](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/appr-spec--5b7f2dfc2ce19269f253fb97.md) | 345 | `result-track:5b7f2dfc2ce19269f253fb97d7dbae2a8a50e5c1f8089880a02bc2d19c20dd5e` |
| 28 | `def` | [toZModPow](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/tozmodpow--e407c2806bf1f8d981f3b2ff.md) | 383 | `declaration-track:e407c2806bf1f8d981f3b2ffc3724b5532d352b9a5571d0829dd2a5c5fe0d0b0` |
| 29 | `theorem` | [ker_toZModPow](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/ker-tozmodpow--bc218f19891ba47881220235.md) | 395 | `result-track:bc218f19891ba478812202359e84e76770e5eb6cc0d74cc161cebb3471ba2e9b` |
| 30 | `theorem` | [zmod_cast_comp_toZModPow](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/zmod-cast-comp-tozmodpow--7935c5a8ed6f4e9d010d3b55.md) | 414 | `result-track:7935c5a8ed6f4e9d010d3b55fcef5efc1d32ccbffd29bdbd698362d44af27bf0` |
| 31 | `theorem` | [cast_toZModPow](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/cast-tozmodpow--b0e352cfd98af7b237991b14.md) | 432 | `result-track:b0e352cfd98af7b237991b14fdad2f88f954fee07d07bd3b61c88b24eb28994f` |
| 32 | `theorem` | [denseRange_natCast](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/denserange-natcast--eaa6ef292819971e520be596.md) | 437 | `result-track:eaa6ef292819971e520be59667129941ae36af056bf5c517e4c662069a25f0ff` |
| 33 | `theorem` | [denseRange_intCast](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/denserange-intcast--c2f23cf08f0bc5dac6b13051.md) | 448 | `result-track:c2f23cf08f0bc5dac6b13051dc53f65e02cd426966b987691845a4043845eb9b` |
| 34 | `def` | [nthHom](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/nthhom--5531c951f28670c50e66cc26.md) | 473 | `declaration-track:5531c951f28670c50e66cc26eb8cad192adebb9d455893bf0ac6cab4bc575346` |
| 35 | `theorem` | [nthHom_zero](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/nthhom-zero--2ca8d3068651bbf7cfd3e86a.md) | 476 | `result-track:2ca8d3068651bbf7cfd3e86a0a476369c11624e08efa98090172534683aa2ed4` |
| 36 | `theorem` | [pow_dvd_nthHom_sub](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/pow-dvd-nthhom-sub--5b805ef9c0f1ad90937a2be6.md) | 487 | `result-track:5b805ef9c0f1ad90937a2be6399c04b74d402f8eb8a9f6ee95d7c2ea4483b56a` |
| 37 | `theorem` | [isCauSeq_nthHom](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/iscauseq-nthhom--b98e1c104e7900c9e3bd79d0.md) | 495 | `result-track:b98e1c104e7900c9e3bd79d009cb37e48355e5cd1af4c4d5a2ebd42d420181b2` |
| 38 | `def` | [nthHomSeq](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/nthhomseq--0c84b515d20485aee0780c7a.md) | 512 | `declaration-track:0c84b515d20485aee0780c7af01dea7f66561dbd9d5b6ab68afa9c1cb97fe171` |
| 39 | `theorem` | [nthHomSeq_one](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/nthhomseq-one--675182c1a1c319654fa9b9f3.md) | 516 | `result-track:675182c1a1c319654fa9b9f3585d2fb69115409ed2c602a86088db124c8f90ed` |
| 40 | `theorem` | [nthHomSeq_add](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/nthhomseq-add--46c8f90d9ab9ee79fe10bdc6.md) | 525 | `result-track:46c8f90d9ab9ee79fe10bdc6455931642f5bffba7d3caa41cf66d18e9c6de9c3` |
| 41 | `theorem` | [nthHomSeq_mul](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/nthhomseq-mul--a3e26d8d8d933f191ead4702.md) | 540 | `result-track:a3e26d8d8d933f191ead4702ec2c2bdf08b6e32c29b3d38c98518f2498f72f34` |
| 42 | `def` | [limNthHom](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/limnthhom--f901ab5b02fd9831a7128886.md) | 558 | `declaration-track:f901ab5b02fd9831a7128886d9f7e4bab73c58c9395050ccf63dbd4ac4cff0e7` |
| 43 | `theorem` | [limNthHom_spec](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/limnthhom-spec--8524a1190cdb822f1082f423.md) | 561 | `result-track:8524a1190cdb822f1082f4237d9b6a22b8da70956f7c16ded6734a6471946ef5` |
| 44 | `theorem` | [limNthHom_zero](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/limnthhom-zero--752e12f687360712079f43b5.md) | 574 | `result-track:752e12f687360712079f43b5304582db2790ab115d584b88ab0ec46c4a777681` |
| 45 | `theorem` | [limNthHom_one](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/limnthhom-one--94240b392bd867e266d9d5c0.md) | 576 | `result-track:94240b392bd867e266d9d5c09fb56362860bce86745196eef1a59fd6df144ff1` |
| 46 | `theorem` | [limNthHom_add](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/limnthhom-add--8194d19750a614181ec1977a.md) | 579 | `result-track:8194d19750a614181ec1977a559fcbdb76f30a28c70ab40684b712c0c672868d` |
| 47 | `theorem` | [limNthHom_mul](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/limnthhom-mul--8f3dfd3a9903ad8c2b94d3ce.md) | 583 | `result-track:8f3dfd3a9903ad8c2b94d3ce3b909e20e8ab99857c13b916dda346b4d591a6d0` |
| 48 | `def` | [lift](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/lift--b0e70f49693f129981af1b45.md) | 591 | `declaration-track:b0e70f49693f129981af1b45eaba3ea1095637f90893ec9073479a319c377f93` |
| 49 | `theorem` | [lift_sub_val_mem_span](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/lift-sub-val-mem-span--f26cdd8572871a629854d67d.md) | 598 | `result-track:f26cdd8572871a629854d67d2755eb542195ef6c0fc68d07a02e5bbba050a830` |
| 50 | `theorem` | [lift_spec](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/lift-spec--3754720e44f3151b73d53e1f.md) | 617 | `result-track:3754720e44f3151b73d53e1ff377fb09efe45357ba6c0c35c0310b52293cac17` |
| 51 | `theorem` | [lift_unique](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/lift-unique--6a64eac4ca2c17e5695eba86.md) | 626 | `result-track:6a64eac4ca2c17e5695eba86a7f1922ea1a4a7f9398ad3dc8b6c055ff71466de` |
| 52 | `theorem` | [lift_self](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/lift-self--87dd00b00eb2b45f48857b91.md) | 639 | `result-track:87dd00b00eb2b45f48857b912e9f54316421f627f5d483000fd5eafdafad10c3` |
| 53 | `theorem` | [ext_of_toZModPow](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/ext-of-tozmodpow--a83dcb7eae180872b6c96860.md) | 646 | `result-track:a83dcb7eae180872b6c968601aa8ba34e8ce4d741abe9e75f3d8b09d235bb3c2` |
| 54 | `theorem` | [toZModPow_eq_iff_ext](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/tozmodpow-eq-iff-ext--761667d8cfaac5a280082a32.md) | 654 | `result-track:761667d8cfaac5a280082a326a0c564a1cb1b631e301587406700583f2a4fcd3` |
| 55 | `lemma` | [isCauSeq_padicNorm_of_pow_dvd_sub](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/iscauseq-padicnorm-of-pow-dvd-sub--9b4484d02f17f3986da4f674.md) | 666 | `result-track:9b4484d02f17f3986da4f674b2a6dbe47dec07ae35a6e32b6d6b13ae3274ec14` |
| 56 | `lemma` | [toZModPow_ofIntSeq_of_pow_dvd_sub](../../../../mathematics/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/declarations/tozmodpow-ofintseq-of-pow-dvd-sub--7bed786f172345ba5d90a812.md) | 681 | `result-track:7bed786f172345ba5d90a8120e8fbb13fb15891f85877f8664192b6630d4c7fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
