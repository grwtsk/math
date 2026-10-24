# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc8894c207e032da291f26132d7570b53251c113",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc8894c207e032da291f26132d7570b53251c113`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMulAction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submodule.IsHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/declarations/submodule-ishomogeneous--82e3e5f0922fe41b17778c32.md) | 48 | `declaration-track:82e3e5f0922fe41b17778c32968715e402a73000d4a67e1a0e186e5648d67bd1` |
| 2 | `theorem` | [Submodule.IsHomogeneous.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/declarations/submodule-ishomogeneous-mem-iff--7bc23c2363e6aae86a040fe1.md) | 52 | `result-track:7bc23c2363e6aae86a040fe157b7d9855fa555c98b663217cf71f0aa25e019e7` |
| 3 | `structure` | [HomogeneousSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/declarations/homogeneoussubmodule--b2d634b3f1b8a67f65f0d567.md) | 60 | `declaration-track:b2d634b3f1b8a67f65f0d567f7ab11179b241d3af2179f858929a13ac7e9e89f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/declarations/instance--b67e8c7e1905093bd944c5a4.md) | 72 | `declaration-track:b67e8c7e1905093bd944c5a488bd58e0606e026c95ffa3450d7b6e21eee5f33c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/declarations/instance--3aaac251c51dffb31f0548c6.md) | 78 | `declaration-track:3aaac251c51dffb31f0548c6dc6fb25de53152668e990d09426417d60153bb7d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/declarations/instance--9510cd579bb95f576ff2f7a6.md) | 82 | `declaration-track:9510cd579bb95f576ff2f7a6eab36a909853c52e2e180a71827660c855c074eb` |
| 7 | `theorem` | [HomogeneousSubmodule.isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/declarations/homogeneoussubmodule-ishomogeneous--0c68aac08183a185442fe835.md) | 88 | `result-track:0c68aac08183a185442fe83575429f49602c23b0afead53306e57227d5aa23b1` |
| 8 | `theorem` | [HomogeneousSubmodule.toSubmodule_injective](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/declarations/homogeneoussubmodule-tosubmodule-injective--08631f544aee354765ada07d.md) | 92 | `result-track:08631f544aee354765ada07d0509fc75e0ba773d670c0dd42c5b7c546d020789` |
| 9 | `instance` | [HomogeneousSubmodule.setLike](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/declarations/homogeneoussubmodule-setlike--31bb16700c7954e7f5ffcb12.md) | 97 | `declaration-track:31bb16700c7954e7f5ffcb122f05c8dcf47713f427f11c114d2b7878591566a5` |
| 10 | `theorem` | [HomogeneousSubmodule.ext](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/declarations/homogeneoussubmodule-ext--1cc8eb3792fbd97454e2f949.md) | 102 | `result-track:1cc8eb3792fbd97454e2f949ad5e04803eaabfa86ddd54e39f0c5f0bbc514dac` |
| 11 | `theorem` | [HomogeneousSubmodule.ext'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/declarations/homogeneoussubmodule-ext--c0b76a52a6c6556052079bfd.md) | 109 | `result-track:c0b76a52a6c6556052079bfd336c5ec08c12a6e3e7f9f8b82ffa8c45e8f6b4c4` |
| 12 | `theorem` | [HomogeneousSubmodule.mem_toSubmodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant43275a131dcd88f477ce6f02bc28ecc9e46290e47957abdd143c8bd72156fe83.lean/declarations/homogeneoussubmodule-mem-tosubmodule-iff--2f37876abca742d03940ba3f.md) | 118 | `result-track:2f37876abca742d03940ba3f9e107c82151728a9b08b4e7ba0d814415c31d892` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
