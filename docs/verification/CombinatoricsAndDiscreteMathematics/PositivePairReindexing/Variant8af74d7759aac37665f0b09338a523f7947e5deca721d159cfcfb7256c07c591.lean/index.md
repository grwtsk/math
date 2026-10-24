# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PositivePairReindexing.Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef1464a3429547aba121b5cddf164f75d2a3c8fd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef1464a3429547aba121b5cddf164f75d2a3c8fd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ComplexDirichletSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatDivisors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveFactorPair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/declarations/positivefactorpair--b14b229048db75447960c8fa.md) | 30 | `declaration-track:b14b229048db75447960c8fa80da67c100c8771012daee39e1bc1bdeff9e6486` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/declarations/instance--b65af539b0cf084be9da3c8e.md) | 38 | `declaration-track:b65af539b0cf084be9da3c8e1b019c6fa05ff0aa3002d6a2a21a7749946de2ef` |
| 3 | `def` | [left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/declarations/left--ab5d6bab55d6f64166188794.md) | 53 | `declaration-track:ab5d6bab55d6f6416618879407825f736445099e23273a063a5b746ed7fbeeef` |
| 4 | `def` | [right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/declarations/right--6af747ce4df079bd74c2380a.md) | 58 | `declaration-track:6af747ce4df079bd74c2380a2e324012a5279293ae3a70af3480c2d8d3d285f7` |
| 5 | `theorem` | [left_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/declarations/left-pos--b58987359c734b585542d653.md) | 63 | `result-track:b58987359c734b585542d653bcc928e4e3d7c1966306a4d813b90a358a68678e` |
| 6 | `theorem` | [right_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/declarations/right-pos--61201323d83e0937c82938d7.md) | 69 | `result-track:61201323d83e0937c82938d7fc2e6e3bbb869e8d68640f8e56f332817d765c14` |
| 7 | `theorem` | [mul_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/declarations/mul-eq--a00f67ba6af4df81936dc781.md) | 78 | `result-track:a00f67ba6af4df81936dc781570d46b0016704f952d19da3adf656d117610f98` |
| 8 | `def` | [productFiberSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/declarations/productfibersum--fc41f0ff8bff9dd9bf6b1dd6.md) | 86 | `declaration-track:fc41f0ff8bff9dd9bf6b1dd6ee4ac92cbdaddc31f41c51559f31954750f5751a` |
| 9 | `theorem` | [productFiberSum_eq_sum_positive_pairs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/declarations/productfibersum-eq-sum-positive-pairs--642154aaa59b08c471285859.md) | 97 | `result-track:642154aaa59b08c471285859b2dda034ceb77072a769ec093cd61deb785bef21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
