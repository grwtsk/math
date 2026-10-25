# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Curry.Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb0365e5890c24191ebebfda858def0ec240753f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb0365e5890c24191ebebfda858def0ec240753f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.OfArity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/uncurry--02d2594e59517a4676564092.md) | 46 | `declaration-track:02d2594e59517a46765640921f75b7c3929239f8278ef39beb8554965d11c618` |
| 2 | `def` | [curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/curry--c71e53c0fe4538ca6a751def.md) | 52 | `declaration-track:c71e53c0fe4538ca6a751def5775c252343f67062d197cf83bee94b5ccebd2d2` |
| 3 | `theorem` | [uncurry_apply_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/uncurry-apply-cons--fc015f2eedb6379961096d2c.md) | 58 | `result-track:fc015f2eedb6379961096d2cafd8094916d873e0435c4f6c09cb5f24d0c7d38d` |
| 4 | `theorem` | [uncurry_apply_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/uncurry-apply-succ--ee71245f30033bc8b7a8e74d.md) | 63 | `result-track:ee71245f30033bc8b7a8e74d7fe35b85198452f3f7f53edcef2a94f1a1afd28e` |
| 5 | `theorem` | [curry_apply_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/curry-apply-cons--a0eb95665ad1ed5aea7b1eb2.md) | 69 | `result-track:a0eb95665ad1ed5aea7b1eb26272a2896cbb7a6ecd631d236fbb9ca930006cf9` |
| 6 | `theorem` | [curry_apply_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/curry-apply-succ--7b16dc306ac4a4e02ddf329f.md) | 74 | `result-track:7b16dc306ac4a4e02ddf329fcd7b0dcc47dd312f4352dca87d7da5e2f11e3af7` |
| 7 | `theorem` | [curry_uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/curry-uncurry--c63c5d2ee2b0b2396a6ddc35.md) | 81 | `result-track:c63c5d2ee2b0b2396a6ddc356468077da215ffd59826964f1b631c12a9c5f451` |
| 8 | `theorem` | [uncurry_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/uncurry-curry--9b2efa8a610d76d28a7e676f.md) | 87 | `result-track:9b2efa8a610d76d28a7e676f865a03352ab60ebbd49b494e8d1e04fbb0f4e2a2` |
| 9 | `def` | [curryEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/curryequiv--153dc3f028bff904dd1c0022.md) | 96 | `declaration-track:153dc3f028bff904dd1c0022dc7afda681a5149cd8f955f301c7c21a8c9fc17e` |
| 10 | `lemma` | [curry_two_eq_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/curry-two-eq-curry--1be7d0722de7e8960f47a561.md) | 102 | `result-track:1be7d0722de7e8960f47a561eb25072126171c73905ebd358344b712f6244251` |
| 11 | `lemma` | [uncurry_two_eq_uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/uncurry-two-eq-uncurry--3aa9c3b3107ac084832ef361.md) | 106 | `result-track:3aa9c3b3107ac084832ef36119f35f92189ef7a8067395ca0dfc81382da8bcd1` |
| 12 | `def` | [uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/uncurry--57875cf5b118bfa7d8481278.md) | 119 | `declaration-track:57875cf5b118bfa7d84812782e3cab2d5b385bab2890c5916f2d45288783b3b3` |
| 13 | `def` | [curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/curry--6fa047241716ce6d4044c12d.md) | 122 | `declaration-track:6fa047241716ce6d4044c12d218b7084e4a4e18c85391d4a1d85cb5623e86d41` |
| 14 | `theorem` | [curry_uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/curry-uncurry--bad240080ef790d176082ba7.md) | 125 | `result-track:bad240080ef790d176082ba747af7ff17bd835159fe50804e62eab2d4043b272` |
| 15 | `theorem` | [uncurry_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/uncurry-curry--2664a8f071f2b1b1d394440f.md) | 129 | `result-track:2664a8f071f2b1b1d394440fd654db32376747df08f255c6e99d106118cff068` |
| 16 | `def` | [curryEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/curryequiv--46d23892a49f1502ea01737d.md) | 134 | `declaration-track:46d23892a49f1502ea01737dacdf517f5124b11bb748f08c5abd92512f5777d5` |
| 17 | `lemma` | [curry_two_eq_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/curry-two-eq-curry--aabae3d41f33c655f91bcbf6.md) | 137 | `result-track:aabae3d41f33c655f91bcbf630eb579f47d3fa7e0a11c17aa874003d9f1e2698` |
| 18 | `lemma` | [uncurry_two_eq_uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantf606c7f83f10f2577eecf42b2dbdd29e8910852ea4c74389a1aee28a19eeb71e.lean/declarations/uncurry-two-eq-uncurry--608ebb135b8b2e19ea85e711.md) | 141 | `result-track:608ebb135b8b2e19ea85e711c50154bb01d7f39732954fd6f1281d714ef3bc9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
