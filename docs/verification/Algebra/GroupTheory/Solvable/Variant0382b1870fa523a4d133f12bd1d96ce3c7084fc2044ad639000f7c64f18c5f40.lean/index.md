# Verification target: GRWTSK.Algebra.GroupTheory.Solvable.Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa4613f2bafdf0dc87d60acbb53ef6f836635021",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa4613f2bafdf0dc87d60acbb53ef6f836635021`.

Source path: `GRWTSK/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Abelianization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.ViaEmbedding` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Simple` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/derivedseries--0ce246656b6fbad6a4507d67.md) | 39 | `declaration-track:0ce246656b6fbad6a4507d6770bcdfbb2ca6350b1f61e92a783e03f4ca1e7b35` |
| 2 | `theorem` | [derivedSeries_zero](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/derivedseries-zero--24eb7006a5a04cc21609d11d.md) | 45 | `result-track:24eb7006a5a04cc21609d11d1b28cc65acb985e504462898b5a5de4af86656c2` |
| 3 | `theorem` | [derivedSeries_succ](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/derivedseries-succ--6a3ec2bd61d087505f209c22.md) | 50 | `result-track:6a3ec2bd61d087505f209c22c4857b20615654e4eee968b115abc3e5954ecbed` |
| 4 | `theorem` | [derivedSeries_normal](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/derivedseries-normal--837e3563fe2c7223d7d48d78.md) | 56 | `result-track:837e3563fe2c7223d7d48d784e83709abd911ddfec80a49412ffb1ed2053bc5c` |
| 5 | `theorem` | [derivedSeries_one](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/derivedseries-one--39f96e617f1fc551eb39269f.md) | 64 | `result-track:39f96e617f1fc551eb39269fb8346b1e611ec832f61aff4741c96d2eb4be99ea` |
| 6 | `theorem` | [map_derivedSeries_le_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/map-derivedseries-le-derivedseries--e0e0f0cdb72e901743732d26.md) | 76 | `result-track:e0e0f0cdb72e901743732d26a54c240fdbb6b40611f276b5ab71d3e478134964` |
| 7 | `theorem` | [derivedSeries_le_map_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/derivedseries-le-map-derivedseries--6e097d3bebb03b61bee6e104.md) | 85 | `result-track:6e097d3bebb03b61bee6e1047b383d1a9356ea0fff6e72f1189ff25a825b75be` |
| 8 | `theorem` | [map_derivedSeries_eq](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/map-derivedseries-eq--702d80964eae50e202079ab9.md) | 92 | `result-track:702d80964eae50e202079ab9e7946ea4ac39231783e6255d426fc6d04d0a0424` |
| 9 | `class` | [IsSolvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/issolvable--464a4151ff8963b063aca389.md) | 107 | `declaration-track:464a4151ff8963b063aca38954c301cdcfa21096b4c719e3771854ade55638f6` |
| 10 | `theorem` | [isSolvable_def](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/issolvable-def--98ddbb39e1c3339c3fa3af0c.md) | 112 | `result-track:98ddbb39e1c3339c3fa3af0ce768306d63518fa02ebd6de7cde53bfff7df073f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/instance--4c253aee8eee295cce45f77a.md) | 116 | `declaration-track:4c253aee8eee295cce45f77a77b154467f7669b48abfdc195ca00d870000d056` |
| 12 | `theorem` | [isSolvable_of_comm](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/issolvable-of-comm--fc8efa8ef6e4798251f20133.md) | 120 | `result-track:fc8efa8ef6e4798251f20133276bae43a5b9f39aebb7d39a0bf203ae86d28cc6` |
| 13 | `theorem` | [isSolvable_of_top_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/issolvable-of-top-eq-bot--f421caf88fd079d30d256a76.md) | 127 | `result-track:f421caf88fd079d30d256a761775140ebb4cde0c645add210c3f155c9453aa18` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/instance--e3c8e11f829b24900769814d.md) | 131 | `declaration-track:e3c8e11f829b24900769814dc82058eaf3261985b7b2d20997e7160b17c35e56` |
| 15 | `theorem` | [solvable_of_ker_le_range](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/solvable-of-ker-le-range--fca087509606539a7ae113aa.md) | 137 | `result-track:fca087509606539a7ae113aa1bfe162bb30c7d29610b943dfe240db3d8f1a56b` |
| 16 | `theorem` | [solvable_of_solvable_injective](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/solvable-of-solvable-injective--175312d9b983cdc87d70610e.md) | 150 | `result-track:175312d9b983cdc87d70610e410ac15c6bdd364c430002587a4ee0dc8be6dea5` |
| 17 | `instance` | [subgroup_solvable_of_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/subgroup-solvable-of-solvable--ab12f018f8ebc91ad7408b27.md) | 155 | `declaration-track:ab12f018f8ebc91ad7408b279497f6e2735cc898427a4424d389e5046face9fb` |
| 18 | `theorem` | [solvable_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/solvable-of-surjective--ba2065ad6e2944acffeeea15.md) | 159 | `result-track:ba2065ad6e2944acffeeea157dee93e7fdbead4ffb8882cab3fb0222437687e4` |
| 19 | `instance` | [solvable_quotient_of_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/solvable-quotient-of-solvable--fe741cb9e6f5cd2069a76465.md) | 163 | `declaration-track:fe741cb9e6f5cd2069a76465ff1658f16949d81fc1fd76c8f9ef2d1163976371` |
| 20 | `instance` | [solvable_prod](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/solvable-prod--9b46fbfd199e6932bb6ff28b.md) | 168 | `declaration-track:9b46fbfd199e6932bb6ff28b0347aefddf9fe2782243d717c550b8ee7b3b06c7` |
| 21 | `theorem` | [IsSimpleGroup.derivedSeries_succ](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/issimplegroup-derivedseries-succ--faaca1d92dd1271babdbb99d.md) | 180 | `result-track:faaca1d92dd1271babdbb99d76cebb92956bf9485fe657150dd71979f5b9ad13` |
| 22 | `theorem` | [IsSimpleGroup.comm_iff_isSolvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/issimplegroup-comm-iff-issolvable--7d8ef8436a93c452bc20079a.md) | 189 | `result-track:7d8ef8436a93c452bc20079abe1061fcf792afeda5c2bff6e72bac4aa626388f` |
| 23 | `theorem` | [not_solvable_of_mem_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/not-solvable-of-mem-derivedseries--9564e2f961054b22dee67b52.md) | 206 | `result-track:9564e2f961054b22dee67b52bd3f985a2df0b1bc64e4feff514965a6761b8945` |
| 24 | `theorem` | [Equiv.Perm.fin_5_not_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/equiv-perm-fin-5-not-solvable--ccd685ed9d8f5911925cda33.md) | 213 | `result-track:ccd685ed9d8f5911925cda33cca3869ce7bc7489c07c264063dc13a71e94423f` |
| 25 | `theorem` | [Equiv.Perm.not_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/declarations/equiv-perm-not-solvable--ed50b9d3b92cf8847e01bd42.md) | 225 | `result-track:ed50b9d3b92cf8847e01bd4264f746443d89442affc9e81cde840c691c40f730` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
