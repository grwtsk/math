# Verification target: GRWTSK.Combinatorics.Sequences.ZeroSumIntervalRepair

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8e696666b5fcdb3d5a0493e2001361069a5209c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8e696666b5fcdb3d5a0493e2001361069a5209c`.

Source path: `GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/ZeroSumIntervalRepair.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.Sequences.DisjointTranspositions`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/DisjointTranspositions.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PartialSumOrdering`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Order.Interval.Finset.Fin` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positionIntervalSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/positionintervalsum--f073f2c16c61a5ea02dcbf4c.md) | 23 | `declaration-track:f073f2c16c61a5ea02dcbf4c9b14242692f8d0755498ee632399a5e5859e3a35` |
| 2 | `def` | [BadRightEndpoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/badrightendpoints--1d30c78d85d580769f3ddb34.md) | 26 | `declaration-track:1d30c78d85d580769f3ddb34b42f58a3f4217cbcbbff4e8758a78ca2bd59779b` |
| 3 | `theorem` | [mem_badRightEndpoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/mem-badrightendpoints--f6020af97eea8f26625962d0.md) | 31 | `result-track:f6020af97eea8f26625962d0bbeb84aa5e3501f0a5f4e983da2a7538e994df93` |
| 4 | `def` | [Blocked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/blocked--1f50401bc33ad318aa618550.md) | 38 | `declaration-track:1f50401bc33ad318aa618550cf9416d9ef47637ff25f9c041765d87b295f5240` |
| 5 | `def` | [repairWindow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/repairwindow--be8884fad03ddd9712c8c73a.md) | 43 | `declaration-track:be8884fad03ddd9712c8c73ad2f91542d0c8603510f54ad7dcee8d845e473d74` |
| 6 | `def` | [blockedCandidates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/blockedcandidates--66046a99d03579e427541884.md) | 46 | `declaration-track:66046a99d03579e427541884a14765fdbeccc161b7b175f7e912195e65ef7188` |
| 7 | `def` | [badNeighborhood](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/badneighborhood--a6e1383d391a05c56517c88e.md) | 51 | `declaration-track:a6e1383d391a05c56517c88e8cd904944bf40b5e99e286f60b1263f126212ee0` |
| 8 | `def` | [AdmissiblePermutation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/admissiblepermutation--75655a3329196f094d91c3d5.md) | 56 | `declaration-track:75655a3329196f094d91c3d566eafc9ce6ffac66cefbe868197c9f02e6246e87` |
| 9 | `structure` | [GoodRepairGeometry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/goodrepairgeometry--81a365c099cd249d1064b936.md) | 62 | `declaration-track:81a365c099cd249d1064b936ec765483c46c8c2918e4fdf3062a29c29ea3f4d3` |
| 10 | `theorem` | [positionIntervalSum_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/positionintervalsum-swap--0ec96f297a7a632e4c8382a8.md) | 70 | `result-track:0ec96f297a7a632e4c8382a892028cbde17be3a6e6baf00d62daf7ce2002c48f` |
| 11 | `theorem` | [unblocked_swap_bad_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/unblocked-swap-bad-subset--f86e8c95fc91ded781775d86.md) | 87 | `result-track:f86e8c95fc91ded781775d865a4af53897ddf48b435e38fd7a1f51018d9b8fc0` |
| 12 | `theorem` | [unblocked_swap_preserves_repair_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/unblocked-swap-preserves-repair-invariant--a283ebc3532c13ed0f45bec4.md) | 108 | `result-track:a283ebc3532c13ed0f45bec40821e51a34beba1a127d4449131363cc245a9dac` |
| 13 | `theorem` | [repairWindow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/repairwindow-card--2e56c5205c599dcf566d237f.md) | 114 | `result-track:2e56c5205c599dcf566d237fd02af2e6b24326a036c5a6396e7dd4cad2f7c6f3` |
| 14 | `theorem` | [repairWindow_available](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/repairwindow-available--9517d01d211d03ce67c16529.md) | 124 | `result-track:9517d01d211d03ce67c16529ca6892316459df3d7d82f57124e1c00e84f6138d` |
| 15 | `theorem` | [repair_capacity_arithmetic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/repair-capacity-arithmetic--6a2f260dfcf65cff11d747cf.md) | 144 | `result-track:6a2f260dfcf65cff11d747cf6e2367b7d711f81d1e976a0810eded516999946c` |
| 16 | `theorem` | [zero_capacity_has_no_partner](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/zero-capacity-has-no-partner--9149c2c9f2b7db850c6e04af.md) | 147 | `result-track:9149c2c9f2b7db850c6e04af43bf567b6a56f70e451cd850e67a4c23ad6bd7db` |
| 17 | `def` | [usedRepairPositions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/usedrepairpositions--867116d6c47debbeaa0c71c1.md) | 150 | `declaration-track:867116d6c47debbeaa0c71c1fbe9dc4123422802bf26b1c64d7ee7978c50f784` |
| 18 | `theorem` | [trace_left_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/trace-left-injective--e834da94e4416335939d8f6e.md) | 153 | `result-track:e834da94e4416335939d8f6e5249b4d8f48323ead09909962ba4304ddc88cdd8` |
| 19 | `theorem` | [usedRepairPositions_window_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/usedrepairpositions-window-card--643d3ec7738ac1b74b726528.md) | 167 | `result-track:643d3ec7738ac1b74b72652821774f73b330b98247dd8416ec478b8d5ede2bd6` |
| 20 | `theorem` | [originalBad_window_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/originalbad-window-card--ac2e93b178902fb26667cc77.md) | 200 | `result-track:ac2e93b178902fb26667cc7706cdfb56dc95022ad2887cf27cb252ce6f4d87d4` |
| 21 | `theorem` | [trace_fixes_before](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/trace-fixes-before--1439bcb8a1195eee9eed8ce7.md) | 211 | `result-track:1439bcb8a1195eee9eed8ce76244514b08bfff9de48d7d33b0d809e78a282c03` |
| 22 | `theorem` | [supportsDisjoint_append_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/supportsdisjoint-append-swap--2fdbb9fdb8b256a374e624bc.md) | 227 | `result-track:2fdbb9fdb8b256a374e624bcee2947b8f8ee6c04ab337e29ee238df952be331f` |
| 23 | `theorem` | [bounded_repair_trace_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/bounded-repair-trace-aux--3618de1fb41e24d91e87d3cf.md) | 246 | `result-track:3618de1fb41e24d91e87d3cff52943426f2aa5a6a4ce1c98d2e31a735c37f173` |
| 24 | `theorem` | [goodRepairGeometry_exists_trace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/goodrepairgeometry-exists-trace--57e87e45fc71b73543305162.md) | 333 | `result-track:57e87e45fc71b73543305162b17b7ff73c1d429d1d96aea63f6cd299a82dbd24` |
| 25 | `theorem` | [goodRepairGeometry_valid_permutation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/goodrepairgeometry-valid-permutation--18beda04bf8ebe765bf02639.md) | 348 | `result-track:18beda04bf8ebe765bf02639c528bfe1243bd7ebfe95edd4ff535e051fe33d50` |
| 26 | `theorem` | [local_swap_can_create_collision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/local-swap-can-create-collision--4b6ab722d7774af7dd81cbe8.md) | 363 | `result-track:4b6ab722d7774af7dd81cbe879963e19667a4912fca719aed834b166be32bd88` |
| 27 | `theorem` | [intersecting_trace_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/declarations/intersecting-trace-rejected--02ee1921adb17f3a4fd5fc0c.md) | 367 | `result-track:02ee1921adb17f3a4fd5fc0cdba6dc58da9155304365a9edad5560cc0da41ff7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
