# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddOrdCat.Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e545a5e2e0d3f7740f2ae4ac1d192cbf43caaf6a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e545a5e2e0d3f7740f2ae4ac1d192cbf43caaf6a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Bipointed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.PartOrdCat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Bounded` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BddOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/bddordcat--f1e74d04bda89deaca7bbf7c.md) | 33 | `declaration-track:f1e74d04bda89deaca7bbf7caae396c8777d98df177de587b28f84cdea0d36cc` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/instance--baf11efca1fdcc7392c5812e.md) | 41 | `declaration-track:baf11efca1fdcc7392c5812edea6c6c21489314f613d49b50b471861c25f68d5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/instance--e9010e7f0fc8ab8c470d7b19.md) | 44 | `declaration-track:e9010e7f0fc8ab8c470d7b19e74564e56b9b2fd40f8de683984dd7603a022ada` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/of--b5eaeb39155ea92b106c3898.md) | 50 | `declaration-track:b5eaeb39155ea92b106c38987fa38751fb9ce43a27c2fae8104c494a4587eebb` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/coe-of--beb164ae0ef930580c40b2f6.md) | 56 | `result-track:beb164ae0ef930580c40b2f67a8da82ca56ffb1fde2ab4029abbb420375d1fbb` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/instance--8f7ade8269f471ebafae3cf2.md) | 60 | `declaration-track:8f7ade8269f471ebafae3cf2b49a009af9915deb207225ead58fe54b0d730c72` |
| 7 | `instance` | [largeCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/largecategory--d6085fcfb3ec566601fbd3e6.md) | 63 | `declaration-track:d6085fcfb3ec566601fbd3e65aa5856ea746bae08fd53bf307bbecfad81eb7ae` |
| 8 | `instance` | [instFunLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/instfunlike--61e0b3c3e249071bfdf168fd.md) | 74 | `declaration-track:61e0b3c3e249071bfdf168fd1fedeb7f4316549a416c838e49f9f8cd7e6ce056` |
| 9 | `instance` | [concreteCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/concretecategory--dc87c98d01c533a8fb32f99a.md) | 77 | `declaration-track:dc87c98d01c533a8fb32f99af1c2790d62a4d8637cb528158d02263f875e1166` |
| 10 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/hasforgettopartord--351f5d69c322d6e5a4e00553.md) | 84 | `declaration-track:351f5d69c322d6e5a4e00553986e8bfb676145c9a94da3fae09e058b0731ae19` |
| 11 | `instance` | [hasForgetToBipointed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/hasforgettobipointed--71d3081f44d40a4f11004eee.md) | 90 | `declaration-track:71d3081f44d40a4f11004eee477e5045c8692c5f70e848f819e788ea6a12df33` |
| 12 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/dual--b8944b6a85a8457eb1aa6ae3.md) | 99 | `declaration-track:b8944b6a85a8457eb1aa6ae3002cd08e1b250984cdf3788a953179da71dbd6ac` |
| 13 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/iso-mk--915f440eab4b390f4a07675e.md) | 106 | `declaration-track:915f440eab4b390f4a07675e3a616e4a5c5b7586ace821d6877723a3027c0d48` |
| 14 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/dualequiv--d598c876203abf0af5f35d1e.md) | 115 | `declaration-track:d598c876203abf0af5f35d1e02e2785bff3a3f55d4e24f518ec59799729894a7` |
| 15 | `theorem` | [bddOrd_dual_comp_forget_to_partOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/bddord-dual-comp-forget-to-partordcat--4f6b045307af2d24a6b62e84.md) | 124 | `result-track:4f6b045307af2d24a6b62e8423310776eacaa4a07df568c7c3c936c6520803c5` |
| 16 | `theorem` | [bddOrd_dual_comp_forget_to_bipointed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant0d7cef4d266fefaf6ae46e72db2a1dcf045653fd988e15cf2c76efa06e9e8de5.lean/declarations/bddord-dual-comp-forget-to-bipointed--53e5a1abcc63f63fbd2bc1f8.md) | 130 | `result-track:53e5a1abcc63f63fbd2bc1f88c54eda899d0f05b9146a65193ad91481ee6f791` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
