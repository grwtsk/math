# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Order.Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ded120923475ca88049d6d679e86e5fd3f0bcbf",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ded120923475ca88049d6d679e86e5fd3f0bcbf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Order/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Norm` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/partialorder--eee2ab8257043e0b3d99c17b.md) | 34 | `declaration-track:eee2ab8257043e0b3d99c17b95674af8dd53eb361ed57c4887a5a259ddc87b0c` |
| 2 | `theorem` | [le_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/le-def--75609041e37b7c8e0fa83bc8.md) | 52 | `result-track:75609041e37b7c8e0fa83bc85937546d996712162b306202dade3ffc0d162082` |
| 3 | `theorem` | [lt_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/lt-def--fe9689d6e4aa3a38143d1c6b.md) | 55 | `result-track:fe9689d6e4aa3a38143d1c6bc9583d9fed2b6f70aaf1741aab713038a6c10fb2` |
| 4 | `theorem` | [nonneg_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/nonneg-iff--477f26db81e6ab29bf7707fa.md) | 58 | `result-track:477f26db81e6ab29bf7707fa50ea42fc044062371f9fa7ce83aae512b883dcfe` |
| 5 | `theorem` | [pos_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/pos-iff--ff1ba9b564d84c1b1fc9b5e3.md) | 61 | `result-track:ff1ba9b564d84c1b1fc9b5e36e9ff9b513d70cc478a7958d4ca0daed7a1f9c74` |
| 6 | `theorem` | [nonpos_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/nonpos-iff--0ddb179f4b947bdbbc377c1f.md) | 64 | `result-track:0ddb179f4b947bdbbc377c1f975c727613454127826c5fed92344391504fe3db` |
| 7 | `theorem` | [neg_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/neg-iff--6664b58737dbd6f8bf37d6b0.md) | 67 | `result-track:6664b58737dbd6f8bf37d6b02b1ee63722c495df534cf6167a1f6762fe1c9dc3` |
| 8 | `theorem` | [real_le_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/real-le-real--2d2ced6a0af8f8e5dec02229.md) | 71 | `result-track:2d2ced6a0af8f8e5dec022298d00bf0ba2bb321cbf4091a768a6e8841e955ce6` |
| 9 | `theorem` | [real_lt_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/real-lt-real--36040bb754b1de0c32345d2f.md) | 74 | `result-track:36040bb754b1de0c32345d2f11e2b888fa6d6971dd3cb2fe585c067f272b4471` |
| 10 | `theorem` | [zero_le_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/zero-le-real--cf672409ca33a601c3146151.md) | 77 | `result-track:cf672409ca33a601c31461515dedca10245d675c3ded7301dd421c9ba2d3bc34` |
| 11 | `theorem` | [zero_lt_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/zero-lt-real--8bf624f73f1aa5e55c4f9b88.md) | 81 | `result-track:8bf624f73f1aa5e55c4f9b88fa82cba236bbefb20237bc170c7700a2c0ac6bf7` |
| 12 | `theorem` | [not_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/not-le-iff--58adae6578d9d77933e85a21.md) | 84 | `result-track:58adae6578d9d77933e85a2149e3a57c55bc236768c301727dc0e2c94c2c6e3a` |
| 13 | `theorem` | [not_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/not-lt-iff--96a4b6d2ab50ce8c55cfc787.md) | 87 | `result-track:96a4b6d2ab50ce8c55cfc78784fa24c234ba9ee93643835823a4d59b8df8c64c` |
| 14 | `theorem` | [not_le_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/not-le-zero-iff--a9d44c53be1f47c5ba3f5866.md) | 90 | `result-track:a9d44c53be1f47c5ba3f5866c9260697ad2f23ef73e726d8315e2210811d27d5` |
| 15 | `theorem` | [not_lt_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/not-lt-zero-iff--0c88685936c05b36d2ab5ebb.md) | 93 | `result-track:0c88685936c05b36d2ab5ebbac0f1bf48949629de3da29f305955359b5bfb619` |
| 16 | `theorem` | [eq_re_of_ofReal_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/eq-re-of-ofreal-le--5b308d50d493277dd7658935.md) | 96 | `result-track:5b308d50d493277dd76589352bde35e5f127b2bb7ecad0bb89ac034a73185673` |
| 17 | `lemma` | [re_eq_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/re-eq-norm--0d5760fee5267cf48ca1daff.md) | 100 | `result-track:0d5760fee5267cf48ca1daff6d93dd31cd711b8e34e04b88fa321296d0f2aefb` |
| 18 | `lemma` | [neg_re_eq_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/neg-re-eq-norm--2ed5af469b97f03c50dcc070.md) | 106 | `result-track:2ed5af469b97f03c50dcc070b4c958488be920025a3869db4a3325b2a140bd63` |
| 19 | `lemma` | [re_eq_neg_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/re-eq-neg-norm--76632ccd5500dc64d2557c9e.md) | 111 | `result-track:76632ccd5500dc64d2557c9e582c5ba421c727a86a953d2af93ee837344faccd` |
| 20 | `lemma` | [monotone_ofReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/monotone-ofreal--ffdf8e00b17d019a7d470967.md) | 117 | `result-track:ffdf8e00b17d019a7d4709675185462ebee626768ad674eb36acd202add4d0a0` |
| 21 | `def` | [evalComplexOfReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/evalcomplexofreal--415557dd7974f669c9d4368c.md) | 134 | `declaration-track:415557dd7974f669c9d4368cc9303eeb9d46a660b08a2c6d298bf70c3673ed03` |
| 22 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/example--92419748a2dadcd8e72940b2.md) | 153 | `declaration-track:92419748a2dadcd8e72940b2748bcf85a22984eb90eddabb6af4580e3ba49a00` |
| 23 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/example--dc4a590c7b8b80755f46b216.md) | 154 | `declaration-track:dc4a590c7b8b80755f46b216aec044db4ac73a08c2860acb60d9bcdc1d033cfb` |
| 24 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant18979614ce8f06a536e66a9966bb78cb83ff31b898dc89ff66e832b890b4f226.lean/declarations/example--bc306a55ba49149d698a29bf.md) | 155 | `declaration-track:bc306a55ba49149d698a29bf898d1af978ca1f007107ef2bdbb55b81d739e7f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
