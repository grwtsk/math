# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ZagierTwoSquares.Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aeee2a37bfe3b4463ae7c838acb88fd8fa27d055",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aeee2a37bfe3b4463ae7c838acb88fd8fa27d055`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zagierSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/zagierset--25720b92a79e6fa7a4944f5b.md) | 38 | `declaration-track:25720b92a79e6fa7a4944f5b72959220e6958b81d9083a25b4bfcbdf4cb38ef1` |
| 2 | `lemma` | [zagierSet_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/zagierset-lower-bound--2c301ba028c6adbc09fb1cfc.md) | 40 | `result-track:2c301ba028c6adbc09fb1cfc59aebf7bfc8e5a583e5caf27899674bd2fa1329c` |
| 3 | `lemma` | [zagierSet_upper_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/zagierset-upper-bound--a2b05d541388898ceea9028f.md) | 57 | `result-track:a2b05d541388898ceea9028f850e77a743ea723a80e06cf5fbf1a61646febf7e` |
| 4 | `lemma` | [zagierSet_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/zagierset-subset--591fca1e79a053cb59e717b5.md) | 63 | `result-track:591fca1e79a053cb59e717b5256142813b4caecfd44016fb625c22f133888f9a` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/instance--843cee86ac677125cb468e99.md) | 69 | `declaration-track:843cee86ac677125cb468e99858a29ec79bfea775637160aa85eec1a8caaa36a` |
| 6 | `def` | [obvInvo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/obvinvo--0ccab9eab8f0c3e5e2d2f7e9.md) | 82 | `declaration-track:0ccab9eab8f0c3e5e2d2f7e999d1c41715bde8b5a92fc04a688fff923623870a` |
| 7 | `theorem` | [obvInvo_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/obvinvo-sq--b74293d197d24c5e935027fb.md) | 86 | `result-track:b74293d197d24c5e935027fb43920d7227e0de9baa66469b7bae940523f90a79` |
| 8 | `theorem` | [sq_add_sq_of_nonempty_fixedPoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/sq-add-sq-of-nonempty-fixedpoints--24402e7b37af139a8b294225.md) | 90 | `result-track:24402e7b37af139a8b29422582b7a779154b12bde8275487eb2d8de030e06a0d` |
| 9 | `def` | [complexInvo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/complexinvo--6115eba8b709633962ebcf19.md) | 102 | `declaration-track:6115eba8b709633962ebcf19dc29f5a612a82780def112f0ebf17f89e840c5ba` |
| 10 | `theorem` | [complexInvo_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/complexinvo-sq--f8dc13acb35271c0dfeecdd9.md) | 117 | `result-track:f8dc13acb35271c0dfeecdd952b071a39d922f9bf266eafcbdeb38ad7728cc0a` |
| 11 | `theorem` | [eq_of_mem_fixedPoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/eq-of-mem-fixedpoints--afff3db945b89db50a9100a0.md) | 143 | `result-track:afff3db945b89db50a9100a04844c2e184b8000c2d531e18267c2017eb7012bc` |
| 12 | `def` | [singletonFixedPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/singletonfixedpoint--20b5ce44e44953255de54ef6.md) | 169 | `declaration-track:20b5ce44e44953255de54ef670ab751457aedc9316100126a305f57106b0e191` |
| 13 | `theorem` | [card_fixedPoints_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/card-fixedpoints-eq-one--68611e60e34214bc37213498.md) | 173 | `result-track:68611e60e34214bc372134983684cc901c769f6126b37c4c3ea0bb83559382e6` |
| 14 | `theorem` | [Nat.Prime.sq_add_sq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/declarations/nat-prime-sq-add-sq--2d849cee8c58dd046b1e7f59.md) | 192 | `result-track:2d849cee8c58dd046b1e7f59f47be2744f2b57345c8f93dde6a931b366706112` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
