# Verification target: GRWTSK.Algebra.LinearAlgebra.Bases.Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "142741d061222839982ed6e7ff6360baf45508aa",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `142741d061222839982ed6e7ff6360baf45508aa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.FilterBasis` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingSubgroupsBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/ringsubgroupsbasis--c96b7d03170007582c55ef0b.md) | 44 | `declaration-track:c96b7d03170007582c55ef0b79dcbb9e64584a51a3e989d00fc0817d0a3b381d` |
| 2 | `theorem` | [of_comm](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/of-comm--2daa269448f313f4fe5e7859.md) | 61 | `result-track:2daa269448f313f4fe5e7859c30595abb064e62ff7764fecfa3385005f6c331a` |
| 3 | `def` | [toRingFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/toringfilterbasis--300ad1d74d07157846cf6e32.md) | 71 | `declaration-track:300ad1d74d07157846cf6e327e405358e47aa1df6e2555d0b243b977af201dd0` |
| 4 | `theorem` | [mem_addGroupFilterBasis_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/mem-addgroupfilterbasis-iff--987e271fec212e2d5ed6275c.md) | 131 | `result-track:987e271fec212e2d5ed6275cc12fa0c9659b5b2252297f9b74188bcf7a165554` |
| 5 | `theorem` | [mem_addGroupFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/mem-addgroupfilterbasis--0f2d6a367d05f33b7f400f09.md) | 135 | `result-track:0f2d6a367d05f33b7f400f09e50728fbe79fc54e447884674e4e18ee5314c69d` |
| 6 | `def` | [topology](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/topology--a5800f75da45ade9130f7d02.md) | 140 | `declaration-track:a5800f75da45ade9130f7d02ced4cbe6611b9c6f49ca40afc496aef09ebc8d04` |
| 7 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/hasbasis-nhds-zero--c8d1a03f9fcc72acd270f44d.md) | 143 | `result-track:c8d1a03f9fcc72acd270f44d795076c5a87903a2402c802da6a9468cf11f971d` |
| 8 | `theorem` | [hasBasis_nhds](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/hasbasis-nhds--878e56ebc28cf0482c62166e.md) | 153 | `result-track:878e56ebc28cf0482c62166e963f3592276bec7799bf71a750ab262b5f1e350e` |
| 9 | `def` | [openAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/openaddsubgroup--3d9d65a56f3b0b349b9e1537.md) | 179 | `declaration-track:3d9d65a56f3b0b349b9e1537964d0cf696443d18f70b25fef8ce981393216801` |
| 10 | `theorem` | [nonarchimedean](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/nonarchimedean--f9b5fedb3d9166062e44dd8d.md) | 191 | `result-track:f9b5fedb3d9166062e44dd8dd13c79b384741f4f26c2ecb3e97dc3a063792560` |
| 11 | `structure` | [SubmodulesRingBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/submodulesringbasis--33da360c5be125536ae7557b.md) | 205 | `declaration-track:33da360c5be125536ae7557bec2376a5b6f9a59a4f226e6e5cbe00b1614f4599` |
| 12 | `theorem` | [toRing_subgroups_basis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/toring-subgroups-basis--20958ca1989f53d80ee93edc.md) | 219 | `result-track:20958ca1989f53d80ee93edc4dd0e6f34fb20a699923cbc21a6ad23431083188` |
| 13 | `def` | [topology](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/topology--b0e971b989af623e8653f932.md) | 229 | `declaration-track:b0e971b989af623e8653f932b91b5cea0c0f514c9eb8dc94cd8b46b7165ab539` |
| 14 | `structure` | [SubmodulesBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/submodulesbasis--c5ed594b6355f47dd331b52d.md) | 239 | `declaration-track:c5ed594b6355f47dd331b52d3af11cfc020fad7d6f819cf2a320053d5763f518` |
| 15 | `def` | [toModuleFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/tomodulefilterbasis--5789a21a3074c589c6a65deb.md) | 251 | `declaration-track:5789a21a3074c589c6a65deb5662b68f229e6f1687409ebfda8af5887810a7fd` |
| 16 | `def` | [topology](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/topology--787e41ea8a65d0d3533eec61.md) | 308 | `declaration-track:787e41ea8a65d0d3533eec61996fe7d20e8722922bbd93f423420ff54cfd9d18` |
| 17 | `def` | [openAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/openaddsubgroup--7487008094e550622752acec.md) | 313 | `declaration-track:7487008094e550622752acecca7a662a749088471e64ea85611c9f184891546a` |
| 18 | `theorem` | [nonarchimedean](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/nonarchimedean--96b717de452c02521b0ff013.md) | 328 | `result-track:96b717de452c02521b0ff0135c3eec726f32466933b89c348c5f09851a2c575f` |
| 19 | `theorem` | [SubmodulesRingBasis.toSubmodulesBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/submodulesringbasis-tosubmodulesbasis--edda0a92ddafdc9c32ae3bf1.md) | 357 | `result-track:edda0a92ddafdc9c32ae3bf19c30d13e223c9b55e73b639d401ef154e35bed76` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/example--a0196e6d7dc26286a3b2e7af.md) | 361 | `declaration-track:a0196e6d7dc26286a3b2e7af06d6584fe9f39eeaea3b03afab288ddc00e64939` |
| 21 | `structure` | [RingFilterBasis.SubmodulesBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/ringfilterbasis-submodulesbasis--78c6fabb2d163f0fba581cb8.md) | 369 | `declaration-track:78c6fabb2d163f0fba581cb84752dfb43767b586d0e7d92bf2b2ed2d39828fff` |
| 22 | `theorem` | [RingFilterBasis.submodulesBasisIsBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/ringfilterbasis-submodulesbasisisbasis--bc08c95431be62f0ba51c66a.md) | 377 | `result-track:bc08c95431be62f0ba51c66a8e23e0bab118aff444ff6bd3eb233b58ae8df1ad` |
| 23 | `def` | [RingFilterBasis.moduleFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/Bases/Varianta5329e8c5079366fcf2ed7b2f134cf2ac863378b469a4ef25c760e77f4a01f0d.lean/declarations/ringfilterbasis-modulefilterbasis--66a7f9f1486af73c6be42be3.md) | 390 | `declaration-track:66a7f9f1486af73c6be42be33168d2566f4e4479a170b62a328e8e6f1ddbff7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
