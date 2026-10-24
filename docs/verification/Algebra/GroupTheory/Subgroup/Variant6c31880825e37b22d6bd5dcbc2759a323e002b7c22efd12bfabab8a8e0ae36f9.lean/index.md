# Verification target: GRWTSK.Algebra.GroupTheory.Subgroup.Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "653797432865deeb6631bf847050de6dce204339",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `653797432865deeb6631bf847050de6dce204339`.

Source path: `GRWTSK/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [seminormedGroup](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/declarations/seminormedgroup--b2c242391c6b4f8a7a0b1f06.md) | 45 | `declaration-track:b2c242391c6b4f8a7a0b1f0634590091e75ae82925766b18785b7ab12bc5c4c2` |
| 2 | `theorem` | [coe_norm](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/declarations/coe-norm--69e528c9447026e291d64ee6.md) | 52 | `result-track:69e528c9447026e291d64ee65e2b540284d4008b883d2670a56dafe4b2f3d86c` |
| 3 | `theorem` | [norm_coe](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/declarations/norm-coe--b0ed777be744a0391529cf23.md) | 63 | `result-track:b0ed777be744a0391529cf239419b3e89f798799cd3209244bda808110a7d412` |
| 4 | `instance` | [seminormedCommGroup](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/declarations/seminormedcommgroup--f33d25815d7d868a3df5f306.md) | 69 | `declaration-track:f33d25815d7d868a3df5f306d518dfbacc41788b46d42fd88e514c76209156d5` |
| 5 | `instance` | [normedGroup](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/declarations/normedgroup--645e27200838a35566ada3eb.md) | 73 | `declaration-track:645e27200838a35566ada3ebdde5bc9e9b4256e74f77d37a8831dbc7e6f1fe1c` |
| 6 | `instance` | [normedCommGroup](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/declarations/normedcommgroup--1f28bff126016d35fc4ad604.md) | 77 | `declaration-track:1f28bff126016d35fc4ad604d7dc49bf00cb8b8b2d3e292c52abd1592be40f1f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/declarations/instance--7c431789e3f0aca47dd1b18b.md) | 95 | `declaration-track:7c431789e3f0aca47dd1b18bd4631553feb9c82fc909f434df9c7efa0ec35bd5` |
| 8 | `theorem` | [coe_norm](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/declarations/coe-norm--7f179168dc8fdf17a7e2ca79.md) | 102 | `result-track:7f179168dc8fdf17a7e2ca79f45f554a9cbf007202a83971d23af4cb32ae72ab` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/declarations/instance--92c1094f7f5371a964a7f26f.md) | 108 | `declaration-track:92c1094f7f5371a964a7f26f0e03ed24023d548df0544389b7ace647342e3c90` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/declarations/instance--4ebe2295125338f447b8571e.md) | 113 | `declaration-track:4ebe2295125338f447b8571eece0bc695b2aae7c558dffcac94202ac9cba4dc8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9.lean/declarations/instance--02df0021675142bf2ea0c1ed.md) | 118 | `declaration-track:02df0021675142bf2ea0c1edcb43302e719cbeda2c3320f6f2687f1556e210a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
