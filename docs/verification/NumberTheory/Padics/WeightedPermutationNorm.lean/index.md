# Verification target: GRWTSK.NumberTheory.Padics.WeightedPermutationNorm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aedebc589a6d82162354c8cee08b70f81e899c6f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Padics/WeightedPermutationNorm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aedebc589a6d82162354c8cee08b70f81e899c6f`.

Source path: `GRWTSK/NumberTheory/Padics/WeightedPermutationNorm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Padics/WeightedPermutationNorm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.WeightedPermutationIntegral`](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationIntegral.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.NumberTheory.Padics.PadicNorm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transport](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/transport--767c8380ab3e45bd00e90f71.md) | 26 | `declaration-track:767c8380ab3e45bd00e90f71c7895cc08c08a2a525a315658e767e5faf50fe0c` |
| 2 | `theorem` | [transport_at](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/transport-at--d88b7136e813f246155da026.md) | 31 | `result-track:d88b7136e813f246155da02660bc067674da8a26608b4adc0cccca18c72bdd1d` |
| 3 | `theorem` | [transport_integer](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/transport-integer--1dafefc54a180f5b584db213.md) | 36 | `result-track:1dafefc54a180f5b584db213aaa4cddff9507e46cfb2730f103c8227aae52d07` |
| 4 | `def` | [inverse](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/inverse--11974d0886f8a40bf64ecdbc.md) | 43 | `declaration-track:11974d0886f8a40bf64ecdbc2ffb483a4b73965174659b93b4f121f66442c38d` |
| 5 | `theorem` | [inverse_transport](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/inverse-transport--3a401193c2b8bd712b412950.md) | 49 | `result-track:3a401193c2b8bd712b4129500da6f60b865fdb9895fb5aacde34ac50fc489388` |
| 6 | `theorem` | [transport_inverse](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/transport-inverse--3e55273f22c8a8761794d4bd.md) | 57 | `result-track:3e55273f22c8a8761794d4bd60e1ff627bdf082d1afc12fa52c096cffff73b0b` |
| 7 | `def` | [supNorm](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/supnorm--4725aba7051f559a400a3c69.md) | 69 | `declaration-track:4725aba7051f559a400a3c696f85e96f76263ec74b5025378a18ec1c3fc046bb` |
| 8 | `theorem` | [supNorm_le_iff](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/supnorm-le-iff--bd5416522ac2ca833eb39a11.md) | 72 | `result-track:bd5416522ac2ca833eb39a11644f6f9b3d030229ae4f3fc85e66d5bcaf0cd83a` |
| 9 | `theorem` | [entry_le](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/entry-le--d5941c3d8b6cc2e61ac63754.md) | 76 | `result-track:d5941c3d8b6cc2e61ac63754c5c05865b4d072125490494ea0483d3e883ee8bd` |
| 10 | `theorem` | [supNorm_nonneg](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/supnorm-nonneg--27525f215d03907cc70d6c57.md) | 80 | `result-track:27525f215d03907cc70d6c5742303b4cdaeb5e48857cb037fe83bd0cf82be9c8` |
| 11 | `theorem` | [supNorm_ones](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/supnorm-ones--5597b4eabf6ec5248ef7da56.md) | 84 | `result-track:5597b4eabf6ec5248ef7da56b9722bf298b6f8eb4baa1bc9460b55c48bb57217` |
| 12 | `def` | [OperatorBound](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/operatorbound--6969fb58c1fd483a597cf08a.md) | 90 | `declaration-track:6969fb58c1fd483a597cf08a14cdb5dbd6fa59d4981c26818b5064060202966b` |
| 13 | `theorem` | [transport_bound_iff](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/transport-bound-iff--4836da7cec55f21b7e1595c9.md) | 94 | `result-track:4836da7cec55f21b7e1595c954779570a8b64c9b2622bb14c87c84fb23c1d5eb` |
| 14 | `theorem` | [inverse_bound_iff](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/inverse-bound-iff--d7e99dcae4c6103a970be03e.md) | 114 | `result-track:d7e99dcae4c6103a970be03e7c339605bf24b2f86ad818712b843a454b13c9dd` |
| 15 | `theorem` | [transport_nonexpanding](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/transport-nonexpanding--8552249d1ee1d1fb2952cdca.md) | 139 | `result-track:8552249d1ee1d1fb2952cdca277372bc7e4a9d96628b597231ecf17421ebf55b` |
| 16 | `theorem` | [inverse_norm_le_of_dvd](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/inverse-norm-le-of-dvd--1f25d48c2ca9b8bedb5295ac.md) | 149 | `result-track:1f25d48c2ca9b8bedb5295ac5b029ace9cb35145cdfad292b130b053ab07b889` |
| 17 | `theorem` | [inverse_nat_norm](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/inverse-nat-norm--7874d774efc3776e0deedc14.md) | 165 | `result-track:7874d774efc3776e0deedc14299792b94e0660db96e302bb705ed720adb21b5f` |
| 18 | `theorem` | [inverse_int_norm](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/inverse-int-norm--5644239860baab5c2cc47c7c.md) | 172 | `result-track:5644239860baab5c2cc47c7c20a81a27d9a44e1bdd53b2de88366d4231f408eb` |
| 19 | `theorem` | [inverse_twelve_le_max](../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/declarations/inverse-twelve-le-max--df22e15b7d914a0e0461d102.md) | 180 | `result-track:df22e15b7d914a0e0461d1028798aaf11193ef95fb5d86f19a8aaf762c371306` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
