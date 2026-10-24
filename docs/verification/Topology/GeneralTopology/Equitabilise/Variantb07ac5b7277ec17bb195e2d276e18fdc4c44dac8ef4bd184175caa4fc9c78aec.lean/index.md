# Verification target: GRWTSK.Topology.GeneralTopology.Equitabilise.Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "905eea69c1178bc6dab85120fae2ea90c267caad",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `905eea69c1178bc6dab85120fae2ea90c267caad`.

Source path: `GRWTSK/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Canonical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Equipartition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [equitabilise_aux](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean/declarations/equitabilise-aux--6b3976d0e2bbc1e44678a6ff.md) | 41 | `result-track:6b3976d0e2bbc1e44678a6ff5eebe6dbe5c035caa3fb6f3f5c20e561eb526ee0` |
| 2 | `def` | [equitabilise](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean/declarations/equitabilise--039a6e47799f7535838fde3e.md) | 144 | `declaration-track:039a6e47799f7535838fde3e2b3483d6fd0f8cbd1e3de8eb3efb15ba48a07132` |
| 3 | `theorem` | [card_eq_of_mem_parts_equitabilise](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean/declarations/card-eq-of-mem-parts-equitabilise--aa349f8e98bfa1072e6c68af.md) | 149 | `result-track:aa349f8e98bfa1072e6c68afe895a9ae4529735faa5ef47408cc5f265dbab9d2` |
| 4 | `theorem` | [equitabilise_isEquipartition](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean/declarations/equitabilise-isequipartition--a2589c2a16474f52086da8ca.md) | 153 | `result-track:a2589c2a16474f52086da8caebf196dc49f1548adc56ba535db388f2ced46c1d` |
| 5 | `theorem` | [card_filter_equitabilise_big](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean/declarations/card-filter-equitabilise-big--23a27c2351297e3df6690d56.md) | 158 | `result-track:23a27c2351297e3df6690d56dc04ee79897897ca0e32bf76fbb0c88938284064` |
| 6 | `theorem` | [card_filter_equitabilise_small](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean/declarations/card-filter-equitabilise-small--df350bfa18ee08b16fb01f2a.md) | 161 | `result-track:df350bfa18ee08b16fb01f2a391ca8ba3e3178eddd6c9b1f5090cf4281c776b1` |
| 7 | `theorem` | [card_parts_equitabilise](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean/declarations/card-parts-equitabilise--69f6ed470dc33ccd863f9883.md) | 178 | `result-track:69f6ed470dc33ccd863f9883f9c3f9493f09f8f8617db9b9f2c237d3f7b54dcf` |
| 8 | `theorem` | [card_parts_equitabilise_subset_le](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean/declarations/card-parts-equitabilise-subset-le--5f3d080279bad01ce3f5904d.md) | 184 | `result-track:5f3d080279bad01ce3f5904defa8391b306d76dfab74b659c38e0edb20d06a2c` |
| 9 | `theorem` | [exists_equipartition_card_eq](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variantb07ac5b7277ec17bb195e2d276e18fdc4c44dac8ef4bd184175caa4fc9c78aec.lean/declarations/exists-equipartition-card-eq--1fefb643e5e598dfb6e4830e.md) | 191 | `result-track:1fefb643e5e598dfb6e4830e6072ddade22469b02331894de45b1603eab3125b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
