# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inhabit.Variant65dbe73d052fb18a04468efaa52683d0387d281d2da7c347406a353ffa86bc95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e57101f3ce68d24fb7ab5d6424d918b0d9cf378",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant65dbe73d052fb18a04468efaa52683d0387d281d2da7c347406a353ffa86bc95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant65dbe73d052fb18a04468efaa52683d0387d281d2da7c347406a353ffa86bc95.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant65dbe73d052fb18a04468efaa52683d0387d281d2da7c347406a353ffa86bc95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e57101f3ce68d24fb7ab5d6424d918b0d9cf378`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant65dbe73d052fb18a04468efaa52683d0387d281d2da7c347406a353ffa86bc95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant65dbe73d052fb18a04468efaa52683d0387d281d2da7c347406a353ffa86bc95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.ElabTerm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonempty_to_inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant65dbe73d052fb18a04468efaa52683d0387d281d2da7c347406a353ffa86bc95.lean/declarations/nonempty-to-inhabited--b980ca4ab6a7532220b8f994.md) | 27 | `declaration-track:b980ca4ab6a7532220b8f994c5c935e0acbb27cbe30a34e2a9cf7dae690a63fd` |
| 2 | `def` | [nonempty_prop_to_inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant65dbe73d052fb18a04468efaa52683d0387d281d2da7c347406a353ffa86bc95.lean/declarations/nonempty-prop-to-inhabited--a1695414771268aa5e44b7ce.md) | 32 | `declaration-track:a1695414771268aa5e44b7ce5c842582edd99f8a5bfdcc0fc0c193af2c9ee79e` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant65dbe73d052fb18a04468efaa52683d0387d281d2da7c347406a353ffa86bc95.lean/declarations/syntax--6633c437d6addc1d825b27cb.md) | 40 | `declaration-track:6633c437d6addc1d825b27cb5f5fdf8ea31386401bf3fa90119c915b7a69050e` |
| 4 | `def` | [evalInhabit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant65dbe73d052fb18a04468efaa52683d0387d281d2da7c347406a353ffa86bc95.lean/declarations/evalinhabit--72fad3ea6b93bf61dc376463.md) | 44 | `declaration-track:72fad3ea6b93bf61dc3764632e55d14ff9104ce61a504403714226629b9d203f` |
| 5 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant65dbe73d052fb18a04468efaa52683d0387d281d2da7c347406a353ffa86bc95.lean/declarations/elab-rules--a7e09763ca298b352963b6d7.md) | 61 | `declaration-track:a7e09763ca298b352963b6d75c7bb329e4ffc2c2a0ea9d943ad9e81e2f360fa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
