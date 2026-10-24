# Verification target: GRWTSK.Algebra.Algebra.Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26f0202482ec90c8d01b179b9bf0306e18791bcf",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26f0202482ec90c8d01b179b9bf0306e18791bcf`.

Source path: `GRWTSK/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeAlgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CharP.dvd_of_ringHom](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charp-dvd-of-ringhom--b47d295f8ef5a4f0597f8c1b.md) | 32 | `result-track:b47d295f8ef5a4f0597f8c1ba7de4456adb479c7c66f94f0e7acdc8e0c2f899d` |
| 2 | `theorem` | [CharP.of_ringHom_of_ne_zero](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charp-of-ringhom-of-ne-zero--0f7218135729470b355505e6.md) | 38 | `result-track:0f7218135729470b355505e6d0e4c56baa381e6f2a4e933d79edcac49f138d25` |
| 3 | `theorem` | [charP_of_injective_ringHom](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charp-of-injective-ringhom--3543dbfbc4d2d31a71845044.md) | 50 | `result-track:3543dbfbc4d2d31a718450448db5c4e603c40bde46b04ee6045c7ad44cf33f6d` |
| 4 | `theorem` | [charP_of_injective_algebraMap](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charp-of-injective-algebramap--fbbaa38ab5a0812052b560af.md) | 56 | `result-track:fbbaa38ab5a0812052b560afd6b1790b26de7969f4e96140a11d29a52f482d31` |
| 5 | `theorem` | [charP_of_injective_algebraMap'](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charp-of-injective-algebramap--bc2006306e5a5b5f5402d535.md) | 60 | `result-track:bc2006306e5a5b5f5402d5350cf6521448b0f0b8ceee5614fcbe5e9ff84338d6` |
| 6 | `theorem` | [charZero_of_injective_ringHom](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charzero-of-injective-ringhom--c36b5395fe03b527470f169a.md) | 66 | `result-track:c36b5395fe03b527470f169a5e283019ec676e12eb268038fe83d04fbdf9f766` |
| 7 | `theorem` | [charZero_of_injective_algebraMap](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charzero-of-injective-algebramap--2bf1226c5a197bd3472e0306.md) | 71 | `result-track:2bf1226c5a197bd3472e030632d6b3362f0655cfd40ff7a5a06d3f52b625c446` |
| 8 | `theorem` | [RingHom.charP](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/ringhom-charp--15a2d28c9e7c2bbc3f016e42.md) | 77 | `result-track:15a2d28c9e7c2bbc3f016e42e580c7776c439b7220cb59a08686f9a93a8b5cc6` |
| 9 | `theorem` | [RingHom.charP_iff](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/ringhom-charp-iff--53e6223225b854d656d0b91e.md) | 84 | `result-track:53e6223225b854d656d0b91e49fb04bf6216a83f60c9ef5f711d844df72688c1` |
| 10 | `lemma` | [expChar_of_injective_ringHom](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/expchar-of-injective-ringhom--ad86c6f7f02259788e72c955.md) | 90 | `result-track:ad86c6f7f02259788e72c955659ecf8a95719820cc06410fe197e952e4391fc0` |
| 11 | `lemma` | [RingHom.expChar](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/ringhom-expchar--9b46193612ce2b1ec9af13d9.md) | 99 | `result-track:9b46193612ce2b1ec9af13d90866bfe42875e8757b899edd1f15194aaf98a73b` |
| 12 | `lemma` | [RingHom.expChar_iff](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/ringhom-expchar-iff--27a084365de70c4b052c4322.md) | 107 | `result-track:27a084365de70c4b052c4322f7409fe99e458ab8f7077b51ad998484fefb9fe7` |
| 13 | `lemma` | [expChar_of_injective_algebraMap](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/expchar-of-injective-algebramap--1fd3461659c382cd1bf14142.md) | 113 | `result-track:1fd3461659c382cd1bf1414263a5be81fb51e85dbb1586e31521fbe2428a12d4` |
| 14 | `theorem` | [algebraRat.charP_zero](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/algebrarat-charp-zero--965102f0fb0272428d4c939a.md) | 134 | `result-track:965102f0fb0272428d4c939a2c3bf18c961b8bbe9ed1689a68e99bb9205a5ee3` |
| 15 | `theorem` | [algebraRat.charZero](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/algebrarat-charzero--2b193fb2501c122100a2ee91.md) | 143 | `result-track:2b193fb2501c122100a2ee912c9d1daab1d770e4c099f73b21ece1881ef7e448` |
| 16 | `lemma` | [RingHom.charP_iff_charP](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/ringhom-charp-iff-charp--5e84d559e9ff2db8d6e06340.md) | 152 | `result-track:5e84d559e9ff2db8d6e0634076656cf74371e78798463ae154f26a81fa07fe32` |
| 17 | `theorem` | [Algebra.charP_iff](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/algebra-charp-iff--d731eb72c5441f70cc6016da.md) | 160 | `result-track:d731eb72c5441f70cc6016da46791e41c92d6029b1344a2f0a31f238dcba87a4` |
| 18 | `theorem` | [Algebra.ringChar_eq](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/algebra-ringchar-eq--5f35b7f1b48aa0bef570ccb8.md) | 163 | `result-track:5f35b7f1b48aa0bef570ccb8459fde9a04b6682a798b12018f73375bef84dd29` |
| 19 | `instance` | [charP](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charp--7034f611a7a744a3eacfc01a.md) | 174 | `declaration-track:7034f611a7a744a3eacfc01a76fd26e63ff5a3936dc9d2a5c7f44eac6e0e3950` |
| 20 | `instance` | [charZero](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charzero--3233ad1e2b8f0b7b5c553550.md) | 178 | `declaration-track:3233ad1e2b8f0b7b5c5535508304f566a79b4cc92ab5c62cbdcd0204a51e8672` |
| 21 | `theorem` | [charP_of_isFractionRing](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charp-of-isfractionring--07536df6cab4198ac7ceacbe.md) | 189 | `result-track:07536df6cab4198ac7ceacbecac59fe354e448de8485f9a25edbbf9c0d6a73fe` |
| 22 | `theorem` | [charZero_of_isFractionRing](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charzero-of-isfractionring--97e35c271d349c67f219a15f.md) | 193 | `result-track:97e35c271d349c67f219a15f3af7864e2eaac6b034717b9da388fefa15dd3fed` |
| 23 | `instance` | [charP](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charp--98a044c93e3ecb30b424fc27.md) | 199 | `declaration-track:98a044c93e3ecb30b424fc272c7ebaf9e872fac2cef8f7c787cef2c0155c795d` |
| 24 | `instance` | [charZero](../../../../mathematics/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/declarations/charzero--284ce06506320b67291b53f1.md) | 203 | `declaration-track:284ce06506320b67291b53f10b42b31594ea724b2998079be21da035bc5a7301` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
