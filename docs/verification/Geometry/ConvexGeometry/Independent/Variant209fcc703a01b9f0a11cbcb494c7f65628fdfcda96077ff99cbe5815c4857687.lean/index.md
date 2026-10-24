# Verification target: GRWTSK.Geometry.ConvexGeometry.Independent.Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e884c4536a14a09ea9beeff54c3be7fa7d814a80",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e884c4536a14a09ea9beeff54c3be7fa7d814a80`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Extreme` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConvexIndependent](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/convexindependent--81baf50e0981aba6da6f4932.md) | 61 | `declaration-track:81baf50e0981aba6da6f4932e26b5cace01f9063198f26fe7d3759e63b1d31ff` |
| 2 | `theorem` | [Subsingleton.convexIndependent](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/subsingleton-convexindependent--48039b34322ee485e4ac1d7d.md) | 67 | `result-track:48039b34322ee485e4ac1d7d1dcb5c143594015a20cf5625d5972450c2594626` |
| 3 | `theorem` | [ConvexIndependent.injective](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/convexindependent-injective--b6666a817a7bbe3f14896fc3.md) | 74 | `result-track:b6666a817a7bbe3f14896fc36bcbb9cc1ebd1f566fc7df191cbd8dd7ab52d7c6` |
| 4 | `theorem` | [ConvexIndependent.comp_embedding](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/convexindependent-comp-embedding--db62f6a5a717e0d382dc2ab0.md) | 82 | `result-track:db62f6a5a717e0d382dc2ab021f38dc0cbe1dfe6837b097645791eff828c4590` |
| 5 | `theorem` | [ConvexIndependent.subtype](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/convexindependent-subtype--b648870d13e82c7c95505ec9.md) | 90 | `result-track:b648870d13e82c7c95505ec9b35c74e3a296774e5291ae9d4f4085e545bb9744` |
| 6 | `theorem` | [ConvexIndependent.range](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/convexindependent-range--4ab17aa7c3d8b0be5a1b1103.md) | 95 | `result-track:4ab17aa7c3d8b0be5a1b1103a3c5b2b4f8af5c589f7d8aa98cab9a9f7961b11f` |
| 7 | `theorem` | [ConvexIndependent.mono](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/convexindependent-mono--13164a2f1ec6b89b167b5b8c.md) | 105 | `result-track:13164a2f1ec6b89b167b5b8c7800842587722ab032286dc5875a7bc557efa099` |
| 8 | `theorem` | [Function.Injective.convexIndependent_iff_set](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/function-injective-convexindependent-iff-set--88f18c1afe3328694ad717f6.md) | 110 | `result-track:88f18c1afe3328694ad717f66077b1c1e6a639a66d8dd276852bc587b7759b2c` |
| 9 | `theorem` | [ConvexIndependent.mem_convexHull_iff](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/convexindependent-mem-convexhull-iff--fbca3559e9aea09b7b4bb629.md) | 121 | `result-track:fbca3559e9aea09b7b4bb6298facde88e76799d09535f1252015fda50fcb7100` |
| 10 | `theorem` | [convexIndependent_iff_notMem_convexHull_diff](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/convexindependent-iff-notmem-convexhull-diff--8934060a29b80c3fbeee033f.md) | 127 | `result-track:8934060a29b80c3fbeee033f479b30b0cdb4b3558e074b66afee2858440c3ea4` |
| 11 | `theorem` | [convexIndependent_set_iff_inter_convexHull_subset](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/convexindependent-set-iff-inter-convexhull-subset--d5278313e8fa43f403a780e6.md) | 140 | `result-track:d5278313e8fa43f403a780e69c9e1b95af295dc81eb9528b3b3dc761d7b779f4` |
| 12 | `theorem` | [convexIndependent_set_iff_notMem_convexHull_diff](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/convexindependent-set-iff-notmem-convexhull-diff--e196c9d02e9828a493ae9234.md) | 153 | `result-track:e196c9d02e9828a493ae92340b346a4183bd90b60ce390a7875a55e62c5dbbf5` |
| 13 | `theorem` | [convexIndependent_iff_finset](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/convexindependent-iff-finset--39541f56ca381e75bbd7ed50.md) | 175 | `result-track:39541f56ca381e75bbd7ed502f0f7460d7284fcff22d98b1b7f4200a62d16c4b` |
| 14 | `theorem` | [Convex.convexIndependent_extremePoints](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/declarations/convex-convexindependent-extremepoints--2e841dcc398bfe6be453f574.md) | 199 | `result-track:2e841dcc398bfe6be453f57475acda365edd8ee6a306a723373002dbf2ddb53e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
