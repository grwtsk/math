# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Turan.Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6afebd8124fc17000606b5d9d12696fc6e7fea40",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6afebd8124fc17000606b5d9d12696fc6e7fea40`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Equipartition` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/isturanmaximal--9a3311eeeea3144c5bf7e05d.md) | 58 | `declaration-track:9a3311eeeea3144c5bf7e05dc1b94959c85f74e91b9b024d519a06c8b1705e32` |
| 2 | `lemma` | [IsTuranMaximal.le_iff_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/isturanmaximal-le-iff-eq--d40576a5d1528276e62020cf.md) | 66 | `result-track:d40576a5d1528276e62020cf7da97d4670ba1a40079540bef7643eab20c3e5a6` |
| 3 | `def` | [turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/turangraph--e8c6dc7a1666411e79d8d937.md) | 72 | `declaration-track:e8c6dc7a1666411e79d8d937ff906b5003236bc66c2b27527069c90286d04b64` |
| 4 | `instance` | [turanGraph.instDecidableRelAdj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/turangraph-instdecidablereladj--1336f8d97c4074afa061434a.md) | 74 | `declaration-track:1336f8d97c4074afa061434a0efc82596675c058fed8a40ae547c9f990512dc2` |
| 5 | `lemma` | [turanGraph_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/turangraph-zero--2a6cf9859bb88d3b96f6497b.md) | 78 | `result-track:2a6cf9859bb88d3b96f6497b82b047912a49d14e5c4dadcdff2f52d59e6a1e74` |
| 6 | `theorem` | [turanGraph_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/turangraph-eq-top--deabd4d5bcb08f96a17dc3ed.md) | 82 | `result-track:deabd4d5bcb08f96a17dc3edec4d0fad7a52de5f985389f6c7923a09d1b4298b` |
| 7 | `theorem` | [turanGraph_cliqueFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/turangraph-cliquefree--9f3785a329647400603db70f.md) | 92 | `result-track:9f3785a329647400603db70f0f798e43f4aa62de95a4968f6aa6c832b4a69f58` |
| 8 | `theorem` | [not_cliqueFree_of_isTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/not-cliquefree-of-isturanmaximal--6775759ee72a08846bccd05c.md) | 105 | `result-track:6775759ee72a08846bccd05cca6419c3e75f29e1aa02e1be9d76ebc27820d101` |
| 9 | `lemma` | [exists_isTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/exists-isturanmaximal--7f57c35c0e4e2c147fa8c14a.md) | 115 | `result-track:7f57c35c0e4e2c147fa8c14ab958994157720e7e8435330b15200d1948050ac0` |
| 10 | `lemma` | [degree_eq_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/degree-eq-of-not-adj--bb6c74456f0ce76a83b68cda.md) | 138 | `result-track:bb6c74456f0ce76a83b68cda8c47f7ad0b26ee7584dacc2369d5698d0f1bb524` |
| 11 | `lemma` | [not_adj_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/not-adj-trans--de3b34ca31f4f3623de77049.md) | 150 | `result-track:de3b34ca31f4f3623de770492ae193ab1162b84d887a8d641956df98ca62b416` |
| 12 | `theorem` | [equivalence_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/equivalence-not-adj--a62bbe0f0fccd4a4d241faf2.md) | 182 | `result-track:a62bbe0f0fccd4a4d241faf20a3f460c34976f18d34eb6c4e6557041e51935a3` |
| 13 | `def` | [setoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/setoid--aace07f53d69928942564b3c.md) | 189 | `declaration-track:aace07f53d69928942564b3c54a5120d7e8698d22b4bc305a180b320cd01e1f8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/instance--68cbecfb061069fa82289256.md) | 191 | `declaration-track:68cbecfb061069fa82289256eed821ec3a767343d5d95801e3ec038128dcca3f` |
| 15 | `def` | [finpartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/finpartition--4ee5e76eec7067c2b0a3fc55.md) | 195 | `declaration-track:4ee5e76eec7067c2b0a3fc55f3ad126815ee21b7cca67ef8d7d6a6fd44112229` |
| 16 | `lemma` | [not_adj_iff_part_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/not-adj-iff-part-eq--70f0451bf40faa77f978b157.md) | 197 | `result-track:70f0451bf40faa77f978b157f26b7daf873c161c2f8746c925049a898de948c2` |
| 17 | `lemma` | [degree_eq_card_sub_part_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/degree-eq-card-sub-part-card--65cc40fd61ac8b0057c8a255.md) | 205 | `result-track:65cc40fd61ac8b0057c8a255a144f9f6a6c1d7826d8491b1d835e2738174deb7` |
| 18 | `theorem` | [isEquipartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/isequipartition--1d08a2af7624a96de7db3446.md) | 218 | `result-track:1d08a2af7624a96de7db34463444dc20b74d4461a3f45152de6af2f4d7a480c8` |
| 19 | `lemma` | [card_parts_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/card-parts-le--27bc016a9f7665baa86c6b08.md) | 238 | `result-track:27bc016a9f7665baa86c6b081baf88031627e249c062ff27e46dfca856242d3f` |
| 20 | `theorem` | [card_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/card-parts--cb889d2d9437bd967e1cebb4.md) | 251 | `result-track:cb889d2d9437bd967e1cebb4f45c4a9813a7da6ecc68e367f139470daf557e23` |
| 21 | `theorem` | [nonempty_iso_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/nonempty-iso-turangraph--68f3233e37cfc52793d67f98.md) | 274 | `result-track:68f3233e37cfc52793d67f9843b33c81492563cc15deee74bc3cde4e1e623ab2` |
| 22 | `theorem` | [isTuranMaximal_of_iso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/isturanmaximal-of-iso--13cc4421c63a85113284a9c1.md) | 295 | `result-track:13cc4421c63a85113284a9c159c43feeedf7fc68d6edf867cfa4066a46808fa2` |
| 23 | `theorem` | [IsTuranMaximal.iso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/isturanmaximal-iso--100b1f6f9ca702166bec8aec.md) | 303 | `result-track:100b1f6f9ca702166bec8aec399d7b8f18460b25c5a8fd0580d0b68c9125e61d` |
| 24 | `theorem` | [isTuranMaximal_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/isturanmaximal-turangraph--5b1dec1f15019d54f5e6b6dc.md) | 308 | `result-track:5b1dec1f15019d54f5e6b6dc9a2e7808f7f37e3874740ad7911234f9b67341ed` |
| 25 | `theorem` | [isTuranMaximal_iff_nonempty_iso_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/declarations/isturanmaximal-iff-nonempty-iso-turangraph--acbff27a21a6d2dee8ba8428.md) | 313 | `result-track:acbff27a21a6d2dee8ba84283d2a0af2cdb19b9b480dee5b71f68799fbfcfd0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
