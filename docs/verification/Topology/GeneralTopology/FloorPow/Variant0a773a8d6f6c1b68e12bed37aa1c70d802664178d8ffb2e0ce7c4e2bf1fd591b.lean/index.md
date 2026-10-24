# Verification target: GRWTSK.Topology.GeneralTopology.FloorPow.Variant0a773a8d6f6c1b68e12bed37aa1c70d802664178d8ffb2e0ce7c4e2bf1fd591b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3eec9758201c4cbd536971f29b4f2da1c2ac9344",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variant0a773a8d6f6c1b68e12bed37aa1c70d802664178d8ffb2e0ce7c4e2bf1fd591b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant0a773a8d6f6c1b68e12bed37aa1c70d802664178d8ffb2e0ce7c4e2bf1fd591b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant0a773a8d6f6c1b68e12bed37aa1c70d802664178d8ffb2e0ce7c4e2bf1fd591b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3eec9758201c4cbd536971f29b4f2da1c2ac9344`.

Source path: `GRWTSK/Topology/GeneralTopology/FloorPow/Variant0a773a8d6f6c1b68e12bed37aa1c70d802664178d8ffb2e0ce7c4e2bf1fd591b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FloorPow/Variant0a773a8d6f6c1b68e12bed37aa1c70d802664178d8ffb2e0ce7c4e2bf1fd591b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_div_of_monotone_of_exists_subseq_tendsto_div](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant0a773a8d6f6c1b68e12bed37aa1c70d802664178d8ffb2e0ce7c4e2bf1fd591b.lean/declarations/tendsto-div-of-monotone-of-exists-subseq-tendsto-div--88a918dc618e987e6a4c87da.md) | 34 | `result-track:88a918dc618e987e6a4c87da1ca030ed67ebfce1871d67e8c5db7394ea90a46e` |
| 2 | `theorem` | [tendsto_div_of_monotone_of_tendsto_div_floor_pow](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant0a773a8d6f6c1b68e12bed37aa1c70d802664178d8ffb2e0ce7c4e2bf1fd591b.lean/declarations/tendsto-div-of-monotone-of-tendsto-div-floor-pow--7787289810db3a1fe4339d76.md) | 193 | `result-track:7787289810db3a1fe4339d76d610da6b0d0d908f08b7f3b84cf0628394655eca` |
| 3 | `theorem` | [sum_div_pow_sq_le_div_sq](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant0a773a8d6f6c1b68e12bed37aa1c70d802664178d8ffb2e0ce7c4e2bf1fd591b.lean/declarations/sum-div-pow-sq-le-div-sq--9070c3c37e55866db633cdb5.md) | 226 | `result-track:9070c3c37e55866db633cdb54c124445b70a9eed722c7258ef5e5dc05072d673` |
| 4 | `theorem` | [mul_pow_le_nat_floor_pow](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant0a773a8d6f6c1b68e12bed37aa1c70d802664178d8ffb2e0ce7c4e2bf1fd591b.lean/declarations/mul-pow-le-nat-floor-pow--08db4833ea7050b5ba5be875.md) | 274 | `result-track:08db4833ea7050b5ba5be8754b2c992f9def764924f3afe3476f54fe3f98d8ca` |
| 5 | `theorem` | [sum_div_nat_floor_pow_sq_le_div_sq](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant0a773a8d6f6c1b68e12bed37aa1c70d802664178d8ffb2e0ce7c4e2bf1fd591b.lean/declarations/sum-div-nat-floor-pow-sq-le-div-sq--05c000e5c395902ffc6e4e28.md) | 287 | `result-track:05c000e5c395902ffc6e4e28b051e9785a13dd435e1a3967af7c0bdb8f900d26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
