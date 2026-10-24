# Verification target: GRWTSK.Topology.GeneralTopology.LocallyFinite.Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59a41f90be69b4d1855bfd0cbb7260d6e5de3f9c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59a41f90be69b4d1855bfd0cbb7260d6e5de3f9c`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocallyFinite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_nonempty_inter_compact](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean/declarations/finite-nonempty-inter-compact--44b62abe4a7b89800e6ce597.md) | 30 | `result-track:44b62abe4a7b89800e6ce5976a2fd0aea892285d371bca9e9b9ceeb1ebe3a4a5` |
| 2 | `theorem` | [finite_nonempty_of_compact](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean/declarations/finite-nonempty-of-compact--7aec4c5000a2c4ae92eb580d.md) | 41 | `result-track:7aec4c5000a2c4ae92eb580df8563e10a57578f011c3ab734558e9c6ac67bcd7` |
| 3 | `theorem` | [finite_of_compact](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean/declarations/finite-of-compact--6fc1dbb298b19cc334dbe512.md) | 47 | `result-track:6fc1dbb298b19cc334dbe51283e2b454598233c8740a606e2db6c43388efd04f` |
| 4 | `def` | [fintypeOfCompact](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean/declarations/fintypeofcompact--6c52d1b0c81f31589584a76d.md) | 53 | `declaration-track:6c52d1b0c81f31589584a76d9d4a76ae59c6f155049e15fcb94457696d5caf7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
