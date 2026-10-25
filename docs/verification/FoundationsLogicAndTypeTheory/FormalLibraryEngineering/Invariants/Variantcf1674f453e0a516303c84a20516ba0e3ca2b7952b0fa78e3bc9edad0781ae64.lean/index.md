# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Invariants.Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "498b678779737ab81aef4516451bbba1382b4987",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `498b678779737ab81aef4516451bbba1382b4987`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.FdRep` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [average](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/average--944f98a814b1b1a06e86ab76.md) | 38 | `declaration-track:944f98a814b1b1a06e86ab76adf045af8d7fec7d8fba09e965c715759e98a905` |
| 2 | `theorem` | [mul_average_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/mul-average-left--b03a1ccff1cc800e84aebff8.md) | 45 | `result-track:b03a1ccff1cc800e84aebff8c4dbc57525acb58b392ba6303f4fe38f95c3b09e` |
| 3 | `theorem` | [mul_average_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/mul-average-right--f922794a70bb227d5970d44e.md) | 56 | `result-track:f922794a70bb227d5970d44e65e997f751ec61ce04c23ffacb9c635f47e7ee78` |
| 4 | `def` | [invariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/invariants--50f73d595282e7841c07aa97.md) | 78 | `declaration-track:50f73d595282e7841c07aa97429f2eacb432e841e2820cf8253ad2b0a1d2059a` |
| 5 | `theorem` | [mem_invariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/mem-invariants--8905079c397921acfe58eb23.md) | 86 | `result-track:8905079c397921acfe58eb234b6e8fc0ed8f746a7461ea0889c1508783d583c3` |
| 6 | `theorem` | [invariants_eq_inter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/invariants-eq-inter--3ddee319b66262a978ff2c12.md) | 89 | `result-track:3ddee319b66262a978ff2c120f50a9560c8b3394c79b4ad89985b27c75c6ddf7` |
| 7 | `def` | [averageMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/averagemap--6f3de27c35e5a90555e5f0f6.md) | 98 | `declaration-track:6f3de27c35e5a90555e5f0f665289d53a7130e3fbb339da8839bc06681ecb8e2` |
| 8 | `theorem` | [averageMap_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/averagemap-invariant--fd416d9eb4bb059301009419.md) | 104 | `result-track:fd416d9eb4bb059301009419d204262d6761dd4892b480515eb5904fdc4bc21d` |
| 9 | `theorem` | [averageMap_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/averagemap-id--ebc46cfae5a64b1f01f31d35.md) | 111 | `result-track:ebc46cfae5a64b1f01f31d351822f6212a085c706975acfcea1a2334977b8b75` |
| 10 | `theorem` | [isProj_averageMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/isproj-averagemap--51ec8078d08415212d2908d6.md) | 116 | `result-track:51ec8078d08415212d2908d60977fec030cad851c877833c2bc397e612464410` |
| 11 | `theorem` | [mem_invariants_iff_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/mem-invariants-iff-comm--235afa3b334cd97eaf898200.md) | 132 | `result-track:235afa3b334cd97eaf8982002bd5b2209ed5ea9bb93bac9cdc9901dba0ed1002` |
| 12 | `def` | [invariantsEquivRepHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/invariantsequivrephom--5bea0134da85ff43f9b80ff0.md) | 144 | `declaration-track:5bea0134da85ff43f9b80ff03d2bc7e4d3afb2a1434efbbf7c3f3c7c9eb1d02f` |
| 13 | `def` | [invariantsEquivFdRepHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variantcf1674f453e0a516303c84a20516ba0e3ca2b7952b0fa78e3bc9edad0781ae64.lean/declarations/invariantsequivfdrephom--1168b87bdf9cc7afdce80174.md) | 162 | `declaration-track:1168b87bdf9cc7afdce8017433b200077b551ebc142e793892174b5ea9b4e9cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
