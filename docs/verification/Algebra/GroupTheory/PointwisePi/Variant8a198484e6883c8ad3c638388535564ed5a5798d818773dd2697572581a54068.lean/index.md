# Verification target: GRWTSK.Algebra.GroupTheory.PointwisePi.Variant8a198484e6883c8ad3c638388535564ed5a5798d818773dd2697572581a54068

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98416eff9ba8d236e218525eb5530718b6db97c5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PointwisePi/Variant8a198484e6883c8ad3c638388535564ed5a5798d818773dd2697572581a54068.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PointwisePi/Variant8a198484e6883c8ad3c638388535564ed5a5798d818773dd2697572581a54068.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PointwisePi/Variant8a198484e6883c8ad3c638388535564ed5a5798d818773dd2697572581a54068.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98416eff9ba8d236e218525eb5530718b6db97c5`.

Source path: `GRWTSK/Algebra/GroupTheory/PointwisePi/Variant8a198484e6883c8ad3c638388535564ed5a5798d818773dd2697572581a54068.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PointwisePi/Variant8a198484e6883c8ad3c638388535564ed5a5798d818773dd2697572581a54068.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_pi_subset](../../../../../mathematics/Algebra/GroupTheory/PointwisePi/Variant8a198484e6883c8ad3c638388535564ed5a5798d818773dd2697572581a54068.lean/declarations/smul-pi-subset--81422ca7789f8fb2db331331.md) | 36 | `result-track:81422ca7789f8fb2db331331b528ecb8ef1b7a0dec55fc58bfedb6297ab894bd` |
| 2 | `theorem` | [smul_univ_pi](../../../../../mathematics/Algebra/GroupTheory/PointwisePi/Variant8a198484e6883c8ad3c638388535564ed5a5798d818773dd2697572581a54068.lean/declarations/smul-univ-pi--a73586cc54c647240f7eef82.md) | 41 | `result-track:a73586cc54c647240f7eef82955254d236a824dc564da7794be5a2154a472fe8` |
| 3 | `theorem` | [smul_pi](../../../../../mathematics/Algebra/GroupTheory/PointwisePi/Variant8a198484e6883c8ad3c638388535564ed5a5798d818773dd2697572581a54068.lean/declarations/smul-pi--4fcb03f22fa89c547a658ba8.md) | 46 | `result-track:4fcb03f22fa89c547a658ba84cb326892edc18c7bd2f5a8cb784efa67a3f9568` |
| 4 | `theorem` | [smul_pi₀](../../../../../mathematics/Algebra/GroupTheory/PointwisePi/Variant8a198484e6883c8ad3c638388535564ed5a5798d818773dd2697572581a54068.lean/declarations/smul-pi--4169539e8549659a6917db29.md) | 50 | `result-track:4169539e8549659a6917db29f43bf2e5fe713481734668be98283de0561392a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
