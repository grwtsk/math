# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ConditionallyCompleteOrder.Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ab0b7d8352c03944a8e0aa3b67fd5837922a4b7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ab0b7d8352c03944a8e0aa3b67fd5837922a4b7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean/declarations/instance--1c30da64d5054c0ecc577518.md) | 37 | `declaration-track:1c30da64d5054c0ecc577518aff26efd531bae6581b64a91c907ca23a15fe8d4` |
| 2 | `theorem` | [csSup_eq_greatestOfBdd](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean/declarations/cssup-eq-greatestofbdd--b7a823b1c7e048f3c23edfe1.md) | 58 | `result-track:b7a823b1c7e048f3c23edfe1b214ee0ae3c3cf8e4299bd00e7466c9b03c88c85` |
| 3 | `theorem` | [csSup_empty](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean/declarations/cssup-empty--4b7e414e40d578e68609a350.md) | 65 | `result-track:4b7e414e40d578e68609a35024cfe59a7ffb34a83e8af7f8ec5050156bac21b7` |
| 4 | `theorem` | [csSup_of_not_bddAbove](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean/declarations/cssup-of-not-bddabove--421888d52ab97ea2db7278a3.md) | 68 | `result-track:421888d52ab97ea2db7278a39603d53ba7febeb1c8652315570d777adcd03f26` |
| 5 | `theorem` | [csInf_eq_leastOfBdd](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean/declarations/csinf-eq-leastofbdd--c5e5fc12b6f85af7f742fb54.md) | 72 | `result-track:c5e5fc12b6f85af7f742fb5437d10dbfe457b09d71c759cb12f60d1ea4f1695f` |
| 6 | `theorem` | [csInf_empty](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean/declarations/csinf-empty--8775237fb6e279704f280f71.md) | 79 | `result-track:8775237fb6e279704f280f71deb1690126f84c7c44cdce55b437eb8e5af3baf1` |
| 7 | `theorem` | [csInf_of_not_bddBelow](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean/declarations/csinf-of-not-bddbelow--49c1da9e7464401d83db3179.md) | 82 | `result-track:49c1da9e7464401d83db317967aa426dc45f677311a074b8b1e6ae9765185a30` |
| 8 | `theorem` | [csSup_mem](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean/declarations/cssup-mem--75a520fc8cd2d55cd6dffff0.md) | 85 | `result-track:75a520fc8cd2d55cd6dffff0897b56f641d8c70abde77b35afceb86cd018fa48` |
| 9 | `theorem` | [csInf_mem](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean/declarations/csinf-mem--d3e9e5c4ecb196db8902b487.md) | 89 | `result-track:d3e9e5c4ecb196db8902b487c15936f134ce8f46ad57cfec6d644b17e1df5176` |
| 10 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d.lean/declarations/example--84256eb4dc846e79d4f27b7b.md) | 99 | `declaration-track:84256eb4dc846e79d4f27b7be3327b2555a3d5ec991e7db6836c1964a250b178` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
