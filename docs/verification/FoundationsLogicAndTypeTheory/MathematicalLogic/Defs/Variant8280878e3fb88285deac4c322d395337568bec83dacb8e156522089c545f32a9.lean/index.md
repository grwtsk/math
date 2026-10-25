# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3abb52b597431c91c13ab0cf52256974e494563d",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3abb52b597431c91c13ab0cf52256974e494563d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Attr.Register` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [flip_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/flip-def--9eb0d6d4482585af3a471bf7.md) | 32 | `result-track:9eb0d6d4482585af3a471bf768d2a01c0b3c9ac735b7afc63110be6479d2b5cb` |
| 2 | `theorem` | [comp_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/comp-assoc--1d7d540a6006d8bb284e2b8e.md) | 36 | `result-track:1d7d540a6006d8bb284e2b8e7a97a170721df4c9cf4bba26f84a02e6c3731ac8` |
| 3 | `def` | [dcomp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/dcomp--8df121101c556ca8d7d8e956.md) | 44 | `declaration-track:8df121101c556ca8d7d8e956c0037f34e07be716bfd5006d66ec100be04a2621` |
| 4 | `theorem` | [dcomp_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/dcomp-def--243f6809c1844be30a03bb9f.md) | 54 | `result-track:243f6809c1844be30a03bb9f17d4bcd690a4052c51441fc6ca2f74c6090f9ab6` |
| 5 | `theorem` | [dcomp_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/dcomp-apply--f77a942ae5954008560fa0a2.md) | 56 | `result-track:f77a942ae5954008560fa0a230bb6430baa8b92c868bc0679f4a8c763d248d7c` |
| 6 | `theorem` | [dcomp_eq_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/dcomp-eq-comp--7d9d764f09a6f4a8f1e2d5b1.md) | 58 | `result-track:7d9d764f09a6f4a8f1e2d5b1da28aea81b116a2109ce42e66190a3ba629fda4b` |
| 7 | `def` | [prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod--181f4e8698a4288bae5815d8.md) | 66 | `declaration-track:181f4e8698a4288bae5815d84686c45ccd3f1039301d948e93d4afa2b579bd25` |
| 8 | `theorem` | [prod_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod-def--e56c8bc1f34ba66a999e7129.md) | 73 | `result-track:e56c8bc1f34ba66a999e7129874c4abb7322e3dd54581ad6697455e198f8f5b6` |
| 9 | `lemma` | [prod_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod-apply--abc36d8131aa3892bf340ce7.md) | 75 | `result-track:abc36d8131aa3892bf340ce72ba8ff17b295131cbe7e74e86c04946736e67fa4` |
| 10 | `theorem` | [prod_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod-inj--aae68cc93ac64691d6482d2f.md) | 78 | `result-track:aae68cc93ac64691d6482d2f25b3bdf67cf22a9cd5efec19457ddc8c29ce99dd` |
| 11 | `theorem` | [prod_ext_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod-ext-iff--b9bdfd604a10dab96e3563ef.md) | 87 | `result-track:b9bdfd604a10dab96e3563effdf44dd26f2bfd9eccf990aa98ed1ac049233a22` |
| 12 | `lemma` | [prod_fst_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod-fst-snd--00c9ac34fe114461276a40b1.md) | 91 | `result-track:00c9ac34fe114461276a40b1a6afd8595fb5f575ea201eaf32e3fc42ea34662f` |
| 13 | `lemma` | [prod_snd_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod-snd-fst--c832dc2e2a27315eac95038e.md) | 92 | `result-track:c832dc2e2a27315eac95038ec70942db95fa7135cdd734d609e2695c0eb292b5` |
| 14 | `theorem` | [fst_comp_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/fst-comp-prod--4ea1bb781a08cda8d78d0e81.md) | 94 | `result-track:4ea1bb781a08cda8d78d0e81d53279f9e50de04c04915ea9f34511ee715b4ef5` |
| 15 | `theorem` | [snd_comp_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/snd-comp-prod--d3ab16b5269dab66ff92cbbd.md) | 95 | `result-track:d3ab16b5269dab66ff92cbbd5717762df1ead1d85eaff4ed9cd11e75df9df7b8` |
| 16 | `theorem` | [prod_fst_comp_snd_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod-fst-comp-snd-comp--d91e173d38a3996785804cc2.md) | 97 | `result-track:d91e173d38a3996785804cc2b82a4dd84cc6bdbdfdba3ba89678756b48830d1a` |
| 17 | `theorem` | [const_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/const-prod--01403e184d406f6d2c7b3a84.md) | 100 | `result-track:01403e184d406f6d2c7b3a840ad2defca10c10ba0dfb639be0a5f52ce31e2b2d` |
| 18 | `theorem` | [prod_const_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod-const-const--87c68f0610c43662d95ce07e.md) | 102 | `result-track:87c68f0610c43662d95ce07ea6a7baaf843443b81a2a4592ff11bb00975835a7` |
| 19 | `theorem` | [prod_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod-comp--7665199df5e6883653ec4025.md) | 105 | `result-track:7665199df5e6883653ec40257027997d3f217ba03a3da731cc521c19ecb55bec` |
| 20 | `theorem` | [prod_comp_fst_comp_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod-comp-fst-comp-snd--6d91511542b757e6b03cba32.md) | 107 | `result-track:6d91511542b757e6b03cba32cddc53e487637c024ee95cd069f547cbecef1201` |
| 21 | `theorem` | [map_comp_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/map-comp-prod--e3e3391b41249813f14d10a5.md) | 110 | `result-track:e3e3391b41249813f14d10a546522a6e0b977c94f8a9033f375586a796b65e6f` |
| 22 | `theorem` | [prod_comp_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod-comp-prod--8c81bf56bde409df03027d89.md) | 113 | `result-track:8c81bf56bde409df03027d895b56406ce920fd012aa08380e16b8d518de587c2` |
| 23 | `theorem` | [swap_comp_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/swap-comp-prod--62b349524d80dfe62ede5718.md) | 117 | `result-track:62b349524d80dfe62ede57180f4e5a3f752d61d7f5563bc01ca8480dd01585f5` |
| 24 | `def` | [diag](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/diag--1eb4b15c783ff38e950880a4.md) | 124 | `declaration-track:1eb4b15c783ff38e950880a460d4b0364a46161121ea81b55e635288d72c701b` |
| 25 | `theorem` | [diag_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/diag-def--570028a6d773b9fce6397d21.md) | 130 | `result-track:570028a6d773b9fce6397d218206a6482fc9321fc217b00b9b8f9d5273f87342` |
| 26 | `theorem` | [diag_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/diag-apply--9ea7880b809541b8a4611570.md) | 132 | `result-track:9ea7880b809541b8a46115705bffb4370f0ffa54abb17b9eb6023956bc74398d` |
| 27 | `theorem` | [diag_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/diag-injective--32583e93222ef4a0fd2046a5.md) | 134 | `result-track:32583e93222ef4a0fd2046a5221d8dcf0a44d3826fcda10081ba463bed7231ca` |
| 28 | `theorem` | [prod_id_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/prod-id-id--7e95b935a90ff49f6b82ffa0.md) | 136 | `result-track:7e95b935a90ff49f6b82ffa0b7b9caf93d879940db1b8b42d84792c61374d315` |
| 29 | `theorem` | [fst_comp_diag](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/fst-comp-diag--d9126f0f38368a160741d8fc.md) | 137 | `result-track:d9126f0f38368a160741d8fc1db0e02ca537f00af9de214d276bfd0c0c4c8342` |
| 30 | `theorem` | [snd_comp_diag](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/snd-comp-diag--59397c083e66e4b5d976fefe.md) | 138 | `result-track:59397c083e66e4b5d976fefeaaba4b356babf5199853a53b03a02cc97275a184` |
| 31 | `theorem` | [diag_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/diag-comp--393b60a12d1840f36f1d4fd7.md) | 140 | `result-track:393b60a12d1840f36f1d4fd7935bf7a42bd8eca5672d75d729e5396d2165e0ce` |
| 32 | `theorem` | [map_comp_diag](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/map-comp-diag--f1db880160d6794abfa8af0c.md) | 142 | `result-track:f1db880160d6794abfa8af0cbf64ee7a67f95eecb95d6dd0721c0fa4e87444b7` |
| 33 | `theorem` | [swap_comp_diag](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/swap-comp-diag--24c6e2a7242447428f901468.md) | 144 | `result-track:24c6e2a7242447428f901468b9cee6e51e534aa0017d215225d05640c51ca9b2` |
| 34 | `abbrev` | [onFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/onfun--2c48207a541df4226664a060.md) | 153 | `declaration-track:2c48207a541df4226664a0602d320808cb64ddad185054cbb823afe824bc3a84` |
| 35 | `abbrev` | [swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/swap--b98264625dc33627a948e423.md) | 162 | `declaration-track:b98264625dc33627a948e42329af71ec3c57d7ab74a16682cc296d970c049c7d` |
| 36 | `theorem` | [swap_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/swap-def--60a0f07c6f2190673b9ea6fc.md) | 164 | `result-track:60a0f07c6f2190673b9ea6fc01bd2aec95de2208dec08f791e36a3eae11f85cb` |
| 37 | `theorem` | [onFun_swap_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/onfun-swap-comm--c715f4290b1ac21a6680c480.md) | 166 | `result-track:c715f4290b1ac21a6680c48089caa41e9303c54aae1ed2bd61894235cea90956` |
| 38 | `def` | [Bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/bijective--0badf737a5643831284e45e2.md) | 171 | `declaration-track:0badf737a5643831284e45e22e6c07ddadabe0de4e443943ad5f2af68ff80e73` |
| 39 | `theorem` | [Bijective.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/bijective-comp--2aca1ce7655bda1faa94a591.md) | 174 | `result-track:2aca1ce7655bda1faa94a59169a416c971be6ffa4dfd06a271fd33054bef7794` |
| 40 | `theorem` | [bijective_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/bijective-id--1fb3cd7a73dcf06fca3ca7e2.md) | 177 | `result-track:1fb3cd7a73dcf06fca3ca7e2906e67d48ec37da315bf39e52161a73e2769df00` |
| 41 | `theorem` | [Injective.beq_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/injective-beq-eq--f3113b9ba31fd81490fbbd21.md) | 182 | `result-track:f3113b9ba31fd81490fbbd215a342b09d7e58fa676452201ce95f91a6a88febd` |
| 42 | `def` | [bicompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/bicompl--2a5b78c55b2a83d8cf9783ca.md) | 194 | `declaration-track:2a5b78c55b2a83d8cf9783ca37edf6c81282cde6b6d2e7ca96e59c9c03369d93` |
| 43 | `def` | [bicompr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/bicompr--a43e981499907536ade14a44.md) | 198 | `declaration-track:a43e981499907536ade14a446012d97bba195247724e62ea2d5c10654d2854d1` |
| 44 | `theorem` | [uncurry_bicompr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/uncurry-bicompr--ddba75c65d54cfee1303ed2e.md) | 204 | `result-track:ddba75c65d54cfee1303ed2e81ba7fafa4603e7bcba3bd4776834ecf8d40d213` |
| 45 | `theorem` | [uncurry_bicompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/uncurry-bicompl--bab766ddc9758632b0f1fa1d.md) | 207 | `result-track:bab766ddc9758632b0f1fa1d74ece29c146f4aafc989d954324226cdf2855973` |
| 46 | `def` | [IsFixedPt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/isfixedpt--e060baed8079d096236643a1.md) | 222 | `declaration-track:e060baed8079d096236643a11568aa6b29215f92adc3c9f3d3727ef79ed5c5c2` |
| 47 | `theorem` | [IsFixedPt.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/isfixedpt-eq--f22130f0e943eef6bde569a0.md) | 225 | `result-track:f22130f0e943eef6bde569a0d81a463ebb419164f867a20927e459d399d3f08f` |
| 48 | `instance` | [IsFixedPt.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/isfixedpt-decidable--046822b0599bec0d22403fe5.md) | 228 | `declaration-track:046822b0599bec0d22403fe5dddb31f0e9c82f0a715b53bc36311ed04f6c31c3` |
| 49 | `theorem` | [IsFixedPt.of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/isfixedpt-of-subsingleton--4aa474ac304eb0db442a9676.md) | 232 | `result-track:4aa474ac304eb0db442a9676cd997644f4d9e9cfba4bbf756baf0f5ad78c1300` |
| 50 | `theorem` | [isFixedPt_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/isfixedpt-id--132f386133e92997331d6b07.md) | 236 | `result-track:132f386133e92997331d6b07c2fe01f7d8d0a20d04b792c478490c66a968dc3f` |
| 51 | `theorem` | [forall_isFixedPt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/forall-isfixedpt-iff--0fc07dd0dbaa168ca927cf9b.md) | 240 | `result-track:0fc07dd0dbaa168ca927cf9bff77b34418f5077486bb1eb8ede07886343e4c02` |
| 52 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/map--55636b4af4fd04812fb78ab3.md) | 253 | `declaration-track:55636b4af4fd04812fb78ab32c8f40f829a134fe0c040c0042737a82271676f4` |
| 53 | `lemma` | [map_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8280878e3fb88285deac4c322d395337568bec83dacb8e156522089c545f32a9.lean/declarations/map-apply--59b428e580b70ee0f1056b82.md) | 256 | `result-track:59b428e580b70ee0f1056b82e6b088e1fc7df0443c99622eb43914546cbbbd30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
