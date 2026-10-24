# Verification target: GRWTSK.Topology.GeneralTopology.CompactConvergence.Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0788ac245737c102988379e8f3697a91ffdef77f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0788ac245737c102988379e8f3697a91ffdef77f`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactConvNhd](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactconvnhd--ccd55f183c358fa6f47d6842.md) | 104 | `declaration-track:ccd55f183c358fa6f47d68426ddfe69e7a2303ea248dc49ffcb51138b6541b5f` |
| 2 | `theorem` | [self_mem_compactConvNhd](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/self-mem-compactconvnhd--cb6a3247ef24b26928ba6f3e.md) | 110 | `result-track:cb6a3247ef24b26928ba6f3e531814c8fd5188450d17a0caeacb17e6ae038e99` |
| 3 | `theorem` | [compactConvNhd_mono](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactconvnhd-mono--e0e523569ddacb0cf42a6ed8.md) | 115 | `result-track:e0e523569ddacb0cf42a6ed855a5d897855893c1a75dcc69163e504faa0d673a` |
| 4 | `theorem` | [compactConvNhd_mem_comp](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactconvnhd-mem-comp--5794092b19f1a04bf84494b4.md) | 119 | `result-track:5794092b19f1a04bf84494b45271da0323245b9749ddc6c539a9229c7f2eda99` |
| 5 | `theorem` | [compactConvNhd_nhd_basis](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactconvnhd-nhd-basis--89e0cd74a40a449f40480b3d.md) | 126 | `result-track:89e0cd74a40a449f40480b3d403fa524189a3d2c54b36e0cdbb9c5800607b3cd` |
| 6 | `theorem` | [compactConvNhd_subset_inter](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactconvnhd-subset-inter--678681be0111fbd4259920e3.md) | 135 | `result-track:678681be0111fbd4259920e30f69dbb97e2b8dee906e15f1baa550ff37846985` |
| 7 | `theorem` | [compactConvNhd_compact_entourage_nonempty](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactconvnhd-compact-entourage-nonempty--63ebeee42016106d6374f593.md) | 142 | `result-track:63ebeee42016106d6374f59309c495e24aceb5336c025525ec4328e3c6a7706a` |
| 8 | `theorem` | [compactConvNhd_filter_isBasis](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactconvnhd-filter-isbasis--b25f1db2c4fe79ac2192e9f4.md) | 147 | `result-track:b25f1db2c4fe79ac2192e9f47847d47f8795297626d79353ae8e70fe803fabdb` |
| 9 | `def` | [compactConvergenceFilterBasis](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactconvergencefilterbasis--319687e15a4345669063b360.md) | 159 | `declaration-track:319687e15a4345669063b36093356343ece1f3b55391bf66779c381661e88136` |
| 10 | `theorem` | [mem_compactConvergence_nhd_filter](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/mem-compactconvergence-nhd-filter--c8d86fd08caf8b3860e28bb1.md) | 163 | `result-track:c8d86fd08caf8b3860e28bb1cc3ec79193ac0446a366eb7268cb58e748d6df9a` |
| 11 | `def` | [compactConvergenceTopology](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactconvergencetopology--84ff167491b7babbd51f5adf.md) | 177 | `declaration-track:84ff167491b7babbd51f5adf2240c50227ff076778333cc8dba90382679d8d67` |
| 12 | `theorem` | [nhds_compactConvergence](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/nhds-compactconvergence--6d69870d7e30fa41dede68ed.md) | 181 | `result-track:6d69870d7e30fa41dede68ed929e2a4272d6e13b574b80aa2424ccce3179fa34` |
| 13 | `theorem` | [hasBasis_nhds_compactConvergence](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/hasbasis-nhds-compactconvergence--2ec2101364d7000920d9d94a.md) | 191 | `result-track:2ec2101364d7000920d9d94a5e39d9ef81b844b11d2d513021665234e0933621` |
| 14 | `theorem` | [tendsto_iff_forall_compact_tendstoUniformlyOn'](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/tendsto-iff-forall-compact-tendstouniformlyon--1ec55edabf05733494be6fc4.md) | 201 | `result-track:1ec55edabf05733494be6fc4411463d167b92c911d24899bf4bbda02b83a0f86` |
| 15 | `theorem` | [compactConvNhd_subset_compactOpen](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactconvnhd-subset-compactopen--46998f171641253ec50c71a7.md) | 216 | `result-track:46998f171641253ec50c71a7538ec5387daa958c737e9ec49867456743727085` |
| 16 | `theorem` | [iInter_compactOpen_gen_subset_compactConvNhd](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/iinter-compactopen-gen-subset-compactconvnhd--9deca749481d48da5faaa1b2.md) | 230 | `result-track:9deca749481d48da5faaa1b2a3ee38e7069468e95bf3123ac49acd6106618749` |
| 17 | `theorem` | [compactOpen_eq_compactConvergence](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactopen-eq-compactconvergence--c92bca899e6ebd23b4e3325c.md) | 276 | `result-track:c92bca899e6ebd23b4e3325c6f8cac99b098e2750a3ff8d3db63db09dcec887c` |
| 18 | `def` | [compactConvergenceUniformity](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactconvergenceuniformity--f3a62004e1b2c084ff5217a3.md) | 298 | `declaration-track:f3a62004e1b2c084ff5217a3a60b2e3482c4b0918dc113691798cd40e912f939` |
| 19 | `theorem` | [hasBasis_compactConvergenceUniformity_aux](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/hasbasis-compactconvergenceuniformity-aux--bbe610952aa86a973e003c54.md) | 303 | `result-track:bbe610952aa86a973e003c5489a0b91899e522b6b847eb624043889c7206beb1` |
| 20 | `theorem` | [mem_compactConvergenceUniformity](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/mem-compactconvergenceuniformity--24c66cca1c8cbdef897804e5.md) | 317 | `result-track:24c66cca1c8cbdef897804e501145d558e129ce8ee35fabb2e4bc7440c953891` |
| 21 | `instance` | [compactConvergenceUniformSpace](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/compactconvergenceuniformspace--584fc10ba53269d9925572c4.md) | 326 | `declaration-track:584fc10ba53269d9925572c4dcc6fac83f56ea365b2f381d785bacc37abeb1e9` |
| 22 | `theorem` | [mem_compactConvergence_entourage_iff](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/mem-compactconvergence-entourage-iff--4bbb8ad5cb05b2822042e090.md) | 364 | `result-track:4bbb8ad5cb05b2822042e09049583bcb5c9cfa2d272225689fb613797559d0c9` |
| 23 | `theorem` | [hasBasis_compactConvergenceUniformity](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/hasbasis-compactconvergenceuniformity--c2467b04ab899a13d597b170.md) | 371 | `result-track:c2467b04ab899a13d597b170fa69c4345df80892a7c1faf77fe75e843402eb03` |
| 24 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.CompactConvNhd.Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.Filter.HasBasis.compactConvergenceUniformity](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/root-grwtsk-topology-generaltopology-compactconvnhd-variantebaa5fbebdfb9--a941dc266db0b595223133bb.md) | 377 | `result-track:a941dc266db0b595223133bb607741eac2946763341a04856c00433178b4fdec` |
| 25 | `theorem` | [tendsto_iff_forall_compact_tendstoUniformlyOn](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/tendsto-iff-forall-compact-tendstouniformlyon--96d161e9e496bff1e90b29a3.md) | 391 | `result-track:96d161e9e496bff1e90b29a36bda753ad89de963aca6067e21a09e2709d87e09` |
| 26 | `theorem` | [tendsto_of_tendstoLocallyUniformly](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/tendsto-of-tendstolocallyuniformly--a35b139a1239715a0c6b0742.md) | 397 | `result-track:a35b139a1239715a0c6b0742aba6356dd3309a51da43d658f2195d4d1dea845f` |
| 27 | `theorem` | [tendstoLocallyUniformly_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/tendstolocallyuniformly-of-tendsto--dbff67ee37bfb993a892de3a.md) | 409 | `result-track:dbff67ee37bfb993a892de3a0cdc684576fa84a6f484809eb117506a10ed9dbf` |
| 28 | `theorem` | [tendsto_iff_tendstoLocallyUniformly](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/tendsto-iff-tendstolocallyuniformly--04b8dce211e250c66d2aa091.md) | 423 | `result-track:04b8dce211e250c66d2aa0917284eab6168e8ebfb39fd1ec6cf843f64cd3f6d4` |
| 29 | `theorem` | [hasBasis_compactConvergenceUniformity_of_compact](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/hasbasis-compactconvergenceuniformity-of-compact--4eb501ea4cd924360dd68770.md) | 432 | `result-track:4eb501ea4cd924360dd68770e7aa4a87394842a446026b826de12f5328d29cd8` |
| 30 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/declarations/tendsto-iff-tendstouniformly--e581e4ec56dd84da0635abbc.md) | 442 | `result-track:e581e4ec56dd84da0635abbca7aebb496e6038ab8b65e5e86ec8db7bf25a4815` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
