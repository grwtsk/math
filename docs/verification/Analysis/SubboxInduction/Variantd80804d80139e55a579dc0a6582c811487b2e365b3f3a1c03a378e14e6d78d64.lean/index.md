# Verification target: GRWTSK.Analysis.SubboxInduction.Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15dc35a78b1125e32a3b1a70de19b79d51bf75ee",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/index.md) · [Full source](../../../../mathematics/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15dc35a78b1125e32a3b1a70de19b79d51bf75ee`.

Source path: `GRWTSK/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Box.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/declarations/splitcenterbox--006bfb301a4ab637887c87f3.md) | 53 | `declaration-track:006bfb301a4ab637887c87f3409906f6814fc4993eb2f8cecfaf5e8fee81eb6c` |
| 2 | `theorem` | [mem_splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/declarations/mem-splitcenterbox--92dace65d268f2c6f9349208.md) | 61 | `result-track:92dace65d268f2c6f9349208f878b77de0f2fc7fae2c25722895471b1aca01db` |
| 3 | `theorem` | [splitCenterBox_le](../../../../mathematics/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/declarations/splitcenterbox-le--aad479b1b432bbce07035a42.md) | 73 | `result-track:aad479b1b432bbce07035a42048d87161221257e6bacf91c5c9958417b9d380b` |
| 4 | `theorem` | [disjoint_splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/declarations/disjoint-splitcenterbox--794cd5388e7fe3d07184be60.md) | 77 | `result-track:794cd5388e7fe3d07184be60feafca4bca0304fafd0b891f90f181be3d81fdfc` |
| 5 | `theorem` | [injective_splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/declarations/injective-splitcenterbox--aa3cae5e20bdcfefcb6d062f.md) | 86 | `result-track:aa3cae5e20bdcfefcb6d062f06954fc68bfdcfc690660f0d5625066632d9f90d` |
| 6 | `theorem` | [exists_mem_splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/declarations/exists-mem-splitcenterbox--284ea45711d9cb2b5a8c2aa4.md) | 91 | `result-track:284ea45711d9cb2b5a8c2aa4c8ba8072779c0e67ac041ed70c4a1ccb26ebfc89` |
| 7 | `def` | [splitCenterBoxEmb](../../../../mathematics/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/declarations/splitcenterboxemb--765da558907ab8cb464612c6.md) | 98 | `declaration-track:765da558907ab8cb464612c645ea0e624307fe7674d170d167ba0d36eb30f367` |
| 8 | `theorem` | [iUnion_coe_splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/declarations/iunion-coe-splitcenterbox--824df29fd3269aab61e21179.md) | 103 | `result-track:824df29fd3269aab61e21179236d44d369e40a25253371423ac8b3c4a976c121` |
| 9 | `theorem` | [upper_sub_lower_splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/declarations/upper-sub-lower-splitcenterbox--6560f3d6c2bfbf3dc39329a9.md) | 109 | `result-track:6560f3d6c2bfbf3dc39329a94f588e0fb61cd8ea085f88a9a87b29c5fba6f89c` |
| 10 | `theorem` | [subbox_induction_on'](../../../../mathematics/Analysis/SubboxInduction/Variantd80804d80139e55a579dc0a6582c811487b2e365b3f3a1c03a378e14e6d78d64.lean/declarations/subbox-induction-on--6b719a65d268d315c6d96189.md) | 130 | `result-track:6b719a65d268d315c6d961891d2f3f07ec3d0b0f1a413f7b20e4f921985b5487` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
