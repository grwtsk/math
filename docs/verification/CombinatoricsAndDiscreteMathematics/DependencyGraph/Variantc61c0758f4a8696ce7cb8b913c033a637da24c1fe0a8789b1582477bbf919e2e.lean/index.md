# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DependencyGraph.Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e27da6af2452f986a7fce03825b9d0ae741cfbdf",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e27da6af2452f986a7fce03825b9d0ae741cfbdf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Union` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DependencyGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/dependencygraph--797eb240fbc43cc54159ee39.md) | 23 | `declaration-track:797eb240fbc43cc54159ee3918d9081fc82cbd918dd312171ecf1aeff22a9407` |
| 2 | `def` | [DependencyGraph.ofRank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/dependencygraph-ofrank--ad6775e76e6bf4ee97cfed38.md) | 37 | `declaration-track:ad6775e76e6bf4ee97cfed381546f61a3cf3a95c41bc5f4915c95daed0401c16` |
| 3 | `def` | [DirectDep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/directdep--c266d4d0a635c4153a467182.md) | 56 | `declaration-track:c266d4d0a635c4153a4671827f7c2f5a4cd6ffb27fcebd26a4eeeea314482404` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/instance--8c4a7a35a166dfc262193095.md) | 59 | `declaration-track:8c4a7a35a166dfc262193095ecad36e069cf4b9a545a7f373b62dba8f604fdfa` |
| 5 | `abbrev` | [DepReachable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/depreachable--b4d134d8a9140af3d4adc1df.md) | 63 | `declaration-track:b4d134d8a9140af3d4adc1dff41be591b0d55949a2e6738084a9f3a4edf5b8a8` |
| 6 | `def` | [dependencyCone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/dependencycone--f1992a895a67efd70e167044.md) | 70 | `declaration-track:f1992a895a67efd70e1670447b3d6bc38f39f0e13dd973d7a3698fa7448b524a` |
| 7 | `theorem` | [dependencyCone_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/dependencycone-eq--170ed2f4d041571dcf95f60e.md) | 76 | `result-track:170ed2f4d041571dcf95f60efc1fe065b606971ac8e520860da75609f472d199` |
| 8 | `theorem` | [mem_dependencyCone_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/mem-dependencycone-iff--975c849722bd7f4a7bdeddfc.md) | 83 | `result-track:975c849722bd7f4a7bdeddfc6c73bd72bb06ee93e9b1b9b36ef48ba71bf30d6f` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/instance--4367277db1230bf3cbec1510.md) | 100 | `declaration-track:4367277db1230bf3cbec1510d702372daccec882bfbf91a00e334e0b3ec63d87` |
| 10 | `def` | [depClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/depclosure--cde1e85cea38cd740ab87eb4.md) | 105 | `declaration-track:cde1e85cea38cd740ab87eb46ae4a7f6243ad376a70b490b3e1ec0fdc34b83e5` |
| 11 | `theorem` | [mem_depClosure_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/mem-depclosure-iff--5e1f7fd53531a6e544480c72.md) | 109 | `result-track:5e1f7fd53531a6e544480c7299aa3831f13e9a53158f227f5029a2e0f49f4664` |
| 12 | `theorem` | [root_mem_depClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/root-mem-depclosure--a0950d67ba572842026321ac.md) | 116 | `result-track:a0950d67ba572842026321acaab94c2b3a93e3d05fce255185dc9f946e599bcc` |
| 13 | `theorem` | [dependency_mem_depClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/dependency-mem-depclosure--183384e7a8a32705c1946374.md) | 123 | `result-track:183384e7a8a32705c1946374a0dd14b469de8d9ec91b3302e29060a13fb53f16` |
| 14 | `theorem` | [depClosure_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/depclosure-minimal--79cdd21ac9e022fffb9e89e1.md) | 135 | `result-track:79cdd21ac9e022fffb9e89e1ff39140493add65c9fc6bb8bbedb0c9ab3971de1` |
| 15 | `theorem` | [depClosure_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/depclosure-mono--dd6c3db73523a9035f4ce769.md) | 152 | `result-track:dd6c3db73523a9035f4ce769ab2855e068f4c78e45f5d3689851dd115dc1ae88` |
| 16 | `theorem` | [depClosure_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/depclosure-idempotent--2ea2981221517265b5c9e47b.md) | 162 | `result-track:2ea2981221517265b5c9e47bbf04e07c8084da68875011078d93cbdca3ed1e55` |
| 17 | `def` | [DependencyEnv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/dependencyenv--e850b1eaf2652b1a93899dfd.md) | 175 | `declaration-track:e850b1eaf2652b1a93899dfd252d203ac1280c51dc309739f1264386e7e62426` |
| 18 | `structure` | [Tenant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/tenant--2cd14e73252b1cef524a1b03.md) | 182 | `declaration-track:2cd14e73252b1cef524a1b038e495d7cc9fb998c79fca3c9b6e44abcf4aaf634` |
| 19 | `def` | [Environment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/environment--ce0ae3b870a2787664e318b0.md) | 188 | `declaration-track:ce0ae3b870a2787664e318b04b364c5b958d2800e7bf9f649c1cd91d78254fea` |
| 20 | `def` | [RootExports](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/rootexports--b41c0fd49f6c30fc96b35bee.md) | 195 | `declaration-track:b41c0fd49f6c30fc96b35bee0d25ac17b017955e9de49246499640f36522b0bb` |
| 21 | `def` | [Environment.toRootExports](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/declarations/environment-torootexports--c6e5d5a614b6980f54c88f9b.md) | 202 | `declaration-track:c6e5d5a614b6980f54c88f9b906ba862d81847ec6451648c406a3775e0071346` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
