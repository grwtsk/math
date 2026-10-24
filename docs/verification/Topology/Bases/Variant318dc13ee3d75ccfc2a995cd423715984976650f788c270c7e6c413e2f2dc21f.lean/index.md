# Verification target: GRWTSK.Topology.Bases.Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c149838e3b14ebc4d39426e8091b745f9194d99",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/index.md) · [Full source](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c149838e3b14ebc4d39426e8091b745f9194d99`.

Source path: `GRWTSK/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Nonarchimedean.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.FilterBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Pointwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingSubgroupsBasis](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/ringsubgroupsbasis--77a900a213ee1e72771968f1.md) | 45 | `declaration-track:77a900a213ee1e72771968f19ea258d9953ab945258d759d40feac737ca624b7` |
| 2 | `theorem` | [of_comm](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/of-comm--d9db935052e473f7ab8033be.md) | 63 | `result-track:d9db935052e473f7ab8033bef5861af63e9012cd5457597c0b8a2a7cb8d9c136` |
| 3 | `def` | [toRingFilterBasis](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/toringfilterbasis--502a0d2d2964d1f9ef7a694b.md) | 78 | `declaration-track:502a0d2d2964d1f9ef7a694b5e2faa4d3487e4c2a17e4ede43d507845b02b344` |
| 4 | `theorem` | [mem_addGroupFilterBasis_iff](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/mem-addgroupfilterbasis-iff--9a44e19d1056af251234bc65.md) | 139 | `result-track:9a44e19d1056af251234bc65ea8f62aedc1cf8615ced51b0e153b6f454182bc9` |
| 5 | `theorem` | [mem_addGroupFilterBasis](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/mem-addgroupfilterbasis--73a1b3854199801f8b122a42.md) | 144 | `result-track:73a1b3854199801f8b122a42b3ace255a6f94608018147b46cf249956ad77c32` |
| 6 | `def` | [topology](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/topology--f184184d53f4a2aa4a52f045.md) | 150 | `declaration-track:f184184d53f4a2aa4a52f045b50b6d326dc741fc2e42ad3a2d18538a86d21de9` |
| 7 | `theorem` | [hasBasis_nhds_zero](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/hasbasis-nhds-zero--830c10bf0e693e83247d4d29.md) | 154 | `result-track:830c10bf0e693e83247d4d29c372930b8caaa695b1e52dbe7ff3af1dde61972a` |
| 8 | `theorem` | [hasBasis_nhds](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/hasbasis-nhds--7fa1dd9df14970c9372649fe.md) | 165 | `result-track:7fa1dd9df14970c9372649fee55238d836ad1668340321375f89f1b855001672` |
| 9 | `def` | [openAddSubgroup](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/openaddsubgroup--177eaa788b9420059858ac3a.md) | 192 | `declaration-track:177eaa788b9420059858ac3a7ee7341bc380ceb77dba67eb68245fb047c33233` |
| 10 | `theorem` | [nonarchimedean](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/nonarchimedean--edb50d7f70f657a6cebc73e8.md) | 206 | `result-track:edb50d7f70f657a6cebc73e8e953a82a6abe74e289a0d13e7f1603951bcac1e5` |
| 11 | `structure` | [SubmodulesRingBasis](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/submodulesringbasis--bbab1b8ddf741fd5bb0cff4f.md) | 221 | `declaration-track:bbab1b8ddf741fd5bb0cff4f3668c238e393b5e627e1dddfed0c11350a6e5315` |
| 12 | `theorem` | [toRing_subgroups_basis](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/toring-subgroups-basis--c3d2b7db3c388fb4073b184c.md) | 236 | `result-track:c3d2b7db3c388fb4073b184c5176fece93df0772342addbf836994cfe1de623c` |
| 13 | `def` | [topology](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/topology--d495b07b676f1e5eed3577be.md) | 247 | `declaration-track:d495b07b676f1e5eed3577be6eb4b952dd8f70100745eb0769c90bc40e0241cf` |
| 14 | `structure` | [SubmodulesBasis](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/submodulesbasis--f9dbb6cd76a6b3f820152c5f.md) | 258 | `declaration-track:f9dbb6cd76a6b3f820152c5feee1dffdef55edc6bd2b78c3c55c0a43f4bda917` |
| 15 | `def` | [toModuleFilterBasis](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/tomodulefilterbasis--6bf005020fa99c5506e7f320.md) | 271 | `declaration-track:6bf005020fa99c5506e7f32084f221237fb651f396aab731007cab66ed15e740` |
| 16 | `def` | [topology](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/topology--0e6c604f06177d46edcb22f6.md) | 329 | `declaration-track:0e6c604f06177d46edcb22f61bccad2b38ace2aa240f3c13983bd9229a27dbe5` |
| 17 | `def` | [openAddSubgroup](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/openaddsubgroup--71405525273fe92f970b6f92.md) | 335 | `declaration-track:71405525273fe92f970b6f921c36d40c0441c653f740d815e94034ec500eaa91` |
| 18 | `theorem` | [nonarchimedean](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/nonarchimedean--443910d23c0210751f3dca16.md) | 351 | `result-track:443910d23c0210751f3dca16ab19ef62bc20e751b2989e22625f416803ad7ddb` |
| 19 | `theorem` | [SubmodulesRingBasis.toSubmodulesBasis](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/submodulesringbasis-tosubmodulesbasis--4de68f5ec9b03eda319c7113.md) | 380 | `result-track:4de68f5ec9b03eda319c7113cd49e0fe09d0ab7f820c4bbdcf05c583b78a48db` |
| 20 | `example` | [(anonymous)](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/example--1b51bb6183b55bba2e1f7e60.md) | 385 | `declaration-track:1b51bb6183b55bba2e1f7e602d02acc5634884ed3e3816ff1611a2624ddec40e` |
| 21 | `structure` | [RingFilterBasis.SubmodulesBasis](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/ringfilterbasis-submodulesbasis--9b43d8cc24d0b73efdb04a48.md) | 393 | `declaration-track:9b43d8cc24d0b73efdb04a484e77a463e1c44ed0db314406ee31f5e9e705d9f7` |
| 22 | `theorem` | [RingFilterBasis.submodulesBasisIsBasis](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/ringfilterbasis-submodulesbasisisbasis--dde6b2af34d851cf0580591c.md) | 402 | `result-track:dde6b2af34d851cf0580591cfbe3a313d3b8ff2ea7f27fd3e7e90993336bb349` |
| 23 | `def` | [RingFilterBasis.moduleFilterBasis](../../../../mathematics/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/declarations/ringfilterbasis-modulefilterbasis--d0acb242c1305111851a2ed0.md) | 416 | `declaration-track:d0acb242c1305111851a2ed0135fe351135854a2d7a10e694acc58f5d718291a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
