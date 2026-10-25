# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.NatCount.Variantac4bf8aa6a3a9a4e6e5ab6b8f1e53364f99b24ed2a663eedb58410e5cbae9b17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51f3c8c6ca2b5148a14845e9bcaa8390bc6436c8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variantac4bf8aa6a3a9a4e6e5ab6b8f1e53364f99b24ed2a663eedb58410e5cbae9b17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variantac4bf8aa6a3a9a4e6e5ab6b8f1e53364f99b24ed2a663eedb58410e5cbae9b17.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variantac4bf8aa6a3a9a4e6e5ab6b8f1e53364f99b24ed2a663eedb58410e5cbae9b17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51f3c8c6ca2b5148a14845e9bcaa8390bc6436c8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variantac4bf8aa6a3a9a4e6e5ab6b8f1e53364f99b24ed2a663eedb58410e5cbae9b17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variantac4bf8aa6a3a9a4e6e5ab6b8f1e53364f99b24ed2a663eedb58410e5cbae9b17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Count` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [count_le_cardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variantac4bf8aa6a3a9a4e6e5ab6b8f1e53364f99b24ed2a663eedb58410e5cbae9b17.lean/declarations/count-le-cardinal--4384ce8b860f2eaf78e6ee35.md) | 30 | `result-track:4384ce8b860f2eaf78e6ee35dc3595589d5f3182043d5b09b473223df938d16e` |
| 2 | `theorem` | [count_le_setENCard](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variantac4bf8aa6a3a9a4e6e5ab6b8f1e53364f99b24ed2a663eedb58410e5cbae9b17.lean/declarations/count-le-setencard--7fe080303c96da9fb1c3172b.md) | 34 | `result-track:7fe080303c96da9fb1c3172b3c44f2e58112a1d8c0df97334d1ae53b3e3d129a` |
| 3 | `theorem` | [count_le_setNCard](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variantac4bf8aa6a3a9a4e6e5ab6b8f1e53364f99b24ed2a663eedb58410e5cbae9b17.lean/declarations/count-le-setncard--a317eca3d1bfeaf8fbd7b15e.md) | 38 | `result-track:a317eca3d1bfeaf8fbd7b15ebbdefefbc35ddca7dc515f292b592a423ba6bc49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
