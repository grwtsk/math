# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ZagierTwoSquares.Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3392b6cc3b225e1177db085a997035c8bf23e5da",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3392b6cc3b225e1177db085a997035c8bf23e5da`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zagierSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/zagierset--939f9e6552a9bcdd2b87e17f.md) | 46 | `declaration-track:939f9e6552a9bcdd2b87e17f45902b230b9893298f295aea0ecf924dcb11d090` |
| 2 | `lemma` | [zagierSet_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/zagierset-lower-bound--281a29f2bdce094ae85c25bb.md) | 48 | `result-track:281a29f2bdce094ae85c25bbf97c25670dde1524c8893bf64f9486037887d363` |
| 3 | `lemma` | [zagierSet_upper_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/zagierset-upper-bound--0f71db1b519c86312c676514.md) | 65 | `result-track:0f71db1b519c86312c676514416285be89dd782d50762abe4f1fff4a6a934a2a` |
| 4 | `lemma` | [zagierSet_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/zagierset-subset--008b2ccaee46a5da19178a4b.md) | 71 | `result-track:008b2ccaee46a5da19178a4bf69f1f0e03aa1a14f937bb6f8d321d73b617a22b` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/instance--43a2c31122ffc67e3b520ce1.md) | 77 | `declaration-track:43a2c31122ffc67e3b520ce109682264932b87d18f11f61a87d7449fc99c3caf` |
| 6 | `def` | [obvInvo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/obvinvo--04f64ed3f512872535130562.md) | 90 | `declaration-track:04f64ed3f512872535130562d05ea903506875742f2768ea2ce048e6d3804654` |
| 7 | `theorem` | [obvInvo_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/obvinvo-sq--e6c41ee0eb479286824b9ea4.md) | 94 | `result-track:e6c41ee0eb479286824b9ea443a7c5785f802d60c6f1594b4820bbcad6024cae` |
| 8 | `theorem` | [sq_add_sq_of_nonempty_fixedPoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/sq-add-sq-of-nonempty-fixedpoints--125e9ef8accee429c9771ab7.md) | 98 | `result-track:125e9ef8accee429c9771ab7ae65bb455d1f1fb15e4385d644be89454c592008` |
| 9 | `def` | [complexInvo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/complexinvo--14de5633d195fdeb1cf2e3e5.md) | 110 | `declaration-track:14de5633d195fdeb1cf2e3e508a534af87ed98d862490783ee693676dd7581bf` |
| 10 | `theorem` | [complexInvo_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/complexinvo-sq--915904415bfe554793ec4043.md) | 125 | `result-track:915904415bfe554793ec40432bef290d9f93e694a60bfbacdd79e4791b79ef5b` |
| 11 | `theorem` | [eq_of_mem_fixedPoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/eq-of-mem-fixedpoints--d581c7b07f25072b0a8cdf04.md) | 151 | `result-track:d581c7b07f25072b0a8cdf046568636ef9a24fa464fd18dd510ddbff56ae601c` |
| 12 | `def` | [singletonFixedPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/singletonfixedpoint--4490db2a9a75427efd0ee114.md) | 177 | `declaration-track:4490db2a9a75427efd0ee1145c0a0b939cfaaf73275f56f9b42e56aa9ab0cce8` |
| 13 | `theorem` | [card_fixedPoints_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/card-fixedpoints-eq-one--4c8f557595ffe2624175ed44.md) | 181 | `result-track:4c8f557595ffe2624175ed441a8953e84624d9134320a5d4e67412a3f89b3ab0` |
| 14 | `theorem` | [Nat.Prime.sq_add_sq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/declarations/nat-prime-sq-add-sq--1039124891cac6eb39857647.md) | 200 | `result-track:1039124891cac6eb398576475a6ab6cc19f341e83be2a478f929d44d0c5db4b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
