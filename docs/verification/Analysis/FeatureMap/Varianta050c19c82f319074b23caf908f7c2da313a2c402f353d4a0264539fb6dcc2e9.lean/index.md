# Verification target: GRWTSK.Analysis.FeatureMap.Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "206f9206251127f577622e3b2c1cb1fc45b25d6b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean/index.md) · [Full source](../../../../mathematics/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `206f9206251127f577622e3b2c1cb1fc45b25d6b`.

Source path: `GRWTSK/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Hilbert.Completion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelVector](../../../../mathematics/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean/declarations/kernelvector--bf1f8f4968f6564b63ed1236.md) | 23 | `declaration-track:bf1f8f4968f6564b63ed123623d04ffd9879f6145736caf2d7288d7bb1ea6332` |
| 2 | `def` | [rawToKernelSpace](../../../../mathematics/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean/declarations/rawtokernelspace--ccef8ce405429414afbcdd91.md) | 30 | `declaration-track:ccef8ce405429414afbcdd912a71342a601e1def171068055570a1f1153f1dff` |
| 3 | `theorem` | [rawToKernelSpace_basisVector](../../../../mathematics/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean/declarations/rawtokernelspace-basisvector--27d4a43f3f7acc54b1a1eb65.md) | 35 | `result-track:27d4a43f3f7acc54b1a1eb65b0426e57f8953fe754c3b72d1a710cb0505538dc` |
| 4 | `theorem` | [inner_rawToKernelSpace](../../../../mathematics/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean/declarations/inner-rawtokernelspace--4628caf0ee8b23ff43f83670.md) | 42 | `result-track:4628caf0ee8b23ff43f83670b63b8bd57a0541df59e2281eeb981e9c9ce37260` |
| 5 | `theorem` | [inner_kernelVector](../../../../mathematics/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean/declarations/inner-kernelvector--18f21b828ed9e4ec221be2ff.md) | 53 | `result-track:18f21b828ed9e4ec221be2ff648d5f2c345dcd1502603dab1e57e2d4958376c0` |
| 6 | `theorem` | [norm_kernelVector_sq](../../../../mathematics/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean/declarations/norm-kernelvector-sq--011fbcc9b260e7e8b209839f.md) | 62 | `result-track:011fbcc9b260e7e8b209839f0048d10e00c014a365b5bcf9c2030809671d117c` |
| 7 | `def` | [kernelSpan](../../../../mathematics/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean/declarations/kernelspan--db4ffe7b1da5edf97181a996.md) | 69 | `declaration-track:db4ffe7b1da5edf97181a9963d107e80c14148af8b9f77e2e5d02cf6fc41c74c` |
| 8 | `theorem` | [rawToKernelSpace_mem_span](../../../../mathematics/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean/declarations/rawtokernelspace-mem-span--e97df4d013093a3c4aaa5bfc.md) | 73 | `result-track:e97df4d013093a3c4aaa5bfc24d24320666bc5655b7b99db3e019a88a0b68fe6` |
| 9 | `theorem` | [kernelVector_denseSpan](../../../../mathematics/Analysis/FeatureMap/Varianta050c19c82f319074b23caf908f7c2da313a2c402f353d4a0264539fb6dcc2e9.lean/declarations/kernelvector-densespan--b15a31205d08277925c29daf.md) | 97 | `result-track:b15a31205d08277925c29daf6ba6fe87b8499913c84ae8ea3333e586a131e4ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
