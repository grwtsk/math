# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab486faedb451990a50276d5993a11187996ec48",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab486faedb451990a50276d5993a11187996ec48`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piQuotientLift](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/declarations/piquotientlift--12af97d0611394d78f04819a.md) | 42 | `declaration-track:12af97d0611394d78f04819ae25f9c5c29efb6783d7c8608a93be8378223ae2c` |
| 2 | `theorem` | [piQuotientLift_mk](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/declarations/piquotientlift-mk--648a59400a3d0f236345798f.md) | 47 | `result-track:648a59400a3d0f236345798f30b6bc2c638b5d48948d344f43a24a289be3d5b6` |
| 3 | `theorem` | [piQuotientLift_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/declarations/piquotientlift-single--04f0e64f991746a0aa9b25a1.md) | 54 | `result-track:04f0e64f991746a0aa9b25a1f9914403fcbb58220df9a35ecf31296896ebe305` |
| 4 | `def` | [quotientPiLift](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/declarations/quotientpilift--ad3712e00c9dc24cc0321f4c.md) | 67 | `declaration-track:ad3712e00c9dc24cc0321f4c31b3f0344b8d6b59cc938aa11965609313080ae1` |
| 5 | `theorem` | [quotientPiLift_mk](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/declarations/quotientpilift-mk--765e4d1629861ce2248aa69b.md) | 75 | `result-track:765e4d1629861ce2248aa69bf8667c966255e5ba90852b3fd1f6fe028ebf2da1` |
| 6 | `def` | [toFun](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/declarations/tofun--1c0aee0183e06a46093fffc4.md) | 85 | `declaration-track:1c0aee0183e06a46093fffc4ef0b8f8a181ce8d65db733344df4f96401c16b19` |
| 7 | `theorem` | [map_add](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/declarations/map-add--9b9ece935f505a1eb4e77e8a.md) | 88 | `result-track:9b9ece935f505a1eb4e77e8a94ab671c3d93d9a4e8e1d4cc526e1ddf16ff0f03` |
| 8 | `theorem` | [map_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/declarations/map-smul--b17a18815117a4950d35c7c6.md) | 92 | `result-track:b17a18815117a4950d35c7c6b7a9e219fddaa0abb47df07e5a90d9d7c3ac5534` |
| 9 | `def` | [invFun](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/declarations/invfun--42db5da38488f34ce0b8b518.md) | 99 | `declaration-track:42db5da38488f34ce0b8b518f20d37225d00d975646e7f39fa7928bf2deb6973` |
| 10 | `theorem` | [left_inv](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/declarations/left-inv--34b8cf40d62f722939fb7a8e.md) | 102 | `result-track:34b8cf40d62f722939fb7a8ed0dff71dc50788db281999280b1d97de2dd3c974` |
| 11 | `theorem` | [right_inv](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/declarations/right-inv--286d06d5287e16296c403ce2.md) | 108 | `result-track:286d06d5287e16296c403ce294f4ee0faa65295751b0cbd345525bb8aa59d617` |
| 12 | `def` | [quotientPi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7ec873ff7771004c704ba7250303fa1dcf83fc575fce449b689cf4dc60edb49d.lean/declarations/quotientpi--ff765ad543bd63103fc2b3da.md) | 125 | `declaration-track:ff765ad543bd63103fc2b3daf9500f01ce122e53e2b90b5fcd25c7ef0bcd1229` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
