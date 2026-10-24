# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variant6fd2582dd080b5b4e10afbc880e50ad3aac96ad1aa500a95afd0fc7838da9071

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "701063e400a28d300635d94d053455b3acdbd740",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6fd2582dd080b5b4e10afbc880e50ad3aac96ad1aa500a95afd0fc7838da9071.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6fd2582dd080b5b4e10afbc880e50ad3aac96ad1aa500a95afd0fc7838da9071.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6fd2582dd080b5b4e10afbc880e50ad3aac96ad1aa500a95afd0fc7838da9071.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `701063e400a28d300635d94d053455b3acdbd740`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6fd2582dd080b5b4e10afbc880e50ad3aac96ad1aa500a95afd0fc7838da9071.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variant6fd2582dd080b5b4e10afbc880e50ad3aac96ad1aa500a95afd0fc7838da9071.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.LinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [seminormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6fd2582dd080b5b4e10afbc880e50ad3aac96ad1aa500a95afd0fc7838da9071.lean/declarations/seminormedaddcommgroup--230247664e7309316aecda37.md) | 18 | `declaration-track:230247664e7309316aecda3749dc8cca45dcbebdaba28f71378f387c8b96f4ae` |
| 2 | `theorem` | [coe_norm](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6fd2582dd080b5b4e10afbc880e50ad3aac96ad1aa500a95afd0fc7838da9071.lean/declarations/coe-norm--6011e5e8f5ef8bdefd8a0d71.md) | 25 | `result-track:6011e5e8f5ef8bdefd8a0d717500911bd1a8e3b03b3a55a75a0b04d24168c254` |
| 3 | `theorem` | [norm_coe](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6fd2582dd080b5b4e10afbc880e50ad3aac96ad1aa500a95afd0fc7838da9071.lean/declarations/norm-coe--b7ad679c5f70d3dd3b142ac4.md) | 34 | `result-track:b7ad679c5f70d3dd3b142ac41888b70e5c8b1b578f6c430d1811700d694757c2` |
| 4 | `instance` | [normedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6fd2582dd080b5b4e10afbc880e50ad3aac96ad1aa500a95afd0fc7838da9071.lean/declarations/normedaddcommgroup--85ce52b21e5ea7940b8987b8.md) | 39 | `declaration-track:85ce52b21e5ea7940b8987b863e56e27e90cae291c323ddede1e35202145d39a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
