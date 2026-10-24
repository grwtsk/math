# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommGrp.Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbb8c9c94cd13d9bc937b58f6df0e925577bd600",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbb8c9c94cd13d9bc937b58f6df0e925577bd600`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [commGrpCommGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean/declarations/commgrpcommgroup--2eff0750e50288eefa71c9cc.md) | 30 | `declaration-track:2eff0750e50288eefa71c9cc1895661ddf742971a9332480a96dd615264431d0` |
| 2 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean/declarations/functor--7a82ff365abb374827645bcd.md) | 36 | `declaration-track:7a82ff365abb374827645bcdd10ecbc0e26854156c1b9afaec36ecf31d90a61d` |
| 3 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean/declarations/inverse--56c72cc3c040a2ba3bf17db4.md) | 41 | `declaration-track:56c72cc3c040a2ba3bf17db4ecd5a1fcf0d3fd1b40574b81ff0d7546d5771553` |
| 4 | `theorem` | [inverse_obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean/declarations/inverse-obj-x--32176b40e6ea24e7514e1347.md) | 52 | `result-track:32176b40e6ea24e7514e13479ba3bf42b9f91abae645f582ad0aa6c616eed76b` |
| 5 | `theorem` | [inverse_obj_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean/declarations/inverse-obj-one--6b16defcb5d0ac3c40dc39b9.md) | 55 | `result-track:6b16defcb5d0ac3c40dc39b969419cfc658590a8a092572de09c9742695f5f30` |
| 6 | `theorem` | [inverse_obj_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean/declarations/inverse-obj-mul--17b7cedeecbd3d64425a76f0.md) | 58 | `result-track:17b7cedeecbd3d64425a76f0060706551597fd775fb385b7b4446808d15a6804` |
| 7 | `theorem` | [inverse_obj_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean/declarations/inverse-obj-inv--d59ac7618b4b6c310c9e93d1.md) | 63 | `result-track:d59ac7618b4b6c310c9e93d1ce2dc67afd6fa070cc0cebca38bd8e599f6063b7` |
| 8 | `def` | [commGrpTypeEquivalenceCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean/declarations/commgrptypeequivalencecommgrp--e04793eda17cf6366f252e04.md) | 69 | `declaration-track:e04793eda17cf6366f252e04336ca02099ee62ec12734b3fb0db2efa78a3c69f` |
| 9 | `def` | [commGrpTypeEquivalenceCommGrpForgetGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean/declarations/commgrptypeequivalencecommgrpforgetgrp--01ced1ac8b03f2128a78e771.md) | 80 | `declaration-track:01ced1ac8b03f2128a78e771a58d43f3937b309e35fb4b14029fe9ea3ef63f4a` |
| 10 | `def` | [commGrpTypeEquivalenceCommGrpForgetCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd.lean/declarations/commgrptypeequivalencecommgrpforgetcommmon--c5064cf850d2b3fc4f714b67.md) | 88 | `declaration-track:c5064cf850d2b3fc4f714b673d7087fb3c2eb52fc9f1f5e68b2b6ac38f7830a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
