# Verification target: GRWTSK.Algebra.LinearAlgebra.Bases.Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dcc75fecd75856b15e99854465d1ec1ef53c0ae",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dcc75fecd75856b15e99854465d1ec1ef53c0ae`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.FilterBasis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingSubgroupsBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/ringsubgroupsbasis--0f0ed97f793e26e9f393e80a.md) | 36 | `declaration-track:0f0ed97f793e26e9f393e80a9958a85bcb97137304166b75814ec6ad9d6e1ca2` |
| 2 | `theorem` | [of_comm](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/of-comm--7642af7331112df30a348c17.md) | 53 | `result-track:7642af7331112df30a348c17810c1533e11a2c336b21717a7de1fe1b06cdfd77` |
| 3 | `def` | [toRingFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/toringfilterbasis--03d6fc479ef98ab343d70662.md) | 63 | `declaration-track:03d6fc479ef98ab343d70662612e8ec07800badbdef03bef967164157d2630d9` |
| 4 | `theorem` | [mem_addGroupFilterBasis_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/mem-addgroupfilterbasis-iff--22325d65027890a1a79caa18.md) | 123 | `result-track:22325d65027890a1a79caa18e8761c576fdfed94a1e00d5d400a851af0fd7ab4` |
| 5 | `theorem` | [mem_addGroupFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/mem-addgroupfilterbasis--99db2ba9f0268b8adca47614.md) | 127 | `result-track:99db2ba9f0268b8adca47614ce161db4a80b17f025a248746f798c2a42353958` |
| 6 | `def` | [topology](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/topology--1f1d98b2d826fb05dbdd8761.md) | 132 | `declaration-track:1f1d98b2d826fb05dbdd876140a3e05719c18a3341a5f7dd1c51d79faabebff5` |
| 7 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/hasbasis-nhds-zero--d6a703ed747843cc8a2d5a71.md) | 135 | `result-track:d6a703ed747843cc8a2d5a7127e9237cbe36cdc546d1ae44fdfa86f4456ffdc6` |
| 8 | `theorem` | [hasBasis_nhds](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/hasbasis-nhds--72a71279f8879e9f0b8512a7.md) | 145 | `result-track:72a71279f8879e9f0b8512a7b1f4c7ea11cabecebf8e9996de81f771ea73e2b0` |
| 9 | `def` | [openAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/openaddsubgroup--58b8dbebaa1e286a58a66281.md) | 171 | `declaration-track:58b8dbebaa1e286a58a66281ca8f5d0da28a589c4ac1095ff1559fcaae6f50e7` |
| 10 | `theorem` | [nonarchimedean](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/nonarchimedean--eded0b6b69aa11ff71be946d.md) | 183 | `result-track:eded0b6b69aa11ff71be946dc8dd291e40c7ac58f22465003c932dca56866e26` |
| 11 | `structure` | [SubmodulesRingBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/submodulesringbasis--c28228903660b21eed2f9e55.md) | 197 | `declaration-track:c28228903660b21eed2f9e55564bbdd92cb6826112b673b7920d96e9b538b36e` |
| 12 | `theorem` | [toRing_subgroups_basis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/toring-subgroups-basis--e281f86e0ec6f64384d324a3.md) | 211 | `result-track:e281f86e0ec6f64384d324a3c32f2ae0fc650c40cec20f240d5c4c5d68bd156c` |
| 13 | `def` | [topology](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/topology--b56ee2e506138d282695253e.md) | 221 | `declaration-track:b56ee2e506138d282695253ed931f732c194215972e7369cfc299f854bffdfdc` |
| 14 | `structure` | [SubmodulesBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/submodulesbasis--407b27c643fdde8f7f959ccb.md) | 231 | `declaration-track:407b27c643fdde8f7f959ccb88a8819e0221afb49e2f6472dc79f64ff472de6f` |
| 15 | `def` | [toModuleFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/tomodulefilterbasis--49cda2184a982364da9ba78c.md) | 243 | `declaration-track:49cda2184a982364da9ba78c4f4e955f362b7b1b44cc350a25f0effe1feaef18` |
| 16 | `def` | [topology](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/topology--e4bd8196e87737e0cf13ec3d.md) | 300 | `declaration-track:e4bd8196e87737e0cf13ec3d37fb9649a8477632a28a32d23379bfd420fa752d` |
| 17 | `def` | [openAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/openaddsubgroup--f980f054a0fbf632ff03cbd3.md) | 305 | `declaration-track:f980f054a0fbf632ff03cbd321c401ed22dcc1f12fe337646ba30b78bbed3f03` |
| 18 | `theorem` | [nonarchimedean](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/nonarchimedean--06bb3d96b4062aa1f50ded04.md) | 320 | `result-track:06bb3d96b4062aa1f50ded045a90ec2a01f3ce0e774c23b499b500f2b28f1312` |
| 19 | `theorem` | [SubmodulesRingBasis.toSubmodulesBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/submodulesringbasis-tosubmodulesbasis--03b9a78480b5e2139fdc1768.md) | 349 | `result-track:03b9a78480b5e2139fdc17681a17b45e5bfa304e29b427fdc06f47991bbf33b7` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/example--334ae747da3dfb4ed355f551.md) | 353 | `declaration-track:334ae747da3dfb4ed355f55116981b1340794a77b953fe97914010b6a42478c2` |
| 21 | `structure` | [RingFilterBasis.SubmodulesBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/ringfilterbasis-submodulesbasis--f8145aff50c07cf07f97fe5f.md) | 361 | `declaration-track:f8145aff50c07cf07f97fe5fda96917aef4f5d25fc40272a5c13c1c3888190db` |
| 22 | `theorem` | [RingFilterBasis.submodulesBasisIsBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/ringfilterbasis-submodulesbasisisbasis--4eb3da74e7318318f915e00a.md) | 369 | `result-track:4eb3da74e7318318f915e00afea7dee948ec1df072effacff6a6b87f7b82edf9` |
| 23 | `def` | [RingFilterBasis.moduleFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Variant226eac72bc0f3e4e658780c3853e57d9a81c98dc3aa983cd4d6614096135c636.lean/declarations/ringfilterbasis-modulefilterbasis--208bc6779ab19cd02da92860.md) | 382 | `declaration-track:208bc6779ab19cd02da92860465ade0890c8de70e198c29943ab1331ab4a7a6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
