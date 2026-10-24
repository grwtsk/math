# Verification target: GRWTSK.Topology.AlgebraicTopology.Path.Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e72f2e002c138a3f907088a3e9ef56841bed2091",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e72f2e002c138a3f907088a3e9ef56841bed2091`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.PathConnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Homotopy](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/homotopy--e40b1f88f20fdecb4a6eda40.md) | 46 | `declaration-track:e40b1f88f20fdecb4a6eda40a86a7f3c8ef5febdf81521f3f4d0182e19ec9861` |
| 2 | `theorem` | [coeFn_injective](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/coefn-injective--76f55bb1f2fa5a5b59855375.md) | 55 | `result-track:76f55bb1f2fa5a5b59855375aa50621cc937cf852a7609266f07d51419c6ffdc` |
| 3 | `theorem` | [source](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/source--2784ee51233ddad92edcf444.md) | 59 | `result-track:2784ee51233ddad92edcf4445edc4a2ed99069a5eb3617fef1e5be1763c9a148` |
| 4 | `theorem` | [target](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/target--286294c001fa4a810f843b1e.md) | 64 | `result-track:286294c001fa4a810f843b1e76ef9ca38071a92dbc42adbb3f5b0d908e833cbb` |
| 5 | `def` | [eval](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/eval--2c7cc10825be56fd50a3556b.md) | 70 | `declaration-track:2c7cc10825be56fd50a3556b71d37d08539a974aa514c4a950f18b5a12813155` |
| 6 | `theorem` | [eval_zero](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/eval-zero--24a48fc6e5af7a2c233819a5.md) | 76 | `result-track:24a48fc6e5af7a2c233819a5457abff2ef9670289e7e154285b1ce13199a11c5` |
| 7 | `theorem` | [eval_one](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/eval-one--823a1ed7bbeaa5eca5470371.md) | 81 | `result-track:823a1ed7bbeaa5eca5470371c1f4c03cef23448835ff9f6c12b38bbbe06207f7` |
| 8 | `def` | [refl](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/refl--a14e3d8005df94a1630c7328.md) | 94 | `declaration-track:a14e3d8005df94a1630c7328124bb3d9bd1819f51ea3be5919c87f929b275dea` |
| 9 | `def` | [symm](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/symm--3bf72bfff4062974132a0387.md) | 100 | `declaration-track:3bf72bfff4062974132a03878236d086a783a3217379c7f5394e89395239d961` |
| 10 | `theorem` | [symm_symm](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/symm-symm--bc84bd54244c0bbdff8880a0.md) | 104 | `result-track:bc84bd54244c0bbdff8880a0f6c399b95c5eb94c57f1861724b34074f6ecd0b3` |
| 11 | `theorem` | [symm_bijective](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/symm-bijective--d504114cb04d92549879e8de.md) | 107 | `result-track:d504114cb04d92549879e8debd945bca53852ef832d7743fa192527e73c6f5e0` |
| 12 | `def` | [trans](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/trans--f64814dc04bfbf73e9f041b0.md) | 114 | `declaration-track:f64814dc04bfbf73e9f041b03edd40d208477c3de8751c6d773cb31bb78698f8` |
| 13 | `theorem` | [trans_apply](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/trans-apply--8f4de147002e6abaad664426.md) | 117 | `result-track:8f4de147002e6abaad6644260915b203a17966d3d793fb7a4ee6d5b5313e481b` |
| 14 | `theorem` | [symm_trans](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/symm-trans--58b8bd3158849061ef6d23f0.md) | 125 | `result-track:58b8bd3158849061ef6d23f0f6659867b2cd60ae25ca71347d7faf8986d5576d` |
| 15 | `def` | [cast](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/cast--137fe76b1e93e5d621f8aa04.md) | 131 | `declaration-track:137fe76b1e93e5d621f8aa04511582ca6a34680950f889ad30d2df17297165c9` |
| 16 | `def` | [hcomp](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/hcomp--d1b64fc2aa4eb29d16c9c91e.md) | 145 | `declaration-track:d1b64fc2aa4eb29d16c9c91e3b31b841373b2308da55bfa058d7705a0348857c` |
| 17 | `theorem` | [hcomp_apply](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/hcomp-apply--ebe48338061d860fe9a16b97.md) | 159 | `result-track:ebe48338061d860fe9a16b974e676a3dd2d364cfe7fe951a6f84764f13b4bc73` |
| 18 | `theorem` | [hcomp_half](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/hcomp-half--de55093817d351e614f165ec.md) | 168 | `result-track:de55093817d351e614f165ec18a6e9264162c8e63517523de80aa43d04c4aade` |
| 19 | `def` | [reparam](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/reparam--c447638cdcbbe4b580ee8d5f.md) | 177 | `declaration-track:c447638cdcbbe4b580ee8d5f9ac8bea7f3285a05ba2db5e7cd13da5ffaaf1f28` |
| 20 | `def` | [symm₂](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/symm--38efb8b77c8b6341a3874e4d.md) | 197 | `declaration-track:38efb8b77c8b6341a3874e4d96c679be9ba145dc371175d574ceacbc3cb1d62f` |
| 21 | `def` | [map](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/map--c90f4eda3f8496031ec9525f.md) | 214 | `declaration-track:c90f4eda3f8496031ec9525fee686435620acdb947689f722ebb626ce3c2dbbe` |
| 22 | `def` | [Homotopic](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/homotopic--a73bac0ab590fe5f980deabc.md) | 229 | `declaration-track:a73bac0ab590fe5f980deabc104b42349053ca0cb7d07e6e39dfe07c3e7a0fa0` |
| 23 | `theorem` | [refl](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/refl--cb0df40e6b4349b05137bd79.md) | 235 | `result-track:cb0df40e6b4349b05137bd79bcb47d022be9b45eb795cffdde8ea0907d370122` |
| 24 | `theorem` | [symm](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/symm--a1550848ca8c5920223055d6.md) | 239 | `result-track:a1550848ca8c5920223055d603c41a5a6c9bed06554a7e1d0be9182ad6e8fd7c` |
| 25 | `theorem` | [trans](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/trans--c35d52bbb55d16ddc3b85d7c.md) | 243 | `result-track:c35d52bbb55d16ddc3b85d7cd93106f177217658f4b39130666fbac33cc56579` |
| 26 | `theorem` | [equivalence](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/equivalence--ceb377248564dd3d6fb13271.md) | 247 | `result-track:ceb377248564dd3d6fb13271ce92361598f80554bf29a52567d70b656b038625` |
| 27 | `theorem` | [map](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/map--686b15be9624e8263bb9e458.md) | 250 | `result-track:686b15be9624e8263bb9e4585be48da48d6562fac22470f2306b3cb2fb59d877` |
| 28 | `theorem` | [hcomp](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/hcomp--2a036bd7056676248287ec02.md) | 254 | `result-track:2a036bd7056676248287ec020844e21e37e24813b1ab59638bcbc0a93725f91a` |
| 29 | `def` | [setoid](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/setoid--1c2b72a788c8e7a9c4998c8e.md) | 262 | `declaration-track:1c2b72a788c8e7a9c4998c8eca338c800dc55b5299662ba78a96cfdd87e4ddfa` |
| 30 | `def` | [Quotient](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/quotient--906f9f988cf3766ae454820c.md) | 267 | `declaration-track:906f9f988cf3766ae454820ceb717574c600f445d50c4180693b993187dd02c6` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/instance--d0256d45ef5c48badba30fde.md) | 272 | `declaration-track:d0256d45ef5c48badba30fdee37692268859034d594ef577db8f4930c8e5edfb` |
| 32 | `def` | [Quotient.comp](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/quotient-comp--e537a115b1e128c82356bd97.md) | 276 | `declaration-track:e537a115b1e128c82356bd97205cd7468371fbb39d4319c450d7dd53c25d578f` |
| 33 | `theorem` | [comp_lift](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/comp-lift--0445fae8ae98e0a9c42c5ac2.md) | 280 | `result-track:0445fae8ae98e0a9c42c5ac271d77c7926419a63f651a4c06991067233d1ec69` |
| 34 | `def` | [Quotient.mapFn](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/quotient-mapfn--eef7d0f8c82d0887186bfb53.md) | 285 | `declaration-track:eef7d0f8c82d0887186bfb5375fe48a229d0d6108b0e0d8b48fc83d6b63e3361` |
| 35 | `theorem` | [map_lift](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/map-lift--0257ecc10dbe55f52070f25c.md) | 289 | `result-track:0257ecc10dbe55f52070f25c89715f91f8e1cdde858fdf8d379347cbc8b9a4c4` |
| 36 | `theorem` | [hpath_hext](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/hpath-hext--90abb0d8ebdbfe89f4e0c603.md) | 293 | `result-track:90abb0d8ebdbfe89f4e0c60318516f1dbc63a1a3d667628b8ad06d8e3097d1ac` |
| 37 | `def` | [toHomotopyConst](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/tohomotopyconst--7a5fef29941ec00e2200653b.md) | 304 | `declaration-track:7a5fef29941ec00e2200653bc051b0913ec922983cb0e16f38303e8eb1c19732` |
| 38 | `theorem` | [ContinuousMap.homotopic_const_iff](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/continuousmap-homotopic-const-iff--9192fb2e6b0fa1b3e3c007f8.md) | 315 | `result-track:9192fb2e6b0fa1b3e3c007f8d73e5dca15082e1f1769ea2967aaeb4b73338814` |
| 39 | `def` | [evalAt](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/declarations/evalat--e86d892bda10e0662d0b905c.md) | 326 | `declaration-track:e86d892bda10e0662d0b905c65c9f6efff1628c2bf12a01798f52d9a3b76db9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
