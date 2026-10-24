# Verification target: GRWTSK.Algebra.GroupTheory.Sigma.Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "650a5f3be8ebdb78f99f0cabb1ee44f49dab9a41",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `650a5f3be8ebdb78f99f0cabb1ee44f49dab9a41`.

Source path: `GRWTSK/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/declarations/instance--c22b9565e98d223b498cf207.md) | 34 | `declaration-track:c22b9565e98d223b498cf2072e9736b99718d278887cd499ee08b0442c299e20` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/declarations/smul-def--dbf436a27ca737f16f8724ac.md) | 38 | `result-track:dbf436a27ca737f16f8724ace0228945345ffc1a0f32eba8ee49fce239bb16ed` |
| 3 | `theorem` | [smul_mk](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/declarations/smul-mk--b5e5f91d000fc860747300de.md) | 42 | `result-track:b5e5f91d000fc860747300de42161e60d9b1dd00a6bccd7c850204ee97a34da2` |
| 4 | `instance` | [instIsScalarTowerOfSMul](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/declarations/instisscalartowerofsmul--9e962162a622045f5c817529.md) | 46 | `declaration-track:9e962162a622045f5c817529722183c8ab339abcda3f86b604cfbcf9cd598247` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/declarations/instance--77532347bf89ce0a5889edd8.md) | 53 | `declaration-track:77532347bf89ce0a5889edd87b0ac746648503741060bd5a49accffcebcf927b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/declarations/instance--ea99adf139b8c894c68bcc32.md) | 59 | `declaration-track:ea99adf139b8c894c68bcc329282c111120f0654542b0370f00b9da810c0c04a` |
| 7 | `theorem` | [FaithfulSMul'](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/declarations/faithfulsmul--418064aba0e4e219e3a98800.md) | 66 | `result-track:418064aba0e4e219e3a98800ea1f09cc9418a0fbc31c8dd60dc595852dc80c5d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/declarations/instance--a2139f4a4fa651187afa224a.md) | 70 | `declaration-track:a2139f4a4fa651187afa224a46b92e79fa8f79cb3c4091c3521cdd54bfd31f7d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/declarations/instance--ccea63afef32dd09d561e355.md) | 76 | `declaration-track:ccea63afef32dd09d561e35562b8cce22e81917fa07f20146d89a7ae563c8a14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
