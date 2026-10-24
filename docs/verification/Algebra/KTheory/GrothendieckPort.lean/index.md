# Verification target: GRWTSK.Algebra.KTheory.GrothendieckPort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "492815935a542ad989c1109225d52ee0170f3ee8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KTheory/GrothendieckPort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/index.md) · [Full source](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `492815935a542ad989c1109225d52ee0170f3ee8`.

Source path: `GRWTSK/Algebra/KTheory/GrothendieckPort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KTheory/GrothendieckPort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.MonoidLocalization.GrothendieckGroup` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GrothendieckKZero](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/declarations/grothendieckkzero--2ec5c5ea330ada53382f6047.md) | 11 | `declaration-track:2ec5c5ea330ada53382f60477b1f764522800efc38a2fe6b010f7e0e120ae7f7` |
| 2 | `def` | [map](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/declarations/map--1c8ee4048db1742efe9534eb.md) | 20 | `declaration-track:1c8ee4048db1742efe9534eb851304bb79b947e7b8cf5c6ff094b17b38a45a76` |
| 3 | `theorem` | [map_of](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/declarations/map-of--59a79614daba9423b6568c55.md) | 25 | `result-track:59a79614daba9423b6568c55766b18419a2251e7ad3098c0ea5f5bbf0ae8b2b0` |
| 4 | `theorem` | [map_comp](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/declarations/map-comp--d08ff55c7fbf9872719d525a.md) | 33 | `result-track:d08ff55c7fbf9872719d525ab05209121e5bd7884e45e5a16559ff0cc171c319` |
| 5 | `theorem` | [map_id](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/declarations/map-id--8eba1fb369a8f265962aaf50.md) | 42 | `result-track:8eba1fb369a8f265962aaf50a9bb549dbea9768e0509cbb653fa8181b7f5a615` |
| 6 | `structure` | [StablePort](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/declarations/stableport--367086dfba964273eee8292e.md) | 53 | `declaration-track:367086dfba964273eee8292e58a31a9b5439c4933c701c573332b9f2a4fccf01` |
| 7 | `def` | [comp](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/declarations/comp--942cd7acd35642daf0ae8c2e.md) | 62 | `declaration-track:942cd7acd35642daf0ae8c2ede6b4ac025a8d782ad7cd3c0f5e68c4b2ebaf3d8` |
| 8 | `def` | [kZeroMap](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/declarations/kzeromap--b6c039f63a7a82053ccdf6ea.md) | 66 | `declaration-track:b6c039f63a7a82053ccdf6eaa776b78d21019102f11ab66c8c72820c7cd959a9` |
| 9 | `theorem` | [kZeroMap_comp](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/declarations/kzeromap-comp--6eae80169e700a381a1139f6.md) | 71 | `result-track:6eae80169e700a381a1139f6cab10e057401db56be723d34f1f71133191f45c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
