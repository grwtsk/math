# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Embeddings.Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16308da31ce735a870a2c014637b01b92e13964b",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16308da31ce735a870a2c014637b01b92e13964b`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/instance--3c9701a4897eb80a3ab38f50.md) | 49 | `declaration-track:3c9701a4897eb80a3ab38f5081868f6e0a9c84e2dd674717abf42286fd63aa7b` |
| 2 | `theorem` | [card](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/card--a3a8a900de7ac6cec0956905.md) | 55 | `result-track:a3a8a900de7ac6cec0956905c0897a7d829e524982eccef498d588579ee880d6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/instance--60fccb926df9d0144c98f12c.md) | 58 | `declaration-track:60fccb926df9d0144c98f12c4571585667b817ef35ea7cbfec640583aef74801` |
| 4 | `theorem` | [range_eval_eq_rootSet_minpoly](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/range-eval-eq-rootset-minpoly--a00a77888496a679f0c08264.md) | 73 | `result-track:a00a77888496a679f0c082648f73c7bc077ef9603e7fb3af4034c64a4707f330` |
| 5 | `theorem` | [coeff_bdd_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/coeff-bdd-of-norm-le--6f1c82e83186cba01b219772.md) | 88 | `result-track:6f1c82e83186cba01b219772cafb13aad5748795b5d6e7728cf675116c16ebe7` |
| 6 | `theorem` | [finite_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/finite-of-norm-le--1c27fff55cc3aadd27b21daa.md) | 103 | `result-track:1c27fff55cc3aadd27b21daad0d847d6bef5204edaa850547580aa5a054113bc` |
| 7 | `theorem` | [pow_eq_one_of_norm_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/pow-eq-one-of-norm-eq-one--85de8533bfef929bd624390b.md) | 117 | `result-track:85de8533bfef929bd624390bad36b976f151becff6a8a6a3f3775f5bc330abc8` |
| 8 | `def` | [NumberField.place](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/numberfield-place--1c72ddb7725b4993ba62eb01.md) | 139 | `declaration-track:1c72ddb7725b4993ba62eb017d0fd9a5f9b586d2bb83bac920fc51840f408ce9` |
| 9 | `theorem` | [NumberField.place_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/numberfield-place-apply--090585607eacef7e78e90aec.md) | 143 | `result-track:090585607eacef7e78e90aec87c06070b145e687c271234c9e1c0b18cb70c202` |
| 10 | `def` | [lift](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/lift--a91df4953023ab09070217f1.md) | 158 | `declaration-track:a91df4953023ab09070217f132df35c548cf7ace6f518208a6566f238afec190` |
| 11 | `theorem` | [lift_comp_algebraMap](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/lift-comp-algebramap--1de98162562c92ae71f8169d.md) | 163 | `result-track:1de98162562c92ae71f8169d25aac69cb773947afa864996e2ae73a3c556c7ef` |
| 12 | `theorem` | [lift_algebraMap_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/lift-algebramap-apply--2b18bce5f0bc14a5a17728a3.md) | 170 | `result-track:2b18bce5f0bc14a5a17728a3f7bcffe4e758b1c7900caf26995d64d7b4027825` |
| 13 | `abbrev` | [conjugate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/conjugate--201d7d96621032f20bda61cc.md) | 177 | `declaration-track:201d7d96621032f20bda61ccc1187c3b171ea3d890d637939c867442849d44be` |
| 14 | `theorem` | [conjugate_coe_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/conjugate-coe-eq--cf8f98cfb49878fec9afd4ea.md) | 180 | `result-track:cf8f98cfb49878fec9afd4eac1217494af1321b61c8e50bd3c137c8445be6e44` |
| 15 | `theorem` | [place_conjugate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/place-conjugate--7a2d8b03979d20af49741822.md) | 182 | `result-track:7a2d8b03979d20af497418224b3466bf97b3a2919d2243766f81bf6524196f3c` |
| 16 | `abbrev` | [IsReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isreal--7964d8db67d7af2d4894257c.md) | 186 | `declaration-track:7964d8db67d7af2d4894257c1344727260df7e27d81f2e84e1e7ee4c707f8acc` |
| 17 | `theorem` | [isReal_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isreal-iff--9d478c837386257b43ecdc75.md) | 188 | `result-track:9d478c837386257b43ecdc751974e5cd6698a9732155de6ed377f0fd7b8f245d` |
| 18 | `theorem` | [isReal_conjugate_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isreal-conjugate-iff--a22d63cfe847d42982b752d5.md) | 190 | `result-track:a22d63cfe847d42982b752d51a8ab943aff86af95391bb28da7bc679a0d89d37` |
| 19 | `def` | [IsReal.embedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isreal-embedding--e6076229aa402101db989436.md) | 194 | `declaration-track:e6076229aa402101db989436532d46fe7bb4f58db560914bec29360d5f21a34a` |
| 20 | `theorem` | [IsReal.coe_embedding_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isreal-coe-embedding-apply--ce0d30c41a28096e28acd42f.md) | 204 | `result-track:ce0d30c41a28096e28acd42f4d74abf59fa7f0d6cec58b582d43c458c0f3db56` |
| 21 | `lemma` | [IsReal.comp](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isreal-comp--7c69f9666076907458bfe0be.md) | 211 | `result-track:7c69f9666076907458bfe0be3ee68ecad3bd848d4772b5f5cb943caef3ad5f0e` |
| 22 | `lemma` | [isReal_comp_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isreal-comp-iff--bb58f6833a484ad1211435a6.md) | 214 | `result-track:bb58f6833a484ad1211435a6a61d1b1702cb30596b84c50044e5c75d70ca4cf7` |
| 23 | `lemma` | [exists_comp_symm_eq_of_comp_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/exists-comp-symm-eq-of-comp-eq--651a41441844dade8e62f3a6.md) | 218 | `result-track:651a41441844dade8e62f3a6e989209f93222f897c4a5ea33844eedbe39e329b` |
| 24 | `def` | [IsConj](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isconj--0f0d1836c8c102de43ea48d1.md) | 234 | `declaration-track:0f0d1836c8c102de43ea48d18be32d25f23435d45cad1e95783f370450a32abd` |
| 25 | `lemma` | [IsConj.eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isconj-eq--eec158a1135aac1d1ad0b6cb.md) | 238 | `result-track:eec158a1135aac1d1ad0b6cb12e8a436e6fb70d0029805a6817c58fea1b80f17` |
| 26 | `lemma` | [IsConj.ext](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isconj-ext--5a91a34cd88e52168f74f80b.md) | 240 | `result-track:5a91a34cd88e52168f74f80b58c88d56089167f16e6b72e8023a2b0a9d2a5c6b` |
| 27 | `lemma` | [IsConj.ext_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isconj-ext-iff--075b617e373e028d94dd118b.md) | 243 | `result-track:075b617e373e028d94dd118ba9ee07764b3f925ef8422622a6f53e0fd1f4405b` |
| 28 | `lemma` | [IsConj.isReal_comp](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isconj-isreal-comp--f30a90a6d2f842217e3da279.md) | 246 | `result-track:f30a90a6d2f842217e3da279cc05c0499b7c4c1d8e1b11bb60ab46952d8a3770` |
| 29 | `lemma` | [isConj_one_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isconj-one-iff--3fea3b089ba5315c149b2314.md) | 251 | `result-track:3fea3b089ba5315c149b2314fc5626ed118dcd14046f6dc2da095bd7a835ba86` |
| 30 | `lemma` | [IsConj.symm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isconj-symm--3772c923abb9af53cc6f429c.md) | 255 | `result-track:3772c923abb9af53cc6f429c116d1396b30d44ffe347960cce7c5aa995a850ce` |
| 31 | `lemma` | [isConj_symm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantf9e9b52a7c50acff4055e657cf080457ca61f46471f6590fb967cc633cb3047e.lean/declarations/isconj-symm--e0877d073644c09e568e5997.md) | 258 | `result-track:e0877d073644c09e568e599794fdfd7531506e8030850eaf371f4f353cb4779f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
