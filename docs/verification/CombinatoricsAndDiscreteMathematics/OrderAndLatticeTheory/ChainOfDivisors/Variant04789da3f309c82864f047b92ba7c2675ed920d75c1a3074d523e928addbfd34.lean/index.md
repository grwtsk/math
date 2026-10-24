# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ChainOfDivisors.Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53f7cb831b5646ae6829ef1e99a40b3dda66ed5f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53f7cb831b5646ae6829ef1e99a40b3dda66ed5f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.IsPrimePow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Bounded` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Associates.isAtom_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/associates-isatom-iff--a575728f7c37c2de72dca779.md) | 51 | `result-track:a575728f7c37c2de72dca7794d47e46283f10a97aef50947e79085daf13b3de8` |
| 2 | `theorem` | [exists_chain_of_prime_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/exists-chain-of-prime-pow--d9695f879cbf2d539ef7d7ad.md) | 74 | `result-track:d9695f879cbf2d539ef7d7adb3ac7fd1fa92548d2032b1738fde60fe605c5d47` |
| 3 | `theorem` | [element_of_chain_not_isUnit_of_index_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/element-of-chain-not-isunit-of-index-ne-zero--4d619747a89becd8882ca4ee.md) | 91 | `result-track:4d619747a89becd8882ca4ee554114f24ab8b407c994367d7955d5a2e76935fd` |
| 4 | `theorem` | [first_of_chain_isUnit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/first-of-chain-isunit--b73f8a4eb9dda102322cb08f.md) | 97 | `result-track:b73f8a4eb9dda102322cb08f334525dffb765a5f90b1cbd3944b6a7f64141c99` |
| 5 | `theorem` | [second_of_chain_is_irreducible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/second-of-chain-is-irreducible--1012067293fc00fedae43ae7.md) | 104 | `result-track:1012067293fc00fedae43ae708fdb6df0f024e26c175776731a8a1c2c43d6a56` |
| 6 | `theorem` | [eq_second_of_chain_of_prime_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/eq-second-of-chain-of-prime-dvd--36137aacddeaa52f78dfd0fa.md) | 115 | `result-track:36137aacddeaa52f78dfd0fa35ace0dc8c87e07c742eaafa9a609a76ac4d2e4c` |
| 7 | `theorem` | [card_subset_divisors_le_length_of_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/card-subset-divisors-le-length-of-chain--00b76fc71a5bf18f44c77543.md) | 138 | `result-track:00b76fc71a5bf18f44c77543e99f28870a10f86da74ba2c940351720fe0fb5f0` |
| 8 | `theorem` | [element_of_chain_eq_pow_second_of_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/element-of-chain-eq-pow-second-of-chain--07db647b22677866b132bb41.md) | 151 | `result-track:07db647b22677866b132bb415e6e68c42bf8a3a5f362cd0a4ee2e64c3057a157` |
| 9 | `theorem` | [eq_pow_second_of_chain_of_has_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/eq-pow-second-of-chain-of-has-chain--4361ff79a8595b80d938cd88.md) | 187 | `result-track:4361ff79a8595b80d938cd887be687bc76f15293fd3ec5e4124c17a05bb45d03` |
| 10 | `theorem` | [isPrimePow_of_has_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/isprimepow-of-has-chain--0ed3eb10026bc4c01c0110f5.md) | 213 | `result-track:0ed3eb10026bc4c01c0110f50c842f7c22a46a67d900e0ae764da26a43a78ef2` |
| 11 | `theorem` | [factor_orderIso_map_one_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/factor-orderiso-map-one-eq-bot--ae31912adce89f47487a55fa.md) | 223 | `result-track:ae31912adce89f47487a55fa225540c9f1edff6f7c5e4c2c9d422c460cb76b54` |
| 12 | `theorem` | [coe_factor_orderIso_map_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/coe-factor-orderiso-map-eq-one-iff--79d22d65e68607fd7b981812.md) | 232 | `result-track:79d22d65e68607fd7b981812c3e0a9c221e2934cf2351c8c8e3e298c0ef45576` |
| 13 | `theorem` | [pow_image_of_prime_by_factor_orderIso_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/pow-image-of-prime-by-factor-orderiso-dvd--650a316b0a7b5c8273e13f78.md) | 249 | `result-track:650a316b0a7b5c8273e13f788ed3de74d571fd7e4f0c87189bef02c4ccccf5ab` |
| 14 | `theorem` | [map_prime_of_factor_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/map-prime-of-factor-orderiso--826cb9a693f07f4f680fed5b.md) | 280 | `result-track:826cb9a693f07f4f680fed5bd75a696a81d5b63f36e1aa612cab9ebab2c65ac0` |
| 15 | `theorem` | [mem_normalizedFactors_factor_orderIso_of_mem_normalizedFactors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/mem-normalizedfactors-factor-orderiso-of-mem-normalizedfactors--6f4f1e4c248d89bd3688fd45.md) | 307 | `result-track:6f4f1e4c248d89bd3688fd45b6fa4f7673e715a8b7a49482ab99e4cf4ec68d6e` |
| 16 | `theorem` | [emultiplicity_prime_le_emultiplicity_image_by_factor_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/emultiplicity-prime-le-emultiplicity-image-by-factor-orderiso--0980b742e8fe7baee8123f36.md) | 316 | `result-track:0980b742e8fe7baee8123f36095593a89738c78d10b80bec019ba62579f7f378` |
| 17 | `theorem` | [emultiplicity_prime_eq_emultiplicity_image_by_factor_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/emultiplicity-prime-eq-emultiplicity-image-by-factor-orderiso--d524bad90348cb06a2e1d343.md) | 327 | `result-track:d524bad90348cb06a2e1d343ee3ba5507194632dc7547d8f7ea5fe4e126abe7c` |
| 18 | `def` | [mkFactorOrderIsoOfFactorDvdEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/mkfactororderisooffactordvdequiv--b2cbc9b90f00403552916075.md) | 347 | `declaration-track:b2cbc9b90f004035529160759d9f788a18f21f1370191b628bbc7e91c33477a6` |
| 19 | `theorem` | [mem_normalizedFactors_factor_dvd_iso_of_mem_normalizedFactors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/mem-normalizedfactors-factor-dvd-iso-of-mem-normalizedfactors--99a275397389f37be2c34c3d.md) | 379 | `result-track:99a275397389f37be2c34c3d2883ea9e537764c7663add038ca2c4035de3d414` |
| 20 | `theorem` | [emultiplicity_factor_dvd_iso_eq_emultiplicity_of_mem_normalizedFactors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/declarations/emultiplicity-factor-dvd-iso-eq-emultiplicity-of-mem-normalizedfactors--f9a4bd1c523bd0e87e104733.md) | 411 | `result-track:f9a4bd1c523bd0e87e104733980361f603a186ae44d1beeaed077ec4ccd1db98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
