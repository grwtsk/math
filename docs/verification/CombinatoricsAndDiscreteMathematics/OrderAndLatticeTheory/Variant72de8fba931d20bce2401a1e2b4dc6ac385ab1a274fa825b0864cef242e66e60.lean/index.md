# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Order.Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "308ad5ce5cb8a907e133214836d768d18e46d583",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `308ad5ce5cb8a907e133214836d768d18e46d583`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Order/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Norm` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/partialorder--3a6538250048c810faca9b18.md) | 42 | `declaration-track:3a6538250048c810faca9b1871bb80c3703ac61ad8b1cf8df98c714aefd58a18` |
| 2 | `theorem` | [le_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/le-def--a53f89a811742f1d053a827d.md) | 60 | `result-track:a53f89a811742f1d053a827dd9f944af993087c7450a972c1fe4412ca618bea4` |
| 3 | `theorem` | [lt_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/lt-def--29e184f9343dee5731d7e149.md) | 63 | `result-track:29e184f9343dee5731d7e149d5532abc891e7dbb70672e2183fc301b274271ee` |
| 4 | `theorem` | [nonneg_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/nonneg-iff--42be9012ccc70f3073f0ae19.md) | 66 | `result-track:42be9012ccc70f3073f0ae19c7afb1dd17834777a26bf9322f813ae37413abf2` |
| 5 | `theorem` | [pos_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/pos-iff--de2cb5b2f7181ed944f59859.md) | 69 | `result-track:de2cb5b2f7181ed944f598597c8ea869d8e2497e8046a79320cb66d5ceeff79f` |
| 6 | `theorem` | [nonpos_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/nonpos-iff--3ae1d991025b4174fbd49007.md) | 72 | `result-track:3ae1d991025b4174fbd490078451bfa166e7460b426bd396791a0df5202ecb4f` |
| 7 | `theorem` | [neg_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/neg-iff--6553273385fa038c6abc7185.md) | 75 | `result-track:6553273385fa038c6abc718511c0af1883d03593be76dfd8ed45d99d5922f7c7` |
| 8 | `theorem` | [real_le_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/real-le-real--aeeaa39235ed101c3bf6f2a4.md) | 79 | `result-track:aeeaa39235ed101c3bf6f2a4a79d3a9cc50fa39a39d850ee2998a23793f50542` |
| 9 | `theorem` | [real_lt_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/real-lt-real--961ae90b15bd319424692f26.md) | 82 | `result-track:961ae90b15bd319424692f26f7e7530a18295e6f508b6d0e7e5e5bbcafdca450` |
| 10 | `theorem` | [zero_le_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/zero-le-real--976545b06b7babf515bc1ba9.md) | 85 | `result-track:976545b06b7babf515bc1ba9e62e7fdadd6a4ced22ac0d42cadcf83959de66d4` |
| 11 | `theorem` | [zero_lt_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/zero-lt-real--e67fff33b70e602d4a5617ec.md) | 89 | `result-track:e67fff33b70e602d4a5617ec83bf92b514455e7289aae0c63edcc5c83e672285` |
| 12 | `theorem` | [not_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/not-le-iff--541e54f57e20795e795bc6b6.md) | 92 | `result-track:541e54f57e20795e795bc6b6e79bd69caf50822978360686acc9456cf937a20c` |
| 13 | `theorem` | [not_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/not-lt-iff--267e43eb38f04e2398a8de2f.md) | 95 | `result-track:267e43eb38f04e2398a8de2f80c86acb02b5a233d03d980421296d5ee64fcb86` |
| 14 | `theorem` | [not_le_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/not-le-zero-iff--d3fe1b82827f30ad1a17d58b.md) | 98 | `result-track:d3fe1b82827f30ad1a17d58b410ef7224feb4f3f7e5607260593471cb91acbfa` |
| 15 | `theorem` | [not_lt_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/not-lt-zero-iff--a6541d2c01d9eec603643add.md) | 101 | `result-track:a6541d2c01d9eec603643addcad8ce735e250a4f6d3e1f0cfd11d9f8ebea2595` |
| 16 | `theorem` | [eq_re_of_ofReal_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/eq-re-of-ofreal-le--3eb7f87d793b383e33b701e9.md) | 104 | `result-track:3eb7f87d793b383e33b701e98e3a88ae52843a01651208c40ac0577f84d97ebc` |
| 17 | `lemma` | [re_eq_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/re-eq-norm--b2652db130757c3e96f542d8.md) | 108 | `result-track:b2652db130757c3e96f542d8621a0928f003daee900892bd1235bda930ff5820` |
| 18 | `lemma` | [neg_re_eq_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/neg-re-eq-norm--4ad291aa77e9ff6431a30714.md) | 114 | `result-track:4ad291aa77e9ff6431a3071456a81ac9c5c98218f8c95274f53e775801f2d962` |
| 19 | `lemma` | [re_eq_neg_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/re-eq-neg-norm--80663de0b3c109a8daf17be2.md) | 119 | `result-track:80663de0b3c109a8daf17be2aa29c36f3dfed113f5804235a57726e61bdef7a7` |
| 20 | `lemma` | [monotone_ofReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/monotone-ofreal--2dd22e94f00deaff7f3bdfb9.md) | 125 | `result-track:2dd22e94f00deaff7f3bdfb93ae1c7cdf3b70a3865a5a23765adf97eb4312c25` |
| 21 | `def` | [evalComplexOfReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/evalcomplexofreal--8b9d9e9a8eed53be22114a8a.md) | 142 | `declaration-track:8b9d9e9a8eed53be22114a8a0a45b73c0404e61fb46a1024c55715174d48547d` |
| 22 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/example--fa511cb04d094e67a99cd64c.md) | 161 | `declaration-track:fa511cb04d094e67a99cd64c8d4ca1eb119d91833d98bc81184c57e1debc0daa` |
| 23 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/example--58372a7285aff307594cb757.md) | 162 | `declaration-track:58372a7285aff307594cb75741b37db373b39ed7f2d7f98dd602e9d926a1f0d8` |
| 24 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/declarations/example--52024d14d54192c548543817.md) | 163 | `declaration-track:52024d14d54192c548543817d1a61a2ea17cf37d7287fccda9b6cf798a844044` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
