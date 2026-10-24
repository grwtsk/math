# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78349ce7cab888c9274db39197ce7a8c1798e0cb",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78349ce7cab888c9274db39197ce7a8c1798e0cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Prod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/instle--c0f52b5c30bb8f3b154472d2.md) | 52 | `declaration-track:c0f52b5c30bb8f3b154472d25d8660897fdb074e0f571ef27d37701a46860b4a` |
| 2 | `instance` | [instLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/instlt--b598852dc46ab64cf86232a1.md) | 54 | `declaration-track:b598852dc46ab64cf86232a15b0359ba55fb4f9b419ba20c03be50d3793bcfc9` |
| 3 | `theorem` | [toLex_le_toLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/tolex-le-tolex--b57f698d717f3659c36e8f4b.md) | 56 | `result-track:b57f698d717f3659c36e8f4bd791b72da55792d26f967714bd7015a3a45128df` |
| 4 | `theorem` | [toLex_lt_toLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/tolex-lt-tolex--5660e3eff9162257b984f0e9.md) | 60 | `result-track:5660e3eff9162257b984f0e9fdb4a03e148859f23fce1b8c987057ae41af30b1` |
| 5 | `lemma` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/le-iff--492a7525037cd1f356162b9b.md) | 64 | `result-track:492a7525037cd1f356162b9b3643bbd9cebf0a4fafaef0f290ba27965ed94261` |
| 6 | `lemma` | [lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/lt-iff--f2de3f9c112e4eb03dd2168e.md) | 68 | `result-track:f2de3f9c112e4eb03dd2168e12c77019fbbc3fc9f8cc59fad73b499106bfcb55` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/instance--08c324004373ecce733711fa.md) | 72 | `declaration-track:08c324004373ecce733711facb63bf4b298ad2fde38e2c0baebe973994a68530` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/instance--49058c1aa10e9668370b55dd.md) | 75 | `declaration-track:49058c1aa10e9668370b55dd7cf00309d2f49cf35228e806bc1377d83e8d3fbb` |
| 9 | `instance` | [instPreorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/instpreorder--da41b9fee3a9e4aa6124e693.md) | 79 | `declaration-track:da41b9fee3a9e4aa6124e693b50e7928b7c5905a3ec5843c90c47866a98bda95` |
| 10 | `theorem` | [monotone_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/monotone-fst--ec83037af0d7e29098dbf3be.md) | 85 | `result-track:ec83037af0d7e29098dbf3be7a2031cc6e84736efc054199c22823fb38fb0773` |
| 11 | `theorem` | [monotone_fst_ofLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/monotone-fst-oflex--a20ff74aa5dad63802b4f7ca.md) | 95 | `result-track:a20ff74aa5dad63802b4f7caa0a8bcc9b8cfa53e29fd77e460bbba43ce0237d7` |
| 12 | `theorem` | [toLex_covBy_toLex_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/tolex-covby-tolex-iff--cce145b48d8d457931f29679.md) | 97 | `result-track:cce145b48d8d457931f296793ae1dfcb06b4809fc333fad1ae194fc98186324a` |
| 13 | `theorem` | [covBy_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/covby-iff--5efa46436ff816e2b3293910.md) | 116 | `result-track:5efa46436ff816e2b32939109b978a86abf2c4ba2485c729f2a2511f158294bb` |
| 14 | `lemma` | [toLex_le_toLex'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/tolex-le-tolex--137c6e0dde67f408e746704a.md) | 128 | `result-track:137c6e0dde67f408e746704afe2497d09a37722ae64dd49f5f1cd417a73fc8bf` |
| 15 | `lemma` | [toLex_lt_toLex'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/tolex-lt-tolex--3c12aa57a562f7d2897a5bee.md) | 133 | `result-track:3c12aa57a562f7d2897a5beee287676e2101440220e5f49163988a987a662dc3` |
| 16 | `lemma` | [le_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/le-iff--60a30c9bbadeec9386de5489.md) | 139 | `result-track:60a30c9bbadeec9386de5489cfe668832e7a0ddfc3c51d423b341fb5a6cac997` |
| 17 | `lemma` | [lt_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/lt-iff--cf1d3d97c9d50ced0d13bed4.md) | 144 | `result-track:cf1d3d97c9d50ced0d13bed466bf1938fba36081386b11fa1b00b9c6b5bda163` |
| 18 | `theorem` | [toLex_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/tolex-mono--9861edb721ca0acdb9206de6.md) | 148 | `result-track:9861edb721ca0acdb9206de69c158d61d6e1e77aa8c7756af60ed4fcde652a67` |
| 19 | `theorem` | [toLex_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/tolex-strictmono--1d943c0325833321bad13bcd.md) | 151 | `result-track:1d943c0325833321bad13bcd49027315db4d1c1706965433b58bac02ea9a8ab9` |
| 20 | `instance` | [instPartialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/instpartialorder--bc4ff9aaa15380570bcff19d.md) | 160 | `declaration-track:bc4ff9aaa15380570bcff19d18d2436daba2a2d141dbaa8cb50a108447b3a0c3` |
| 21 | `instance` | [instOrdLexProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/instordlexprod--97bce226ff098a0f9427e20a.md) | 164 | `declaration-track:97bce226ff098a0f9427e20a536bf503bc0b4e13b0492414e0e2ac4858b06204` |
| 22 | `theorem` | [compare_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/compare-def--53417927495eaec83f5e5776.md) | 166 | `result-track:53417927495eaec83f5e57767ec9c490c434ecebd2e6589d5fa32ccb3e596c2c` |
| 23 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ToLexLeToLex.Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lexOrd_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-to--0416f96fe3c862ccdb8c9073.md) | 169 | `result-track:0416f96fe3c862ccdb8c907377fa9b7b29e338a503d46d416b24423309f44269` |
| 24 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ToLexLeToLex.Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.Ord.lex_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-to--01be2c085d7b8f1c70ab2945.md) | 171 | `result-track:01be2c085d7b8f1c70ab294550e7e5fe6d717abe6873e25a423c1d1e464f0236` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/instance--bbf2793d4e74690cfaeacf6a.md) | 173 | `declaration-track:bbf2793d4e74690cfaeacf6ad5ddff5b892fc0600f89d1f34f51879036c03238` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/instance--46781d5151e0af1db724a729.md) | 176 | `declaration-track:46781d5151e0af1db724a7293549ed6dd309d409805b52daef07ed625cc08a6c` |
| 27 | `instance` | [instLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/instlinearorder--fdc6a8f45972fd56cfd9b2de.md) | 180 | `declaration-track:fdc6a8f45972fd56cfd9b2de33bee701501d29887399f0a487eb9f0181106b2e` |
| 28 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/orderbot--8efc09b2c1d72be38865880a.md) | 195 | `declaration-track:8efc09b2c1d72be38865880a7e98d779bfd3ce9487a18cb73a6ff8867d83d5a3` |
| 29 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/ordertop--e1771ca822eaadbd9e3842fd.md) | 199 | `declaration-track:e1771ca822eaadbd9e3842fddb840d0cadb8737fdea4ed73035d4ebd11a6d2c4` |
| 30 | `instance` | [boundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/boundedorder--f023cb49a0e8f4142681ee44.md) | 203 | `declaration-track:f023cb49a0e8f4142681ee44259fcc659bda981677582e759db823d4c33b6abf` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/instance--66d9bfae91985d2cd9c7031c.md) | 207 | `declaration-track:66d9bfae91985d2cd9c7031c7da5f14e8d45b67e57979af4872ea50f2a954655` |
| 32 | `instance` | [noMaxOrder_of_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/nomaxorder-of-left--90a09d2f11340b7597c62f18.md) | 216 | `declaration-track:90a09d2f11340b7597c62f18272947bcac6dd741ac229d7fbe5244763412faff` |
| 33 | `instance` | [noMinOrder_of_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/nominorder-of-left--c93dcd7bfe2d8f406aa07e93.md) | 222 | `declaration-track:c93dcd7bfe2d8f406aa07e93c136ca980808fd51bdb7419a2a065c2ea3620049` |
| 34 | `instance` | [noMaxOrder_of_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/nomaxorder-of-right--d9131469dd84113653e20357.md) | 228 | `declaration-track:d9131469dd84113653e203579bce6cbd06ac8a86576a374959569e3c48223984` |
| 35 | `instance` | [noMinOrder_of_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variante322a15cd70f7d3a17342bb1021eeb6401ea88eb8af262a3127215e77456ec64.lean/declarations/nominorder-of-right--3ea844240d9ed02718f90e90.md) | 234 | `declaration-track:3ea844240d9ed02718f90e903b009747955f3dc1d545184b3755a638eeda7402` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
