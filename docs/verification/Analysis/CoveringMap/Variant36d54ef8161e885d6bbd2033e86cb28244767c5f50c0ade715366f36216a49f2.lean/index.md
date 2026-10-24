# Verification target: GRWTSK.Analysis.CoveringMap.Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f5e937551f540452cb5752d812aa666d5f409a1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/index.md) · [Full source](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f5e937551f540452cb5752d812aa666d5f409a1`.

Source path: `GRWTSK/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isAddQuotientCoveringMap_exp](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/declarations/isaddquotientcoveringmap-exp--d3ccf8dc9f934d9ac2d5aacb.md) | 39 | `result-track:d3ccf8dc9f934d9ac2d5aacb852c09268af6d9e0301c7bf6a536e20e80d5ec10` |
| 2 | `theorem` | [isCoveringMap_exp](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/declarations/iscoveringmap-exp--2b1c5dc47bbcb30ddcc3cd3e.md) | 50 | `result-track:2b1c5dc47bbcb30ddcc3cd3e5f5e89b70ff94b232232e76b2505b354e024b520` |
| 3 | `theorem` | [isCoveringMapOn_exp](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/declarations/iscoveringmapon-exp--70914a224f3de3e0e74788d7.md) | 53 | `result-track:70914a224f3de3e0e74788d7d36145a6425bc6ff7ef238512f2e00365775f4fa` |
| 4 | `theorem` | [Polynomial.isCoveringMapOn_eval](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/declarations/polynomial-iscoveringmapon-eval--d766358cae437c9f2ad34700.md) | 64 | `result-track:d766358cae437c9f2ad347002321f62287263c8b9c7ad1c1433ef625353a9fad` |
| 5 | `theorem` | [isCoveringMapOn_npow](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/declarations/iscoveringmapon-npow--364165a45c119d6ba077453d.md) | 73 | `result-track:364165a45c119d6ba077453d1ce96fa6201f42ded87ace46c0350c312b57126a` |
| 6 | `theorem` | [isCoveringMap_npow](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/declarations/iscoveringmap-npow--f085250f6b16d05ebea7f06d.md) | 81 | `result-track:f085250f6b16d05ebea7f06dd0f6f1e00b366e4d81bf4592631c76cf396b68a7` |
| 7 | `theorem` | [isCoveringMap_zpow](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/declarations/iscoveringmap-zpow--dc3e2df861c735ac4605e0a5.md) | 89 | `result-track:dc3e2df861c735ac4605e0a5ca882da151795cbec63ea1d98e7209f79be348bf` |
| 8 | `theorem` | [isCoveringMapOn_zpow](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/declarations/iscoveringmapon-zpow--69ccc9ff96098405cee5ce26.md) | 97 | `result-track:69ccc9ff96098405cee5ce26ba41400b39ee730728e5f9408b2528e265aeebdf` |
| 9 | `theorem` | [isQuotientCoveringMap_npow](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/declarations/isquotientcoveringmap-npow--018b8ed05fd2bcb1d01c687f.md) | 108 | `result-track:018b8ed05fd2bcb1d01c687feb4ec24d5d0c2cd053df7a04c8a62ac4124e46a1` |
| 10 | `theorem` | [Complex.isQuotientCoveringMap_npow](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/declarations/complex-isquotientcoveringmap-npow--24d0e2320644a0be8698e620.md) | 124 | `result-track:24d0e2320644a0be8698e6209c351f625b55a5ac2a844bf7a100a2361baaa85b` |
| 11 | `theorem` | [isQuotientCoveringMap_zpow](../../../../mathematics/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/declarations/isquotientcoveringmap-zpow--8919dcd1e7f5a8ef8487e46c.md) | 128 | `result-track:8919dcd1e7f5a8ef8487e46c1328d733b4ceeb5092482286ca6911e0392e610e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
