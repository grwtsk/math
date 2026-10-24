# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.KleinFour.Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a270a253f9da3102453fda2f640151d7b3424afc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a270a253f9da3102453fda2f640151d7b3424afc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Dihedral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAddKleinFour](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/isaddkleinfour--a8a429da4e46b45be87f499a.md) | 54 | `declaration-track:a8a429da4e46b45be87f499aee3116f5480d7e25b1156e421ac57b2afc8b3878` |
| 2 | `class` | [IsKleinFour](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/iskleinfour--d1fd7b53b10b025e8aedf5a4.md) | 60 | `declaration-track:d1fd7b53b10b025e8aedf5a4411b1bd1fae4811fb181ca1d83fda66355d4fa87` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/instance--60b8e5d57d604cc242796568.md) | 67 | `declaration-track:60b8e5d57d604cc242796568e5bd4d0b357f9db824d0692c3c6196e5ec74bb19` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/instance--6b78b6e940a9cd4778f0953a.md) | 71 | `declaration-track:6b78b6e940a9cd4778f0953a8a437ced40faf205bbd2a5f2a4b438f7d9eb549c` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/instance--ed4b976f2b046b8a81a83704.md) | 75 | `declaration-track:ed4b976f2b046b8a81a83704f9fc31a97c833d2c76aca9ad419f4279890579d6` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/instance--0b12f69ecfe9ccf6d6d296ba.md) | 79 | `declaration-track:0b12f69ecfe9ccf6d6d296baee79b69ed0e4f4ce6a6c53a9f9510ec15753f8ef` |
| 7 | `instance` | [instFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/instfinite--d54203ba0d203e17f04a8e53.md) | 88 | `declaration-track:d54203ba0d203e17f04a8e535aad18ec3e8323064ae24ed2ba4cb1681e9b306e` |
| 8 | `lemma` | [card_four'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/card-four--e79c17a3d73153b575ec6745.md) | 92 | `result-track:e79c17a3d73153b575ec67457d98292693fb9937fb52b762b8755eb267b71059` |
| 9 | `lemma` | [not_isCyclic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/not-iscyclic--77acb92d67246a7a3215981c.md) | 101 | `result-track:77acb92d67246a7a3215981c480c9b9103002399af349bfa33f0142a5cc25f76` |
| 10 | `lemma` | [inv_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/inv-eq-self--9aafb2a9ff311fe176f5bf7c.md) | 105 | `result-track:9aafb2a9ff311fe176f5bf7cd81ebf3f50ea5a74022f2079842d35857eb9ea32` |
| 11 | `lemma` | [mul_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/mul-self--b8c7880151c5227f76e87b9b.md) | 114 | `result-track:b8c7880151c5227f76e87b9b26af9b1435b5bbcfbddd1694e5e2525bf29e0d0e` |
| 12 | `lemma` | [eq_finset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/eq-finset-univ--ed5c68fc0c9f6490967eb01f.md) | 118 | `result-track:ed5c68fc0c9f6490967eb01f81a05b8b40d4277f275136d1b88413c9b93b7c38` |
| 13 | `lemma` | [eq_mul_of_ne_all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/eq-mul-of-ne-all--42ca4f95cb7d0d9f9afe163b.md) | 127 | `result-track:42ca4f95cb7d0d9f9afe163bf9accb120f6501b61b626eac6ff32a19b99eff05` |
| 14 | `def` | [mulEquiv'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/mulequiv--dac0527d0ba05e3c6d952d44.md) | 140 | `declaration-track:dac0527d0ba05e3c6d952d441148a7275368034406dccfac4249dde2f078eda4` |
| 15 | `abbrev` | [mulEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/mulequiv--989125314e179ad647544524.md) | 164 | `declaration-track:989125314e179ad6475445247427da44a3d54fb1ce58ec1d504266eb95a4e612` |
| 16 | `lemma` | [nonempty_mulEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/declarations/nonempty-mulequiv--21c032a65a7f2555baf3eed5.md) | 169 | `result-track:21c032a65a7f2555baf3eed56cd5ff4bcb971d879a398c069ceff49686c4904c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
