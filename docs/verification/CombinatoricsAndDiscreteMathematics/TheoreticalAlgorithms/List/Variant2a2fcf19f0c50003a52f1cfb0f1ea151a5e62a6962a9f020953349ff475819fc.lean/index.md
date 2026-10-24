# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64aa67027ccc9a064447f6cb5d6c3a4949a27a51",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64aa67027ccc9a064447f6cb5d6c3a4949a27a51`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Forall₂.prod_le_prod'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/forall-prod-le-prod--22fc57cb627a7a7abbad1c57.md) | 32 | `result-track:22fc57cb627a7a7abbad1c578b5a48c230beb050740635daf5e049eed5f1910c` |
| 2 | `lemma` | [Sublist.prod_le_prod'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/sublist-prod-le-prod--d158b085c49f19301f6a2454.md) | 46 | `result-track:d158b085c49f19301f6a24542a462439784ae25959b573386e380964425aa615` |
| 3 | `lemma` | [SublistForall₂.prod_le_prod'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/sublistforall-prod-le-prod--8db799c13916bd08ed7ce1fd.md) | 59 | `result-track:8db799c13916bd08ed7ce1fd83c768bcb2a56149a4ec304f2111225b966bfcd6` |
| 4 | `lemma` | [prod_le_prod'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/prod-le-prod--51bf1fff305449c43721e71a.md) | 67 | `result-track:51bf1fff305449c43721e71a059c43b17b2acc0b510bd7ad24769d9d5dd0764d` |
| 5 | `lemma` | [prod_lt_prod'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/prod-lt-prod--b8b6a07ea4a725697b498afc.md) | 73 | `result-track:b8b6a07ea4a725697b498afc0da8b5e59fb25cea627061dad855bf7c4e59f220` |
| 6 | `lemma` | [prod_lt_prod_of_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/prod-lt-prod-of-ne-nil--64a33989b316375f2a4386db.md) | 86 | `result-track:64a33989b316375f2a4386dbad711fea560317a1bc918fae1982335b188f30c1` |
| 7 | `lemma` | [prod_le_pow_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/prod-le-pow-card--3bd3fa979d33e54ff5dccc54.md) | 94 | `result-track:3bd3fa979d33e54ff5dccc54d1b48e57f9098675e85a5eb210a3be1619477751` |
| 8 | `lemma` | [pow_card_le_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/pow-card-le-prod--fa49ed78094ba758ca4235f4.md) | 100 | `result-track:fa49ed78094ba758ca4235f486711e8e2d62edd51a589678a2f05f2c170414ea` |
| 9 | `lemma` | [exists_lt_of_prod_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/exists-lt-of-prod-lt--cfb8ee32085ff73f675edd8b.md) | 106 | `result-track:cfb8ee32085ff73f675edd8bc4c7885dcd2eab49d8802f36a1c75b87d9127a91` |
| 10 | `lemma` | [exists_le_of_prod_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/exists-le-of-prod-le--656f334a350b96f283c045cb.md) | 113 | `result-track:656f334a350b96f283c045cb75eedbf04363999018af3a5f3f11f27c17cf014b` |
| 11 | `lemma` | [one_le_prod_of_one_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/one-le-prod-of-one-le--29b4d3063c969d02e5732dbe.md) | 121 | `result-track:29b4d3063c969d02e5732dbec29f411d05e2007001b8c2828ed84e41239c8ded` |
| 12 | `lemma` | [max_prod_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/max-prod-le--b1867e649ced09519ec17f24.md) | 131 | `result-track:b1867e649ced09519ec17f2430124c0282cb5ed08d3af68fc97ec53eb6bddd70` |
| 13 | `lemma` | [prod_min_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/prod-min-le--9ebf1ae1a67a56b882ccc015.md) | 140 | `result-track:9ebf1ae1a67a56b882ccc015a53fc2dd464a80d2eda41f781e116303c9652fab` |
| 14 | `lemma` | [sum_le_foldr_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/sum-le-foldr-max--6ab65a2e1d64d3eb15f3ae98.md) | 151 | `result-track:6ab65a2e1d64d3eb15f3ae9830fa97638e6480c4bb1ef76f1814d5df067c1b4f` |
| 15 | `lemma` | [one_lt_prod_of_one_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/one-lt-prod-of-one-lt--4b49123449ce7413f81c3ff9.md) | 159 | `result-track:4b49123449ce7413f81c3ff96425a4b8c3b5518c0530864c13d460c4104b33b1` |
| 16 | `lemma` | [single_le_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/single-le-prod--8759cc5890768d9dcf553655.md) | 174 | `result-track:8759cc5890768d9dcf55365541d545ac3c21598f5041a981e824d253a66b7179` |
| 17 | `lemma` | [all_one_of_le_one_le_of_prod_eq_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/all-one-of-le-one-le-of-prod-eq-one--024df7e08955d264cb8cc2c5.md) | 185 | `result-track:024df7e08955d264cb8cc2c5d4985c286251d5eda0d62cd7f32715c02526ec01` |
| 18 | `lemma` | [prod_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/prod-eq-one-iff--5576baee656d849412827e23.md) | 192 | `result-track:5576baee656d849412827e23495ee762f8fc49b39ec9155efa2deaa30926bc3b` |
| 19 | `lemma` | [monotone_prod_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/monotone-prod-take--5ef198eb18c0bb4016c2b6f6.md) | 198 | `result-track:5ef198eb18c0bb4016c2b6f65943b6e3a7938081c7ee0b3877b45d94fc9cc419` |
| 20 | `theorem` | [le_prod_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2a2fcf19f0c50003a52f1cfb0f1ea151a5e62a6962a9f020953349ff475819fc.lean/declarations/le-prod-of-mem--f1374bbc37aa29b84479931e.md) | 207 | `result-track:f1374bbc37aa29b84479931e414ed3e19b4ceacefbabb3f731d3e12731a48435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
