# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reconstruction.Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5aa0b45c40aa5006d91bb7058aec5aedebb6bf6e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5aa0b45c40aa5006d91bb7058aec5aedebb6bf6e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [downwardClosure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/declarations/downwardclosure--446acef963a5de68627fb626.md) | 20 | `declaration-track:446acef963a5de68627fb626df15bf2ce55703e105f090919ad9d43e1360b79e` |
| 2 | `theorem` | [mem_downwardClosure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/declarations/mem-downwardclosure--09e55905db429fbb6cf36ddf.md) | 24 | `result-track:09e55905db429fbb6cf36ddf23fda020ca4a87a85acd97887c302868afb28f3a` |
| 3 | `theorem` | [restriction_subset_block](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/declarations/restriction-subset-block--f3dd2b39b3e5ffe24bab0b92.md) | 28 | `result-track:f3dd2b39b3e5ffe24bab0b924b70704d1a2e811dac1d82a746f2d90a4487e0e6` |
| 4 | `theorem` | [restriction_mem_downwardClosure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/declarations/restriction-mem-downwardclosure--ac25f6a76638adc4afe6a541.md) | 31 | `result-track:ac25f6a76638adc4afe6a541c0c4663e0d7ec3eb5873d8af326da58b049af8dc` |
| 5 | `theorem` | [reconstruct_of_cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/declarations/reconstruct-of-cover--e1751086622df0d2e02849fd.md) | 37 | `result-track:e1751086622df0d2e02849fdcb25602d1cf5b8786c8ec7ae4913987afb7598d8` |
| 6 | `theorem` | [mem_reconstruction_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/declarations/mem-reconstruction-iff--617e7f9df166c9e9324d3e9d.md) | 48 | `result-track:617e7f9df166c9e9324d3e9dc3eb0b7e7366881ca852ac07264f81be35f6e1ab` |
| 7 | `theorem` | [empty_mem_downwardClosure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/declarations/empty-mem-downwardclosure--14d3e79ea004d8b68c7fbb78.md) | 59 | `result-track:14d3e79ea004d8b68c7fbb78d65ef3d0fcfb3e0d64de47c66082676d4234fcb2` |
| 8 | `theorem` | [image_restriction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/declarations/image-restriction--f22e154915130f639880d811.md) | 65 | `result-track:f22e154915130f639880d811847add8113dff1ffa17231569f9b39c81b195490` |
| 9 | `theorem` | [image_difference](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/declarations/image-difference--629a1060fc44e46488ad26f7.md) | 69 | `result-track:629a1060fc44e46488ad26f72ab5791a599b8de4e67811b0b56d101e0b93c99e` |
| 10 | `theorem` | [image_cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/declarations/image-cover--c0ad19ffa3e0f1daf99d534f.md) | 80 | `result-track:c0ad19ffa3e0f1daf99d534f4d58518a9410b9f5fa214b3b6e2abcd8d2cf842e` |
| 11 | `theorem` | [equiv_reconstruct_of_cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37.lean/declarations/equiv-reconstruct-of-cover--29133affdc124b673749ba99.md) | 87 | `result-track:29133affdc124b673749ba999fc76d75887ca9b2f462f202ec46414ae6d28a1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
