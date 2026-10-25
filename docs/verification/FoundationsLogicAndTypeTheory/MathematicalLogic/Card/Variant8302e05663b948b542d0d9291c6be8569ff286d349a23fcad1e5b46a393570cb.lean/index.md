# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Card.Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aa9839840a575b536472db201b639002b1915bc",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aa9839840a575b536472db201b639002b1915bc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Finite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Finite.equivFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/finite-equivfin--da81f42954b16a7b2939063a.md) | 35 | `declaration-track:da81f42954b16a7b2939063a8b107fd1ab699d276fa9651f8fa5f89c64446691` |
| 2 | `def` | [Finite.equivFinOfCardEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/finite-equivfinofcardeq--39624cd7d96b714a98aa930f.md) | 40 | `declaration-track:39624cd7d96b714a98aa930f922120aafb4f04bffc14b50a8280995b25ed58d7` |
| 3 | `theorem` | [Nat.card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/nat-card-eq--5e7e7d21141280a87bf4150e.md) | 45 | `result-track:5e7e7d21141280a87bf4150e76fe2b934e0ba4ee815979301bb1eac8c72b04f9` |
| 4 | `theorem` | [Finite.card_pos_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/finite-card-pos-iff--f44bee4613b549e190b47fd1.md) | 52 | `result-track:f44bee4613b549e190b47fd145a7c1fc66769ed4ccf11be84a8372b4e7fb7a91` |
| 5 | `theorem` | [Finite.card_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/finite-card-pos--efa4af3da23adac48de5ae92.md) | 56 | `result-track:efa4af3da23adac48de5ae92e6ea25fefb26bd15755c185fa62f72f508ed5d52` |
| 6 | `theorem` | [card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-eq--9289b13538c7f9e514992b1e.md) | 63 | `result-track:9289b13538c7f9e514992b1ec95c2247adc7725ab23f923c1e0a3ea1d7093fab` |
| 7 | `theorem` | [card_le_one_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-le-one-iff-subsingleton--815a99bde33b3aa9e43094c5.md) | 68 | `result-track:815a99bde33b3aa9e43094c50c87fc7fbdfe6de157f1ca93259c1f81429c251c` |
| 8 | `theorem` | [one_lt_card_iff_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/one-lt-card-iff-nontrivial--8362818abe93592ecc579efb.md) | 72 | `result-track:8362818abe93592ecc579efb4c347a0fd81058a86215c69d80c9f280c79a2935` |
| 9 | `theorem` | [one_lt_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/one-lt-card--b4de72d2948f80f538903562.md) | 76 | `result-track:b4de72d2948f80f538903562fbcb1a91169b4700fa3740c20f6722c8a223d3b8` |
| 10 | `theorem` | [card_option](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-option--1ee64f6192da79283cc2b389.md) | 80 | `result-track:1ee64f6192da79283cc2b389ea3554cae8f73be5060c72b2ac93f4ba8c18b8fb` |
| 11 | `theorem` | [card_le_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-le-of-injective--6619fffa7b5f4787eb9e726c.md) | 84 | `result-track:6619fffa7b5f4787eb9e726c8f7728be1db62925b5503942a5ac1816c1c31029` |
| 12 | `theorem` | [card_le_of_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-le-of-embedding--9fd09767ac410e948174c117.md) | 90 | `result-track:9fd09767ac410e948174c117b984129a0a7b194afdb5d51d9f4a2e42b1746985` |
| 13 | `theorem` | [card_le_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-le-of-surjective--bd636007e97be9918da32cdc.md) | 93 | `result-track:bd636007e97be9918da32cdc9c96724742ab944c711c5275262e3d4b4d48f28c` |
| 14 | `theorem` | [card_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-eq-zero-iff--5cb56b9530bded7c025db985.md) | 100 | `result-track:5cb56b9530bded7c025db985c1b6a925cdeab64ca804bec34961a42cebd62810` |
| 15 | `theorem` | [card_le_of_injective'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-le-of-injective--db1b450d27453a41f44438ac.md) | 106 | `result-track:db1b450d27453a41f44438ac06307811585825a2733697cfeebb2bac15e819af` |
| 16 | `theorem` | [card_le_of_embedding'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-le-of-embedding--f4e49ed49aa31249506693f2.md) | 113 | `result-track:f4e49ed49aa31249506693f2ad21ded54813e72fc1841a315f01875793b6afaa` |
| 17 | `theorem` | [card_le_of_surjective'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-le-of-surjective--75aa7b63b91e0ea95a7a3dca.md) | 119 | `result-track:75aa7b63b91e0ea95a7a3dcab0542338506330fa03209716922e34c65ea0f93e` |
| 18 | `theorem` | [card_eq_zero_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-eq-zero-of-surjective--e49b28559a344bc3176dc797.md) | 125 | `result-track:e49b28559a344bc3176dc7975496f4b8febee17aa5296f70d7e9fc33a24b7aa2` |
| 19 | `theorem` | [card_eq_zero_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-eq-zero-of-injective--70d0698d8d436b3ca41844b3.md) | 135 | `result-track:70d0698d8d436b3ca41844b364e1dd6de7e227656deb26cd2ce523a09535d2da` |
| 20 | `theorem` | [card_eq_zero_of_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-eq-zero-of-embedding--eb3e21f2272049407ad9633e.md) | 140 | `result-track:eb3e21f2272049407ad9633e65d2b928aeae3025b7fa7119de26a18a82b8f591` |
| 21 | `theorem` | [card_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-sum--e78f87dc572b4cb0eb5c8b3d.md) | 143 | `result-track:e78f87dc572b4cb0eb5c8b3d9e415d1fde548bcacc739554880559d8376bf837` |
| 22 | `theorem` | [card_image_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-image-le--8cf9b32af50cdaaf518819f9.md) | 148 | `result-track:8cf9b32af50cdaaf518819f9251b3c52b0d185866b618ac85389d11d683fd303` |
| 23 | `theorem` | [card_range_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-range-le--25c341b97fc80af983f2c3a6.md) | 151 | `result-track:25c341b97fc80af983f2c3a62be9590213b8f2b6f73c6d10ab03b9d0506bdfab` |
| 24 | `theorem` | [card_subtype_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-subtype-le--be8018993cfa9e30c9229710.md) | 154 | `result-track:be8018993cfa9e30c922971031e61505b124caf398ff1bd8ba9d2003a72f3495` |
| 25 | `theorem` | [card_subtype_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-subtype-lt--63d895ee92eeee699fc2574b.md) | 159 | `result-track:63d895ee92eeee699fc2574b3eb9c880d4ca7cc7a179f8bacb7689fcaac889cd` |
| 26 | `theorem` | [card_eq_coe_natCard](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-eq-coe-natcard--6b6a9a08976ff1e7d038a303.md) | 169 | `result-track:6b6a9a08976ff1e7d038a3035a8f06ca24cadb8bf19d7bc7059c5e2c50bd2051` |
| 27 | `theorem` | [card_union_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-union-le--fe4be527ed8bb468363a1167.md) | 179 | `result-track:fe4be527ed8bb468363a1167ed84bddf09e9ae09fc523f59851a1f363071ff7b` |
| 28 | `theorem` | [card_lt_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/card-lt-card--84942d06c71e3e41dfe0f414.md) | 191 | `result-track:84942d06c71e3e41dfe0f414ced9bdb44142de1d41cc38d4a1d56ad9b1941c10` |
| 29 | `theorem` | [eq_of_subset_of_card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/eq-of-subset-of-card-le--4f35d1417988e711de82474d.md) | 197 | `result-track:4f35d1417988e711de82474d8cbf093b8ee1e226856f131b75dc7ba4c9ac5b94` |
| 30 | `theorem` | [equiv_image_eq_iff_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/equiv-image-eq-iff-subset--f2ad56f51b95e8c46e939718.md) | 201 | `result-track:f2ad56f51b95e8c46e939718c695be2d49038b69162a46693f3460e3d6c1537e` |
| 31 | `theorem` | [eq_top_of_card_le_of_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant8302e05663b948b542d0d9291c6be8569ff286d349a23fcad1e5b46a393570cb.lean/declarations/eq-top-of-card-le-of-finite--9eb29bcfb94e5b83d197acb8.md) | 207 | `result-track:9eb29bcfb94e5b83d197acb801fd5780c0de18167266809c6e66ba260bffe10b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
