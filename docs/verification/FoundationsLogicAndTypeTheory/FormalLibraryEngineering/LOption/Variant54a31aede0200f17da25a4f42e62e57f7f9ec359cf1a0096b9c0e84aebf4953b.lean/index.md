# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LOption.Variant54a31aede0200f17da25a4f42e62e57f7f9ec359cf1a0096b9c0e84aebf4953b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b5cfa072dbe372b7334d8ee80ec7f8e48fc80c9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant54a31aede0200f17da25a4f42e62e57f7f9ec359cf1a0096b9c0e84aebf4953b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant54a31aede0200f17da25a4f42e62e57f7f9ec359cf1a0096b9c0e84aebf4953b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant54a31aede0200f17da25a4f42e62e57f7f9ec359cf1a0096b9c0e84aebf4953b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b5cfa072dbe372b7334d8ee80ec7f8e48fc80c9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant54a31aede0200f17da25a4f42e62e57f7f9ec359cf1a0096b9c0e84aebf4953b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant54a31aede0200f17da25a4f42e62e57f7f9ec359cf1a0096b9c0e84aebf4953b.lean.json)

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
| 1 | `inductive` | [LOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant54a31aede0200f17da25a4f42e62e57f7f9ec359cf1a0096b9c0e84aebf4953b.lean/declarations/loption--732c798b1e2dc6a5462266d5.md) | 26 | `declaration-track:732c798b1e2dc6a5462266d57ad1ffc59dcf4711ec2edd3ee6847e5c460e70e2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant54a31aede0200f17da25a4f42e62e57f7f9ec359cf1a0096b9c0e84aebf4953b.lean/declarations/instance--6840ac1130248827d580fa2e.md) | 32 | `declaration-track:6840ac1130248827d580fa2e6669afdc42cbab03d33d30e31e5e0ba552c8e31d` |
| 3 | `def` | [LOption.toOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant54a31aede0200f17da25a4f42e62e57f7f9ec359cf1a0096b9c0e84aebf4953b.lean/declarations/loption-tooption--7997c6dae80e295825eed659.md) | 38 | `declaration-track:7997c6dae80e295825eed6592414563a95fee1df101cea25b879d0e520799b4e` |
| 4 | `def` | [Option.toLOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant54a31aede0200f17da25a4f42e62e57f7f9ec359cf1a0096b9c0e84aebf4953b.lean/declarations/option-toloption--5b2638d856dbe2cea70bd66d.md) | 42 | `declaration-track:5b2638d856dbe2cea70bd66d3198b1db61ecca1cc6529efeb60de5a011d0ec40` |
| 5 | `def` | [toLOptionM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant54a31aede0200f17da25a4f42e62e57f7f9ec359cf1a0096b9c0e84aebf4953b.lean/declarations/toloptionm--b8f2a3bee644846cdc153a66.md) | 46 | `declaration-track:b8f2a3bee644846cdc153a6631ddcf2c525265f914b1944756a6eafc12978f15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
