# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3df771e30ea7965188aa4582b94a6a3a2bb275ef",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3df771e30ea7965188aa4582b94a6a3a2bb275ef`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean.json)

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
| 1 | `def` | [norm](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/declarations/norm--78047aa353e6ce269eca9412.md) | 61 | `declaration-track:78047aa353e6ce269eca9412eb1c3d005e11ee81a8cdb79b1be092fb45f1326a` |
| 2 | `theorem` | [norm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/declarations/norm-apply--44dd6187ca6bf5e2fd907ba0.md) | 64 | `result-track:44dd6187ca6bf5e2fd907ba042167c0ece162e3d316bafc22f5af88635b505e7` |
| 3 | `theorem` | [norm_self](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/declarations/norm-self--a6ab99125ce849f00aaf2b55.md) | 67 | `result-track:a6ab99125ce849f00aaf2b556f943080b1ced9c57b4b5625678ee06fb2b27062` |
| 4 | `theorem` | [norm_eq_one_of_not_exists_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/declarations/norm-eq-one-of-not-exists-basis--7e67bde5e0c410a7e6ef91ac.md) | 71 | `result-track:7e67bde5e0c410a7e6ef91acb4babfb477dd10ad52c8a731cdace2f34ae719a3` |
| 5 | `theorem` | [norm_eq_one_of_not_module_finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/declarations/norm-eq-one-of-not-module-finite--2ff0a981ba3b6495e8c170c9.md) | 76 | `result-track:2ff0a981ba3b6495e8c170c9b69e7895cd30cf144925cabb0ac2f8b4398d2fa6` |
| 6 | `theorem` | [norm_eq_matrix_det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/declarations/norm-eq-matrix-det--dd2d1aa8843a8349c99f3bd8.md) | 82 | `result-track:dd2d1aa8843a8349c99f3bd84ca8b38697e318af6f0e9cac0c9bd2376c4a0f97` |
| 7 | `theorem` | [norm_algebraMap_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/declarations/norm-algebramap-of-basis--81c9fb382e88a3441c3d324a.md) | 87 | `result-track:81c9fb382e88a3441c3d324ac03fdc9f78ab305dc19f2ff89579a714f1dc5b4a` |
| 8 | `theorem` | [norm_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/declarations/norm-algebramap--b9fe6a6238cc6884be0b0c31.md) | 100 | `result-track:b9fe6a6238cc6884be0b0c31579987e63e975fbb9637134ea2fbc241f6172ff6` |
| 9 | `lemma` | [norm_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/declarations/norm-natcast--b1e053614ecc0f5147dfde8d.md) | 104 | `result-track:b1e053614ecc0f5147dfde8d344fd3ada394dc72e611854779afe83fce6e13a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
