# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Energy.Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc60e7dd0bc91351780ecc1a0e2b7176fda530ed",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc60e7dd0bc91351780ecc1a0e2b7176fda530ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulEnergy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy--36cb588edb85df8c075641a6.md) | 53 | `declaration-track:36cb588edb85df8c075641a6db3c1aff9b9e96e1799971fd7afca8c2c5ac35b5` |
| 2 | `lemma` | [mulEnergy_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-mono--25eda58310da86d2dd312526.md) | 75 | `result-track:25eda58310da86d2dd312526a060abf19e8478b6f7a1a3cf2428251b1523ab1e` |
| 3 | `lemma` | [mulEnergy_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-mono-left--1c5128b21aef0f6a8c3d8b42.md) | 78 | `result-track:1c5128b21aef0f6a8c3d8b42cf5ccc802e021ebfa97937d2ba3e358f8d3a91f2` |
| 4 | `lemma` | [mulEnergy_mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-mono-right--d75f7044e07c929afca8453e.md) | 81 | `result-track:d75f7044e07c929afca8453e782a90edebe25e38cca01d7dcaeb7934f91736a5` |
| 5 | `lemma` | [le_mulEnergy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/le-mulenergy--9486565a5569f0e1fe2d0ee7.md) | 84 | `result-track:9486565a5569f0e1fe2d0ee73f4a05f47c3a24bd1bdfcfa0b1971c458ccb2aa4` |
| 6 | `lemma` | [mulEnergy_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-pos--c7f6c38b305fdcdf2fea731c.md) | 91 | `result-track:c7f6c38b305fdcdf2fea731cc96abf7713f9cfc21841cf6ff757b2d602287854` |
| 7 | `lemma` | [mulEnergy_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-empty-left--a9c540fe73af271c1dc2332c.md) | 96 | `result-track:a9c540fe73af271c1dc2332c54d492d223eb5a305632ac81a97691d059016ae9` |
| 8 | `lemma` | [mulEnergy_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-empty-right--8ec94c2ed2bea746b8f40646.md) | 98 | `result-track:8ec94c2ed2bea746b8f406460f0a1b5d92f0780f3bc91c62c58327d57d542778` |
| 9 | `lemma` | [mulEnergy_pos_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-pos-iff--3610fd93a76a22e8e4a12639.md) | 102 | `result-track:3610fd93a76a22e8e4a1263968bd23f8887a9d49250dd4355310973b1aca7ef9` |
| 10 | `lemma` | [mulEnergy_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-eq-zero-iff--7caefb7efcb25f9dc6e9c3f1.md) | 108 | `result-track:7caefb7efcb25f9dc6e9c3f17b555b03a4ab087d87fe2bf3215bb533534d3df3` |
| 11 | `lemma` | [mulEnergy_eq_card_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-eq-card-filter--73a7aee3555b8af2bd68559a.md) | 111 | `result-track:73a7aee3555b8af2bd68559ac2c991f34b504f27506effe4a61794b70474a138` |
| 12 | `lemma` | [mulEnergy_eq_sum_sq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-eq-sum-sq--67402f8ce2d44c2e7c43e282.md) | 115 | `result-track:67402f8ce2d44c2e7c43e282fc307d603776760265b554879fd9a862419ba4a3` |
| 13 | `lemma` | [mulEnergy_eq_sum_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-eq-sum-sq--1bcc629377987b64b4f4f2b5.md) | 129 | `result-track:1bcc629377987b64b4f4f2b5afab9fcfb23c9bfd982ae2c4609c48e714223183` |
| 14 | `lemma` | [card_sq_le_card_mul_mulEnergy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/card-sq-le-card-mul-mulenergy--87a4b1478c462edde61c4a6a.md) | 135 | `result-track:87a4b1478c462edde61c4a6ad05bf934e2419ca1481e1f721e6278211aa6d128` |
| 15 | `lemma` | [le_card_add_mul_mulEnergy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/le-card-add-mul-mulenergy--dd0e82ef1046a3b878db4def.md) | 147 | `result-track:dd0e82ef1046a3b878db4defcae82c77f12252a2d49ab9c58d00a3901934361a` |
| 16 | `lemma` | [mulEnergy_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-comm--d0c3a790dd745204a501d012.md) | 162 | `result-track:d0c3a790dd745204a501d0122a9151bd69a872fa8485489312cc3bd997ae4397` |
| 17 | `lemma` | [mulEnergy_univ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-univ-left--8e5c71f985c9ec10123418df.md) | 173 | `result-track:8e5c71f985c9ec10123418df09b2d1859c6b6e2bc9ceae71ab02aab4e42e65e3` |
| 18 | `lemma` | [mulEnergy_univ_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant59af50d6ea20c5850c27370dcbfeda2b60490458c014e90702a3a8a0acd444bd.lean/declarations/mulenergy-univ-right--362413760b9bc4c32a1d7800.md) | 190 | `result-track:362413760b9bc4c32a1d7800907cb7be8739122b3e04af32ae5190226549303d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
