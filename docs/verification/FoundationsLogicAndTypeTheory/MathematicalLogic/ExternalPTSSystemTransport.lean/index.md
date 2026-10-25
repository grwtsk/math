# Verification target: GRWTSK.Logic.ExternalPTSSystemTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3bea91547aafef9af4384effda7d94857b9aee2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/ExternalPTSSystemTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3bea91547aafef9af4384effda7d94857b9aee2`.

Source path: `GRWTSK/Logic/ExternalPTSSystemTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/ExternalPTSSystemTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.ExternalPTSBridge`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReductionEquiv](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/declarations/reductionequiv--70a2da9ce0677522dc8eba83.md) | 8 | `declaration-track:70a2da9ce0677522dc8eba8324d5808b60e9626ebd679c80e20d97bd76246ae7` |
| 2 | `def` | [symm](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/declarations/symm--714686d45ec22031677b648f.md) | 20 | `declaration-track:714686d45ec22031677b648f2d8b7753ff0bd4968b6aa75ff4d63965f8b73a09` |
| 3 | `theorem` | [normal_forward](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/declarations/normal-forward--bf9f50e6a9b04235478d95d0.md) | 28 | `result-track:bf9f50e6a9b04235478d95d0e41c654ebb5860c3e4b3ac53ebfd036deec16ee9` |
| 4 | `theorem` | [reflTransGen_forward](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/declarations/refltransgen-forward--dbf8ef7916e0ffbbae775a03.md) | 38 | `result-track:dbf8ef7916e0ffbbae775a03a0eee1aebe95dac756f3f3005cda79974726e9c5` |
| 5 | `theorem` | [weaklyNormalizing_forward](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/declarations/weaklynormalizing-forward--6f9b55cb51aec823eb96df84.md) | 48 | `result-track:6f9b55cb51aec823eb96df843f7f2f6bfbd7b4a0203bb2caa4c93c990a060b13` |
| 6 | `theorem` | [stronglyNormalizing_forward](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/declarations/stronglynormalizing-forward--856f2e2a4025caa61e6de619.md) | 56 | `result-track:856f2e2a4025caa61e6de619a0274e89c1cec3c8167e78554d9ca8324c58d9dd` |
| 7 | `theorem` | [weaklyNormalizing_backward](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/declarations/weaklynormalizing-backward--6d6e27c055b0f4d46120fc85.md) | 72 | `result-track:6d6e27c055b0f4d46120fc8552b41abcfc08cc305f1fdbb55cce46ec03888510` |
| 8 | `theorem` | [stronglyNormalizing_backward](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/declarations/stronglynormalizing-backward--c7877e10b59ce71eb9a6a90b.md) | 79 | `result-track:c7877e10b59ce71eb9a6a90be822b5e78a2c73d0477327f320be55faa3e9bcce` |
| 9 | `structure` | [SystemEquiv](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/declarations/systemequiv--7eae887ff83fc458fdeac6fe.md) | 88 | `declaration-track:7eae887ff83fc458fdeac6fe37e57479f42a5fded7d523456d3228ff25842165` |
| 10 | `theorem` | [systemWeak_forward](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/declarations/systemweak-forward--41a4e3b22b87dfc7048bb970.md) | 102 | `result-track:41a4e3b22b87dfc7048bb9708f4aade36bfd23f1b7db86863aa514f6ca64c3ed` |
| 11 | `theorem` | [systemStrong_backward](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/declarations/systemstrong-backward--d64abc1f6695369742484f3b.md) | 116 | `result-track:d64abc1f6695369742484f3b2d5272c597716cb47a80c1c60ecf2eb680f80dd5` |
| 12 | `def` | [transportWeakToStrong](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/declarations/transportweaktostrong--b7e819968fe591200f64f366.md) | 126 | `declaration-track:b7e819968fe591200f64f3664b1e0938f9e260ce01d4fc734a9945512e628889` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
