# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sum.Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33a16d03396b0ab4be66da038ffac8c620c55bda",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33a16d03396b0ab4be66da038ffac8c620c55bda`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Set` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/instance--1c6c2b3d1b4063f722524e33.md) | 31 | `declaration-track:1c6c2b3d1b4063f722524e33cb509df878024e9e42ec644b93c40bfc36ae336f` |
| 2 | `lemma` | [toLeft_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/toleft-eq-univ--00163095a191a8c10f206a76.md) | 41 | `result-track:00163095a191a8c10f206a7690ab900043a45865832004ed3df9804a1d66260e` |
| 3 | `lemma` | [toRight_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/toright-eq-empty--aa3cd48d783ec0d70c2c8f8f.md) | 44 | `result-track:aa3cd48d783ec0d70c2c8f8f270c0240f6cab797356cde0b4358e80760ae7b04` |
| 4 | `lemma` | [toRight_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/toright-eq-univ--b3d7045a8dab2d2392cf52a5.md) | 51 | `result-track:b3d7045a8dab2d2392cf52a5eb131dea2b36a4668ca535fc427c4eff75f914c5` |
| 5 | `lemma` | [toLeft_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/toleft-eq-empty--3c777bfbecfda0d3141f162f.md) | 54 | `result-track:3c777bfbecfda0d3141f162fe0e5790af78eadcbba13f5826bb997a174e7868f` |
| 6 | `lemma` | [univ_disjSum_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/univ-disjsum-univ--546d299d5e165ceac1cebe81.md) | 60 | `result-track:546d299d5e165ceac1cebe817d635196359409576beb8d257a683982c1bb976d` |
| 7 | `lemma` | [toLeft_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/toleft-univ--762ca63ce5c963e478ee9b6a.md) | 61 | `result-track:762ca63ce5c963e478ee9b6a97241bea698c937ef0fd989eebf6a09aca73ccf3` |
| 8 | `lemma` | [toRight_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/toright-univ--a529f539909c2b04699086a1.md) | 62 | `result-track:a529f539909c2b04699086a1edac73ed6eead05a9dd920f094e5ed797e77e310` |
| 9 | `theorem` | [Fintype.card_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/fintype-card-sum--01222b27122bbf572e38fbe1.md) | 67 | `result-track:01222b27122bbf572e38fbe1cb6c2ccf9d3a2ca22e2735e6de33f10f4c9a16bd` |
| 10 | `def` | [fintypeOfFintypeNe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/fintypeoffintypene--603ff57be2496f54d856e887.md) | 72 | `declaration-track:603ff57be2496f54d856e887354a7a864a5578c4a7973a384757d3f03ca4e67d` |
| 11 | `theorem` | [image_subtype_ne_univ_eq_image_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/image-subtype-ne-univ-eq-image-erase--4388b7111b6acd5b48362a06.md) | 76 | `result-track:4388b7111b6acd5b48362a06ebfd202e686bc4661bd749d1dea138303351a0b5` |
| 12 | `theorem` | [image_subtype_univ_ssubset_image_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/image-subtype-univ-ssubset-image-univ--21d29e68963f097a702544a6.md) | 88 | `result-track:21d29e68963f097a702544a6b01c30c940ef0314f129cb2eb6091dec512684f3` |
| 13 | `theorem` | [Finset.exists_equiv_extend_of_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/finset-exists-equiv-extend-of-card-eq--c8d58c6e699c70c8fa60bc91.md) | 106 | `result-track:c8d58c6e699c70c8fa60bc91fa6bc5d54bde97a1d8e92c51eb701f76ccd947ff` |
| 14 | `theorem` | [Set.MapsTo.exists_equiv_extend_of_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/set-mapsto-exists-equiv-extend-of-card-eq--801c32cf1e7ec7914c848614.md) | 131 | `result-track:801c32cf1e7ec7914c84861479ef7c06f210a1407d6485426a001ae15ac11bdb` |
| 15 | `theorem` | [Fintype.card_subtype_or](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/fintype-card-subtype-or--5f08ce94305d086b06ebcf16.md) | 143 | `result-track:5f08ce94305d086b06ebcf162d43ba5a00498fc1052db471b65dfc0604fd5532` |
| 16 | `theorem` | [Fintype.card_subtype_or_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/fintype-card-subtype-or-disjoint--19bc8006258e430a7ae7122f.md) | 150 | `result-track:19bc8006258e430a7ae7122f8195bfbc98906bf1c4e52e6abdf9cd684e493249` |
| 17 | `theorem` | [infinite_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant625d5cdf9eb9e39209ede4b7bce7325851489eb1d3d82a262bd53aaa7228783c.lean/declarations/infinite-sum--6a4f6ac5a45f0ee9af1d6564.md) | 160 | `result-track:6a4f6ac5a45f0ee9af1d6564e12b9f34e07b5ef052d885e93a4e6cfa287e279a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
