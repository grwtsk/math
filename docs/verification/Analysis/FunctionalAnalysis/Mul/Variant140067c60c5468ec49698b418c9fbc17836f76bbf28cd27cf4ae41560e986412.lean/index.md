# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Mul.Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adf9b51bcfce0248e94256bb61b01587b8816372",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adf9b51bcfce0248e94256bb61b01587b8816372`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monovary` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Function` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ConvexOn.smul'](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/convexon-smul--a785308e1c33bfbeed6ad5ca.md) | 33 | `result-track:a785308e1c33bfbeed6ad5cac78f31d16eac27d4745966a325b996e7a1c15e71` |
| 2 | `lemma` | [ConcaveOn.smul'](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/concaveon-smul--86dc1f5df7c22406b30004ea.md) | 52 | `result-track:86dc1f5df7c22406b30004ea6ab0fa03d59334db65627c5ad868fa630bc1a23a` |
| 3 | `lemma` | [ConvexOn.smul''](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/convexon-smul--0ac9a39566bbfb1d3d796fe8.md) | 72 | `result-track:0ac9a39566bbfb1d3d796fe86aab2bc3ecbbef45c43ca340ce41866d6ee57b69` |
| 4 | `lemma` | [ConcaveOn.smul''](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/concaveon-smul--ed708036549399cd33e792d8.md) | 79 | `result-track:ed708036549399cd33e792d89fdf5cc112229437af1b26501c1008c9ff9e67c7` |
| 5 | `lemma` | [ConvexOn.smul_concaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/convexon-smul-concaveon--18ae0035f21caf8b4841a45e.md) | 85 | `result-track:18ae0035f21caf8b4841a45e647c139738eb1eeae370d188b25a3ca319ab7e46` |
| 6 | `lemma` | [ConcaveOn.smul_convexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/concaveon-smul-convexon--7f3be27f43fb4ff988ece0cc.md) | 91 | `result-track:7f3be27f43fb4ff988ece0cc8617e8b8cd0780220ca8703d9eceefc04ce16fc7` |
| 7 | `lemma` | [ConvexOn.smul_concaveOn'](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/convexon-smul-concaveon--1a5e7518b622c1503942e00d.md) | 97 | `result-track:1a5e7518b622c1503942e00dc41b4bf386c5ed9067cf22c9f025a66a2a980bd0` |
| 8 | `lemma` | [ConcaveOn.smul_convexOn'](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/concaveon-smul-convexon--b8e423549f3e82b07680e16e.md) | 103 | `result-track:b8e423549f3e82b07680e16e9cc7cb8cc6d796ca68292fa4e848f01457a55d53` |
| 9 | `lemma` | [ConvexOn.mul](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/convexon-mul--1623a68daa7836964318822f.md) | 111 | `result-track:1623a68daa7836964318822f1258c9fb8af9df6481d71b1f3f4aa1b8c5c0b0d4` |
| 10 | `lemma` | [ConcaveOn.mul](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/concaveon-mul--0083ee05f14ed823e50eb450.md) | 115 | `result-track:0083ee05f14ed823e50eb450e5638e0b784b5bf364fbd19c071776206f2ec39f` |
| 11 | `lemma` | [ConvexOn.mul'](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/convexon-mul--163f91a405459b0693d4d25c.md) | 119 | `result-track:163f91a405459b0693d4d25c3944c7583c1911077a99ed36bdce119dfd13ee28` |
| 12 | `lemma` | [ConcaveOn.mul'](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/concaveon-mul--f07778f6950a9ee8ce7c3f2e.md) | 123 | `result-track:f07778f6950a9ee8ce7c3f2e00bb3a47d4e3d12ff3424fbb1ff1fea22779969e` |
| 13 | `lemma` | [ConvexOn.mul_concaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/convexon-mul-concaveon--70a8facfbcb03ed073595b68.md) | 127 | `result-track:70a8facfbcb03ed073595b68555b738b974918aa1ab40e7485ac1ef63877e5a8` |
| 14 | `lemma` | [ConcaveOn.mul_convexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/concaveon-mul-convexon--43277e383e888354abf2ca99.md) | 131 | `result-track:43277e383e888354abf2ca99ca4e56308512785d4d34adfe473c559166ac0945` |
| 15 | `lemma` | [ConvexOn.mul_concaveOn'](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/convexon-mul-concaveon--6d3c01899bd7254b7979570e.md) | 135 | `result-track:6d3c01899bd7254b7979570ef8a60a345d9eb0bd148f0e92ef84769136d865d0` |
| 16 | `lemma` | [ConcaveOn.mul_convexOn'](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/concaveon-mul-convexon--cd1cfc69f47b9294c48129cc.md) | 139 | `result-track:cd1cfc69f47b9294c48129ccef236a0f777d8e23ac959708c2ff2ca062be760a` |
| 17 | `lemma` | [ConvexOn.pow](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/convexon-pow--629ec9412bb3286e7a71fe9f.md) | 143 | `result-track:629ec9412bb3286e7a71fe9fe4ba40152a92d7551cfeae9e889e1721d529dbd6` |
| 18 | `lemma` | [convexOn_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/convexon-pow--c65b6ae48a3455801bb357d0.md) | 152 | `result-track:c65b6ae48a3455801bb357d06fd564bfc3739f37ab39acc6fcd1ea11be1cb2a9` |
| 19 | `lemma` | [Even.convexOn_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/even-convexon-pow--a102cd6a469e2d58572ea63e.md) | 156 | `result-track:a102cd6a469e2d58572ea63ef82bf6ffb4a32d04454960c34f00ab8cb2f6c996` |
| 20 | `lemma` | [convexOn_zpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Mul/Variant140067c60c5468ec49698b418c9fbc17836f76bbf28cd27cf4ae41560e986412.lean/declarations/convexon-zpow--d92c667c046abb3d4a5182ab.md) | 172 | `result-track:d92c667c046abb3d4a5182abf5025f8972e87680fc97c1f808251dbb44d3d29a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
