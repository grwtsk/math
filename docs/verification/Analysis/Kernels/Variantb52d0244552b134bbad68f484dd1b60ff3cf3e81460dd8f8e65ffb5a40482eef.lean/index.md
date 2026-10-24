# Verification target: GRWTSK.Analysis.Kernels.Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ba49dcfea7cf226fd95c7c0b531ce8f5a30270f",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/index.md) · [Full source](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ba49dcfea7cf226fd95c7c0b531ce8f5a30270f`.

Source path: `GRWTSK/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.SemiNormedGrp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cokernelCocone](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/cokernelcocone--95707510c50209e0bc33fc79.md) | 36 | `declaration-track:95707510c50209e0bc33fc7969f3263f1a2c5812d18fcefead0fcd358dae85aa` |
| 2 | `def` | [cokernelLift](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/cokernellift--b7bf5cbe9861e39aa5990abf.md) | 52 | `declaration-track:b7bf5cbe9861e39aa5990abf27289a15ddfca967634bf07424691155c28dd47e` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/instance--f2ab0c62ab5643eebe555f54.md) | 63 | `declaration-track:f2ab0c62ab5643eebe555f5441ddf56406d35db8b7b8efcf88b54db626f7b7df` |
| 4 | `example` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/example--66cdf008f7cb4464f8525a45.md) | 81 | `declaration-track:66cdf008f7cb4464f8525a451e27fb93b2f9a91323f35df85eff932f9fb3ef18` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/instance--b65029454260f46e918b4a30.md) | 91 | `declaration-track:b65029454260f46e918b4a30152bdb1fa63f138279c44e3f6b8a11e60193b863` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/instance--182160257cb27533454ebdcf.md) | 93 | `declaration-track:182160257cb27533454ebdcfeafe0269be0becd81179e33cf7e76ad3077d30fe` |
| 7 | `def` | [fork](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/fork--ad205226612c3ced8a6bdadd.md) | 97 | `declaration-track:ad205226612c3ced8a6bdadd79902b5ba025b6c7122d494f5788c52aed641922` |
| 8 | `instance` | [hasLimit_parallelPair](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/haslimit-parallelpair--9d03f847d40e10a7e6b22b77.md) | 104 | `declaration-track:9d03f847d40e10a7e6b22b77220bd01b00739ca5c0646aa51ae53ad283d8918b` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/instance--374d3b7e19bff7cdc391ccfd.md) | 120 | `declaration-track:374d3b7e19bff7cdc391ccfd7adfb62e39ee6d7ebc66c351f8105da82d108890` |
| 10 | `def` | [cokernelCocone](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/cokernelcocone--81c03f9179ee27b67c43e51b.md) | 132 | `declaration-track:81c03f9179ee27b67c43e51bb91c3eed510b9359f398d5019c4a256bacfdc399` |
| 11 | `def` | [cokernelLift](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/cokernellift--5c2e9ecc6a18e12af920cf97.md) | 139 | `declaration-track:5c2e9ecc6a18e12af920cf97959e2fd389f2531a096a38c1793730c26deb4134` |
| 12 | `def` | [isColimitCokernelCocone](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/iscolimitcokernelcocone--4f7a182c80e3c9a09a6626f3.md) | 149 | `declaration-track:4f7a182c80e3c9a09a6626f3298e0c7cf0e1477c70a64de79963eb1e51ac7e4d` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/instance--5cdfef8518c9ffa119d53148.md) | 161 | `declaration-track:5cdfef8518c9ffa119d53148f1c188e37e3a0699065b8e163a6e772838fd372d` |
| 14 | `example` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/example--f7d169705f0acb7a7003a983.md) | 168 | `declaration-track:f7d169705f0acb7a7003a98365139ccfad5c0d6ad286cdcdeb59c4bfb447823d` |
| 15 | `def` | [explicitCokernel](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokernel--e086b0090e6ddb7b59a3cb54.md) | 174 | `declaration-track:e086b0090e6ddb7b59a3cb54703e7c9c442044cb4eb3224610b06f1f8a42f548` |
| 16 | `def` | [explicitCokernelDesc](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokerneldesc--c313bc6622a3060c1b450ae5.md) | 179 | `declaration-track:c313bc6622a3060c1b450ae5a1e492571d69d69800eeb404d3169cbf9020ba7c` |
| 17 | `def` | [explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokernel--740577b6918bd32313e54b0f.md) | 185 | `declaration-track:740577b6918bd32313e54b0f01c948c4abbdbc88d26bcb5998fb05e2c90d600b` |
| 18 | `theorem` | [explicitCokernelπ_surjective](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokernel-surjective--be0085179535767d25ffd4c5.md) | 188 | `result-track:be0085179535767d25ffd4c544794123c22fea10b08663746cc44b0f85b77ce0` |
| 19 | `theorem` | [comp_explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/comp-explicitcokernel--e3b0c26182ebee554cafbfc3.md) | 193 | `result-track:e3b0c26182ebee554cafbfc3b92c6f065bfbc993691041a3779f338ae8f47eb9` |
| 20 | `theorem` | [explicitCokernelπ_apply_dom_eq_zero](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokernel-apply-dom-eq-zero--2ca7437fce628c9916695d98.md) | 199 | `result-track:2ca7437fce628c9916695d98afaa0b6becf0da258b73816c58e753c5917c9009` |
| 21 | `theorem` | [explicitCokernelπ_desc](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokernel-desc--d707c722351503d5cca60e83.md) | 204 | `result-track:d707c722351503d5cca60e833c4d7883ebac64dd415d031ace0f322dc782c5e5` |
| 22 | `theorem` | [explicitCokernelπ_desc_apply](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokernel-desc-apply--bf5507ed581ba6068dcf053f.md) | 209 | `result-track:bf5507ed581ba6068dcf053f4e20eb7c4c99566d31c11cc841bbcc94aac16b89` |
| 23 | `theorem` | [explicitCokernelDesc_unique](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokerneldesc-unique--b2922f9d12378f706b9516c3.md) | 213 | `result-track:b2922f9d12378f706b9516c31dd56685301f31c2663f743735a674c67111540d` |
| 24 | `theorem` | [explicitCokernelDesc_comp_eq_desc](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokerneldesc-comp-eq-desc--843582c5f6823e333a682b9a.md) | 222 | `result-track:843582c5f6823e333a682b9a174ad50ef56dc7707030c2f238c44819ea097291` |
| 25 | `theorem` | [explicitCokernelDesc_zero](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokerneldesc-zero--aa2b3833439777a3775d6f9b.md) | 231 | `result-track:aa2b3833439777a3775d6f9b901b82b6d5767681bd9f9feb7b9799af27b7fbe3` |
| 26 | `theorem` | [explicitCokernel_hom_ext](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokernel-hom-ext--ecfcecb6a7f7a875154e5e91.md) | 236 | `result-track:ecfcecb6a7f7a875154e5e91b0238b0d3deefd97a7d2bcf32dfacec0416fc141` |
| 27 | `instance` | [explicitCokernelπ.epi](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokernel-epi--0841ff42ed83ac65fb74a1ca.md) | 246 | `declaration-track:0841ff42ed83ac65fb74a1cad946c4ddb6188c4069b7f2ec1ec603796a1d2703` |
| 28 | `theorem` | [isQuotient_explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/isquotient-explicitcokernel--1a5a27f5c4db9def215995d3.md) | 253 | `result-track:1a5a27f5c4db9def215995d307a1e03a8656d08b6093c66407ad171611c7bed4` |
| 29 | `theorem` | [normNoninc_explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/normnoninc-explicitcokernel--4abe975052cc05aa8445165e.md) | 257 | `result-track:4abe975052cc05aa8445165ea46118227c5dee1b34831aeb48500d52639dd37d` |
| 30 | `theorem` | [explicitCokernelDesc_norm_le_of_norm_le](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokerneldesc-norm-le-of-norm-le--791aaab82e26289db0eb17f0.md) | 263 | `result-track:791aaab82e26289db0eb17f08f6e55fcfde714cd0858246f84602b196c947985` |
| 31 | `theorem` | [explicitCokernelDesc_normNoninc](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokerneldesc-normnoninc--31c7bd2d244fbef2bf977bc3.md) | 267 | `result-track:31c7bd2d244fbef2bf977bc3247621997facbdaf2e20d0ba876088e82995745a` |
| 32 | `theorem` | [explicitCokernelDesc_comp_eq_zero](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokerneldesc-comp-eq-zero--dca04dd5c3d4e5030c1d64b8.md) | 275 | `result-track:dca04dd5c3d4e5030c1d64b8240adc8b71e34968276fb3d1fe477e85aaaae690` |
| 33 | `theorem` | [explicitCokernelDesc_norm_le](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokerneldesc-norm-le--2007f627487ad0826fe983e4.md) | 280 | `result-track:2007f627487ad0826fe983e46215514a94631f7dddc582a68a30b63edc06e7f0` |
| 34 | `def` | [explicitCokernelIso](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokerneliso--a7cd56f0ef294b7b2ae535a5.md) | 286 | `declaration-track:a7cd56f0ef294b7b2ae535a5c6eba3af870335554dd2b8fa96770a7965664c8b` |
| 35 | `theorem` | [explicitCokernelIso_hom_π](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokerneliso-hom--d3790bd1ee17bc9576e7c553.md) | 291 | `result-track:d3790bd1ee17bc9576e7c5536d29b57c7d9f4286795376add964e9e7afbc0767` |
| 36 | `theorem` | [explicitCokernelIso_inv_π](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokerneliso-inv--5e6969b97eeae179d39eb98e.md) | 296 | `result-track:5e6969b97eeae179d39eb98ee63eb647ed1dd4003a9b14b971fd1a40f39fe137` |
| 37 | `theorem` | [explicitCokernelIso_hom_desc](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokerneliso-hom-desc--43864e080f09dc84596ace20.md) | 301 | `result-track:43864e080f09dc84596ace206e31a26664ff535bc39524e8bf9a5b840a2b72b0` |
| 38 | `def` | [explicitCokernel.map](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcokernel-map--539d0b3a95ab12724fcd1432.md) | 309 | `declaration-track:539d0b3a95ab12724fcd1432e019e15f64bff568eeefd2c6c7029f9b1cbedd58` |
| 39 | `theorem` | [ExplicitCoker.map_desc](../../../../mathematics/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/declarations/explicitcoker-map-desc--72c0e84ce55f74b0b5cac7ec.md) | 315 | `result-track:72c0e84ce55f74b0b5cac7ec01aa2051c34dd46100cac024afc208649964eb9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
