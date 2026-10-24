# Verification target: GRWTSK.Topology.GeneralTopology.KrullTopology.Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fa2e693e3125639c857d33a190d84f73a2d5559",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fa2e693e3125639c857d33a190d84f73a2d5559`.

Source path: `GRWTSK/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Galois` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.FilterBasis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IntermediateField.map_mono](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/intermediatefield-map-mono--832d3e0989fa2e8507c74b70.md) | 61 | `result-track:832d3e0989fa2e8507c74b707e08e47db893ab593a2e4aed2fe230a9c54f9aad` |
| 2 | `theorem` | [IntermediateField.map_id](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/intermediatefield-map-id--01ff84cf53d2f8ad498552f0.md) | 68 | `result-track:01ff84cf53d2f8ad498552f0434794a21d42a0bc45fe62e01f4080128aa22598` |
| 3 | `instance` | [im_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/im-finitedimensional--c7c10dac9036301062880e65.md) | 75 | `declaration-track:c7c10dac9036301062880e655e21ff5d4cb1d91bd4eba4989c0372b8b800214b` |
| 4 | `def` | [finiteExts](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/finiteexts--457b2fbe2627c5ef806c3096.md) | 83 | `declaration-track:457b2fbe2627c5ef806c3096827e252837dd1f9070740cea9c49533099e8d5e6` |
| 5 | `def` | [fixedByFinite](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/fixedbyfinite--9baca3db84259f67f27947ed.md) | 90 | `declaration-track:9baca3db84259f67f27947edd6815da27a19a537f3e5bada03dda0e694798057` |
| 6 | `theorem` | [IntermediateField.finiteDimensional_bot](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/intermediatefield-finitedimensional-bot--aff90ea4a0c2b6b21d645a7b.md) | 95 | `result-track:aff90ea4a0c2b6b21d645a7bee9f14fa364c2e9f9e3be9cb741954f244f0103e` |
| 7 | `theorem` | [IntermediateField.fixingSubgroup.bot](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/intermediatefield-fixingsubgroup-bot--91debb464706bd97af34f97b.md) | 101 | `result-track:91debb464706bd97af34f97b9e35cd5d05104ea7236b3f7bcbcb22f0dbaed66c` |
| 8 | `theorem` | [top_fixedByFinite](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/top-fixedbyfinite--8ee2ad063cd3c0cf9f177e39.md) | 112 | `result-track:8ee2ad063cd3c0cf9f177e399391737ef279fff290f602612cab809f3ab66821` |
| 9 | `theorem` | [finiteDimensional_sup](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/finitedimensional-sup--8c8d9492e747ce7504fb4c23.md) | 119 | `result-track:8c8d9492e747ce7504fb4c23aafa7e995c9516037c4d5baeeaab8c8951ed72f1` |
| 10 | `theorem` | [IntermediateField.mem_fixingSubgroup_iff](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/intermediatefield-mem-fixingsubgroup-iff--23d63a0ad07e8a7f5a8af555.md) | 126 | `result-track:23d63a0ad07e8a7f5a8af5555f4149bb3340faa23c3c97b1799ce5f2ff9d380e` |
| 11 | `theorem` | [IntermediateField.fixingSubgroup.antimono](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/intermediatefield-fixingsubgroup-antimono--15c289be30032b0fd91c7388.md) | 132 | `result-track:15c289be30032b0fd91c738891623e8853895f03149086029e86a6a292077ef0` |
| 12 | `def` | [galBasis](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/galbasis--0c2804f49c0074f85c6bc210.md) | 140 | `declaration-track:0c2804f49c0074f85c6bc2105e9a0896185c61756ec51c884e96bb75b9a46059` |
| 13 | `theorem` | [mem_galBasis_iff](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/mem-galbasis-iff--f38722cbc9b6e8614825cf21.md) | 155 | `result-track:f38722cbc9b6e8614825cf212928d350c09a64020b1214cb1148353d679eab38` |
| 14 | `def` | [galGroupBasis](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/galgroupbasis--d1c13b23769ac43e31287936.md) | 162 | `declaration-track:d1c13b23769ac43e31287936bb2f47f65a1bdca75efcdde6e991a45fe7b82368` |
| 15 | `instance` | [krullTopology](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/krulltopology--4c2622bb47a3f4736fd77788.md) | 196 | `declaration-track:4c2622bb47a3f4736fd77788646b3dffb73bcb918499132c4375d643de5d1cd7` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/instance--a6d34f083c559474fd54bd29.md) | 202 | `declaration-track:a6d34f083c559474fd54bd29a45a19cc85285c47f92d48bf3a826a3859ecb3ab` |
| 17 | `theorem` | [IntermediateField.fixingSubgroup_isOpen](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/intermediatefield-fixingsubgroup-isopen--dd6bd5fc9a9be2f9731e9b7a.md) | 211 | `result-track:dd6bd5fc9a9be2f9731e9b7ac30e2dbefc07c21834788b6ce1398a2cb20324e0` |
| 18 | `theorem` | [IntermediateField.fixingSubgroup_isClosed](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/intermediatefield-fixingsubgroup-isclosed--ead5e2703bd573944002e347.md) | 222 | `result-track:ead5e2703bd573944002e3470fd4356e34451fe234d7915d96ae8edb5f6cd795` |
| 19 | `theorem` | [krullTopology_t2](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/krulltopology-t2--9ded91a03e30b3dc63690efb.md) | 229 | `result-track:9ded91a03e30b3dc63690efb4c37231983ec8662ac8bd0ffb37673e5564ae6bd` |
| 20 | `theorem` | [krullTopology_totallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/declarations/krulltopology-totallydisconnected--fbffa121c8e9f88154bef71c.md) | 268 | `result-track:fbffa121c8e9f88154bef71cac411a2b239fa17913c6d05e9f695b4f45723108` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
