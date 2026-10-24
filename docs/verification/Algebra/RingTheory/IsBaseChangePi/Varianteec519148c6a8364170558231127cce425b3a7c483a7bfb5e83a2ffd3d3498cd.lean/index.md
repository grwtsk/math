# Verification target: GRWTSK.Algebra.RingTheory.IsBaseChangePi.Varianteec519148c6a8364170558231127cce425b3a7c483a7bfb5e83a2ffd3d3498cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ef9ffdf7eac1df3506a9c3594e9b46b0d10e445",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/IsBaseChangePi/Varianteec519148c6a8364170558231127cce425b3a7c483a7bfb5e83a2ffd3d3498cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/IsBaseChangePi/Varianteec519148c6a8364170558231127cce425b3a7c483a7bfb5e83a2ffd3d3498cd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/IsBaseChangePi/Varianteec519148c6a8364170558231127cce425b3a7c483a7bfb5e83a2ffd3d3498cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ef9ffdf7eac1df3506a9c3594e9b46b0d10e445`.

Source path: `GRWTSK/Algebra/RingTheory/IsBaseChangePi/Varianteec519148c6a8364170558231127cce425b3a7c483a7bfb5e83a2ffd3d3498cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/IsBaseChangePi/Varianteec519148c6a8364170558231127cce425b3a7c483a7bfb5e83a2ffd3d3498cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prodMap](../../../../../mathematics/Algebra/RingTheory/IsBaseChangePi/Varianteec519148c6a8364170558231127cce425b3a7c483a7bfb5e83a2ffd3d3498cd.lean/declarations/prodmap--0462d0a6ba5f89788656d949.md) | 22 | `result-track:0462d0a6ba5f89788656d94913eeb35124b51d8d990b4a32d0f6bb41385e7394` |
| 2 | `lemma` | [pi](../../../../../mathematics/Algebra/RingTheory/IsBaseChangePi/Varianteec519148c6a8364170558231127cce425b3a7c483a7bfb5e83a2ffd3d3498cd.lean/declarations/pi--e4393beae94c79f6fc7e1e47.md) | 33 | `result-track:e4393beae94c79f6fc7e1e47b3fd3edd336cd4b037afb186828ed2878c195307` |
| 3 | `instance` | [prodMap](../../../../../mathematics/Algebra/RingTheory/IsBaseChangePi/Varianteec519148c6a8364170558231127cce425b3a7c483a7bfb5e83a2ffd3d3498cd.lean/declarations/prodmap--a3d132c0e6a7ad28d844ca0f.md) | 55 | `declaration-track:a3d132c0e6a7ad28d844ca0ff80c56885ea528f1e3f89f8c0abc1ba8e044e91b` |
| 4 | `instance` | [pi](../../../../../mathematics/Algebra/RingTheory/IsBaseChangePi/Varianteec519148c6a8364170558231127cce425b3a7c483a7bfb5e83a2ffd3d3498cd.lean/declarations/pi--01017ab62b6ec271bcc160f8.md) | 71 | `declaration-track:01017ab62b6ec271bcc160f8db8db4b81a7cff5e65a2a07a697e929bc9daaa53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
