# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Infinite.Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b123595abe2730e13e39b3d26ecffbc22d262dc6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b123595abe2730e13e39b3d26ecffbc22d262dc6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [NoMaxOrder.infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/nomaxorder-infinite--fa6344a54a8760b69bc49a08.md) | 29 | `declaration-track:fa6344a54a8760b69bc49a086a23c046b03a40d32e5a542d08bf32bb3fcd884d` |
| 2 | `instance` | [NoMinOrder.infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/nominorder-infinite--32f1022c8944c2eaa34531dd.md) | 34 | `declaration-track:32f1022c8944c2eaa34531dd6aba8e1387bcdd1ecb9141823fafe5cdb0db6926` |
| 3 | `theorem` | [Ioo.infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/ioo-infinite--df9c7e5f677ea4acbde9749a.md) | 44 | `result-track:df9c7e5f677ea4acbde9749a2cd96fd22cb089010c3ec37d03843401a3f551b1` |
| 4 | `theorem` | [Ioo_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/ioo-infinite--7918d3b916f1168dada146a8.md) | 47 | `result-track:7918d3b916f1168dada146a871fcb27c80f680430b069880cce50f6876187498` |
| 5 | `theorem` | [Ico_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/ico-infinite--b06b4e6c13f646c3bb3076d0.md) | 50 | `result-track:b06b4e6c13f646c3bb3076d0906fab83752ff9930ce6f4a801d0bd04f87bd733` |
| 6 | `theorem` | [Ico.infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/ico-infinite--f2fc69417802f5cb4e4778a5.md) | 53 | `result-track:f2fc69417802f5cb4e4778a5c21ec5be522791c6a3bf4fe160e92bc247dba84e` |
| 7 | `theorem` | [Ioc_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/ioc-infinite--cdf9081a395ae6aae1493119.md) | 56 | `result-track:cdf9081a395ae6aae1493119350a5031b20a3b67b797676c5794f6d22156102c` |
| 8 | `theorem` | [Ioc.infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/ioc-infinite--5bd47d8bc0c9c5bce685975a.md) | 59 | `result-track:5bd47d8bc0c9c5bce685975aa2b56ec367f40bc9d8b3e30f0b23f65057292de4` |
| 9 | `theorem` | [Icc_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/icc-infinite--66eb2dffe9f50c1f3ff0b994.md) | 62 | `result-track:66eb2dffe9f50c1f3ff0b994a7ae613c728434a0bb8dbf6377372bed8e150795` |
| 10 | `theorem` | [Icc.infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/icc-infinite--dd981a9f5e4c93015db6c2c2.md) | 65 | `result-track:dd981a9f5e4c93015db6c2c2a25c54d466f3a76f4428f5ed754b6da4cfa49922` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/instance--53e34716279ab908ad7d3ca8.md) | 70 | `declaration-track:53e34716279ab908ad7d3ca86c6d699ff231f6528375b4c2b8880545a768d231` |
| 12 | `theorem` | [Iio_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/iio-infinite--89df0adeb0e25ec04268b42d.md) | 73 | `result-track:89df0adeb0e25ec04268b42d801ef2d80e365a8cb6ecc6203d60b76edf0d44d6` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/instance--8c76fa624b8aeb10aba6e960.md) | 76 | `declaration-track:8c76fa624b8aeb10aba6e960cf7594320c885deaad0df46217838561d7d3049b` |
| 14 | `theorem` | [Iic_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/iic-infinite--c44e105bc018b5fa946260b5.md) | 79 | `result-track:c44e105bc018b5fa946260b59d7deb5442072d91d7d26c54deddc8f933ebf933` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/instance--9c3289e1c0b3d8b7d8cded73.md) | 82 | `declaration-track:9c3289e1c0b3d8b7d8cded7362641b448529b8cdbf341f009ff429c1473d65f0` |
| 16 | `theorem` | [Ioi_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/ioi-infinite--05e3a2c67e8415f9589fbd4b.md) | 85 | `result-track:05e3a2c67e8415f9589fbd4ba1afa1b3584df0dd180af49fa24ad0b7fd0ce758` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/instance--b01991ecf2174628ac750bfb.md) | 88 | `declaration-track:b01991ecf2174628ac750bfb8429debfa6bb7d39b1013f3536748d991885a8d5` |
| 18 | `theorem` | [Ici_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2.lean/declarations/ici-infinite--bccf6b5fb8c3a505c3ffdcbe.md) | 91 | `result-track:bccf6b5fb8c3a505c3ffdcbe26c8f8c2e4589db9bdb9f0f75f56bbf81df21351` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
