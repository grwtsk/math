# Verification target: GRWTSK.Algebra.Defs.Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c6956cfa4c986a6f1889c0236c0cb367d31c95d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c6956cfa4c986a6f1889c0236c0cb367d31c95d`.

Source path: `GRWTSK/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Unbundled.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharZero.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.NatCast` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.MinMax` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsOrderedRing](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/isorderedring--8b3413693f01f753b0c578a1.md) | 124 | `declaration-track:8b3413693f01f753b0c578a10336aa55ad1b73657aa6f6c7139470020b5cdb2b` |
| 2 | `class` | [IsStrictOrderedRing](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/isstrictorderedring--97bc66a3678cc4b05b12ec51.md) | 137 | `declaration-track:97bc66a3678cc4b05b12ec51ae5b219a3594bf3f9f92fe1930751e493dd15ce2` |
| 3 | `lemma` | [IsOrderedRing.of_mul_nonneg](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/isorderedring-of-mul-nonneg--ad9ae0bf019071be81bb197d.md) | 149 | `result-track:ad9ae0bf019071be81bb197da4507d86fb79bbf074cc977b0afb22898cad61be` |
| 4 | `lemma` | [IsStrictOrderedRing.of_mul_pos](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/isstrictorderedring-of-mul-pos--e04a32b51151292a2d586ba8.md) | 157 | `result-track:e04a32b51151292a2d586ba88a01a67515ddb928a4be945718b0f325592c521c` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/instance--974355ceb4b4b6d2cea4b4d4.md) | 169 | `declaration-track:974355ceb4b4b6d2cea4b4d4328b7bcfb411bdf493c08185d7830613e53924e3` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/instance--a8b7f66842d60ccc8f7da763.md) | 173 | `declaration-track:a8b7f66842d60ccc8f7da763c68f1869ad2ac05bdf393cac585f26af4b7e1050` |
| 7 | `lemma` | [IsOrderedRing.toIsStrictOrderedRing](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/isorderedring-toisstrictorderedring--95e3e6d24ed2d41026db47bf.md) | 179 | `result-track:95e3e6d24ed2d41026db47bff73dbd526f7cd2761f19016b9e8381a6205e45d7` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/instance--bf569aaaae5f99f12a06d23b.md) | 188 | `declaration-track:bf569aaaae5f99f12a06d23b9e10e2156a2153ea72ac3946e4fa914b7d01b40b` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/instance--962e1d50d9fdff0b01f6060b.md) | 192 | `declaration-track:962e1d50d9fdff0b01f6060b43edaff3e1474c8e7fc3d897f63af38ce4f3bcb5` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/instance--5011e9834c30146115692666.md) | 196 | `declaration-track:5011e9834c3014611569266648300cd8789b0f9a14d9463461aa79a206b64392` |
| 11 | `theorem` | [AddMonoidWithOne.toCharZero](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/addmonoidwithone-tocharzero--d574788d28fde3c9b7286176.md) | 202 | `result-track:d574788d28fde3c9b7286176e1aa314470666e5dab2a7dfae3a827dfa58a4521` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/instance--22f3b630ea5faf8dedd54a02.md) | 209 | `declaration-track:22f3b630ea5faf8dedd54a020db5c9b850f0d7e48d43e361169fb96e3fc135d8` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/instance--c74cf25f7909b92572c52988.md) | 213 | `declaration-track:c74cf25f7909b92572c52988198744ccff61d73e15032bf746954855baf40de8` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/instance--a2eb16d277d9b2a6e1fa3df5.md) | 223 | `declaration-track:a2eb16d277d9b2a6e1fa3df5eb1bdd4cfdd864d5c9c3048b6f180c90ce2c1d17` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/instance--becd097a49454e75a539c575.md) | 232 | `declaration-track:becd097a49454e75a539c575e8c83513e5453a1c3c90720101afc1e243860cd7` |
| 16 | `structure` | [OrderedSemiring](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/orderedsemiring--067e5bb037669c88e296cf6e.md) | 250 | `declaration-track:067e5bb037669c88e296cf6e5268011155892ac83d44e46069f9066594bd8f89` |
| 17 | `structure` | [OrderedCommSemiring](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/orderedcommsemiring--81d086564eeec375d26adaee.md) | 265 | `declaration-track:81d086564eeec375d26adaee51ef66cce249f3ac8c653aac4b756befd2e2f5ff` |
| 18 | `structure` | [OrderedRing](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/orderedring--5eb364d386f78198ac7b319f.md) | 275 | `declaration-track:5eb364d386f78198ac7b319f0275df37ccc9bbe4add7966e6f9c7830a8ad3d07` |
| 19 | `structure` | [OrderedCommRing](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/orderedcommring--36036b76b802375d88ce4b24.md) | 286 | `declaration-track:36036b76b802375d88ce4b248fc48c15f241140d1c70d2f3e519d7fb17254375` |
| 20 | `structure` | [StrictOrderedSemiring](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/strictorderedsemiring--95662bf777fa2320c88e23b9.md) | 293 | `declaration-track:95662bf777fa2320c88e23b9d4f2dd7121c5d7077957bea3370faeb68448a899` |
| 21 | `structure` | [StrictOrderedCommSemiring](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/strictorderedcommsemiring--bb4cf4b42a7de5eeb3dc68df.md) | 307 | `declaration-track:bb4cf4b42a7de5eeb3dc68dfd522b0ec5fafb292eff0dd900ed68adbc3b7cfd9` |
| 22 | `structure` | [StrictOrderedRing](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/strictorderedring--4fb229979e302fd3be7ae414.md) | 314 | `declaration-track:4fb229979e302fd3be7ae4140f5763df510ad5b48f8d5cb8598fd34e91b50954` |
| 23 | `structure` | [StrictOrderedCommRing](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/strictorderedcommring--9d89258a2929c78dafa94e07.md) | 325 | `declaration-track:9d89258a2929c78dafa94e070e2f5fac707af729bbcfdccb2e84c6a906ab7374` |
| 24 | `structure` | [LinearOrderedSemiring](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/linearorderedsemiring--1da34c841bf2ccff4ad2afa9.md) | 335 | `declaration-track:1da34c841bf2ccff4ad2afa930fbfb849a94f86f4b822eec624519f172395956` |
| 25 | `structure` | [LinearOrderedCommSemiring](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/linearorderedcommsemiring--2ae846b1bf7b95ad519488b3.md) | 343 | `declaration-track:2ae846b1bf7b95ad519488b370ce672b96131aa45fd42051acbc1edc7d1b3f6e` |
| 26 | `structure` | [LinearOrderedRing](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/linearorderedring--bfe4d4adaa78be905945a674.md) | 351 | `declaration-track:bfe4d4adaa78be905945a6740a5b378d066d562010a92a77a418c03e83306361` |
| 27 | `structure` | [LinearOrderedCommRing](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/linearorderedcommring--1b539298c6312e6a1d9a6887.md) | 358 | `declaration-track:1b539298c6312e6a1d9a688799ba7018275af9d8fcc3f5cc8726527b9f919d3f` |
| 28 | `lemma` | [one_add_le_one_sub_mul_one_add](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/one-add-le-one-sub-mul-one-add--13737c838cf3240c9bc9e7d6.md) | 378 | `result-track:13737c838cf3240c9bc9e7d6301b6f80bc83d62e84dc73a7cc560f2555955004` |
| 29 | `lemma` | [one_add_le_one_add_mul_one_sub](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/one-add-le-one-add-mul-one-sub--8df44bb1f63f7a79093961f3.md) | 382 | `result-track:8df44bb1f63f7a79093961f348324e7a6d6b6332d1ad96518f1d598360ed10c1` |
| 30 | `lemma` | [one_sub_le_one_sub_mul_one_add](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/one-sub-le-one-sub-mul-one-add--2d702355e079e4e9bce70aa9.md) | 386 | `result-track:2d702355e079e4e9bce70aa9c92761d20a93e30f2d8d625eb07bb9cbb2afe3b3` |
| 31 | `lemma` | [one_sub_le_one_add_mul_one_sub](../../../../mathematics/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/declarations/one-sub-le-one-add-mul-one-sub--af68640e1cbeec17223c0e38.md) | 390 | `result-track:af68640e1cbeec17223c0e381cde01e2bb0fdb2e4706c617bafa1ea6a33a3694` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
