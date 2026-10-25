# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithInv.Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4adfa71e76c3a2587167067aaa1ddd1c1ed295a8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4adfa71e76c3a2587167067aaa1ddd1c1ed295a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkUpperBoundWithInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/declarations/checkupperboundwithinv--de9ef0da74b690531f934bef.md) | 59 | `declaration-track:de9ef0da74b690531f934bef25ea73d4cc49276bafcf9dcf200dae223eca9166` |
| 2 | `def` | [checkLowerBoundWithInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/declarations/checklowerboundwithinv--116faf253e27a48c8b11fc7e.md) | 67 | `declaration-track:116faf253e27a48c8b11fc7e673a021a48da31c23a1ecdc009b64ca765bf8fad` |
| 3 | `def` | [checkStrictUpperBoundWithInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/declarations/checkstrictupperboundwithinv--c0a07169986c25fa420d00f0.md) | 74 | `declaration-track:c0a07169986c25fa420d00f011c903ae7c9a80a3867c749593f2f2b5f697e4db` |
| 4 | `def` | [checkStrictLowerBoundWithInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/declarations/checkstrictlowerboundwithinv--debe458bf8f0a57ffcc8d0e6.md) | 81 | `declaration-track:debe458bf8f0a57ffcc8d0e6618545e5fb8004f421f08a620c2485749a6021fc` |
| 5 | `theorem` | [verify_upper_bound_withInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/declarations/verify-upper-bound-withinv--5918e2d2d0a53dfc4982d784.md) | 89 | `result-track:5918e2d2d0a53dfc4982d78491814f791bfe192c9ae089c692232aff35968bf2` |
| 6 | `theorem` | [verify_lower_bound_withInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/declarations/verify-lower-bound-withinv--1df0952ae84d95647f7161c7.md) | 101 | `result-track:1df0952ae84d95647f7161c7fef288112ac328640acdbb436d544ee0a0a230d6` |
| 7 | `theorem` | [verify_strict_upper_bound_withInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/declarations/verify-strict-upper-bound-withinv--e79e25c27afaf28fbfbd9270.md) | 113 | `result-track:e79e25c27afaf28fbfbd927086403dfa88e8cdb0c035f924475b2a985d7586bb` |
| 8 | `theorem` | [verify_strict_lower_bound_withInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/declarations/verify-strict-lower-bound-withinv--30f0af1b9b41b39822862210.md) | 129 | `result-track:30f0af1b9b41b3982286221000a1f8f1ab4f3cfab17f1e284851926e31b09182` |
| 9 | `theorem` | [verify_upper_bound_Icc_withInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/declarations/verify-upper-bound-icc-withinv--5816b388b6e49e1ea43f7fd2.md) | 147 | `result-track:5816b388b6e49e1ea43f7fd2ede5cb15ea0c4cf381dcee99d2f89c55969477fb` |
| 10 | `theorem` | [verify_lower_bound_Icc_withInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/declarations/verify-lower-bound-icc-withinv--a6908e5d36706fe6052459eb.md) | 157 | `result-track:a6908e5d36706fe6052459eb6a758a51c3680d9c5dd38e01d84a712cfe5d2849` |
| 11 | `theorem` | [verify_strict_upper_bound_Icc_withInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/declarations/verify-strict-upper-bound-icc-withinv--ec430c033f01f1760f924632.md) | 167 | `result-track:ec430c033f01f1760f92463250397e9b10cbb32a19d6838c0044a6916099f902` |
| 12 | `theorem` | [verify_strict_lower_bound_Icc_withInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/declarations/verify-strict-lower-bound-icc-withinv--3fc4c61dde9ff40a2eda1a19.md) | 177 | `result-track:3fc4c61dde9ff40a2eda1a19bb2b66568791df9e02134dbabe76ae8b07baac2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
