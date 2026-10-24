# Verification target: GRWTSK.Geometry.DifferentialGeometry.ContMDiffMFDeriv.Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "773c086e5994c6aa4393de28df759d61b2f3bd11",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `773c086e5994c6aa4393de28df759d61b2f3bd11`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv.Tangent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiffMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.Hom` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContMDiffWithinAt.mfderivWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/contmdiffwithinat-mfderivwithin--89444dfbe6a2e074445f589f.md) | 74 | `result-track:89444dfbe6a2e074445f589f97999894fd37c184735db2e39241e8031edcac9a` |
| 2 | `theorem` | [ContMDiffWithinAt.mfderivWithin_const](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/contmdiffwithinat-mfderivwithin-const--d3e44df7e42266702c677ccd.md) | 205 | `result-track:d3e44df7e42266702c677ccd61de396f3ad8c894bf538a7e108d359bafd92cb9` |
| 3 | `theorem` | [ContMDiffWithinAt.mfderivWithin_apply](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/contmdiffwithinat-mfderivwithin-apply--1d1497c050529894d699d16e.md) | 222 | `result-track:1d1497c050529894d699d16e734914f6253d1eedc89f8b0a9a2cfacfe9f5dd23` |
| 4 | `theorem` | [ContMDiffAt.mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/contmdiffat-mfderiv--c70e40e790ed398ce2d89b70.md) | 240 | `result-track:c70e40e790ed398ce2d89b7052c25f1e894c5720b33d3be0f26e19b87c201d7b` |
| 5 | `theorem` | [ContMDiffAt.mfderiv_const](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/contmdiffat-mfderiv-const--cd049ae420c8bb0a05ace19d.md) | 258 | `result-track:cd049ae420c8bb0a05ace19dcc8b89bc225727dbb102b2eca7f7409d247f1282` |
| 6 | `theorem` | [ContMDiffAt.mfderiv_apply](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/contmdiffat-mfderiv-apply--19715dd54b088ad226448dbd.md) | 273 | `result-track:19715dd54b088ad226448dbd6390bbca7d5c688832dd5029e5e69fad3de01503` |
| 7 | `theorem` | [ContMDiffOn.contMDiffOn_tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/contmdiffon-contmdiffon-tangentmapwithin--f9c52663c15ff09b74e7fe6e.md) | 292 | `result-track:f9c52663c15ff09b74e7fe6ed3c365b34bc431107e6692834c411dd7d9e3a631` |
| 8 | `theorem` | [ContMDiffOn.continuousOn_tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/contmdiffon-continuouson-tangentmapwithin--a38a5b77e7c6ba9d2d845a90.md) | 323 | `result-track:a38a5b77e7c6ba9d2d845a90041ed965ab224bf8e3a6139c2c5db4df78788a3a` |
| 9 | `theorem` | [ContMDiff.contMDiff_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/contmdiff-contmdiff-tangentmap--f67b0b57141402cbe52a0df3.md) | 332 | `result-track:f67b0b57141402cbe52a0df38ed5679cd5e3631e86c0aac0bcb4e525eabad215` |
| 10 | `theorem` | [ContMDiff.continuous_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/contmdiff-continuous-tangentmap--17d837372b32b5a48526f8e9.md) | 339 | `result-track:17d837372b32b5a48526f8e96e50d0be2961fd9b8ba410cf19130c5f5a69023a` |
| 11 | `theorem` | [tangentMap_tangentBundle_pure](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/tangentmap-tangentbundle-pure--0e65982ab7c7db37e24588eb.md) | 368 | `result-track:0e65982ab7c7db37e24588eb0e017fa58abc9af8f6f966827c73ffa27a99955c` |
| 12 | `theorem` | [mdifferentiable'](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/mdifferentiable--b938fabf9a46c2737f48bb70.md) | 409 | `result-track:b938fabf9a46c2737f48bb70e39c032e6124d6faffbb271b54c8969cba8eee59` |
| 13 | `theorem` | [mdifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/mdifferentiable--4e0c59dfeeab304c7065801f.md) | 412 | `result-track:4e0c59dfeeab304c7065801fea0be1b1ad4157fe9c2fdbd5862cf4c2e97eee2e` |
| 14 | `theorem` | [mdifferentiableAt](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/mdifferentiableat--0cc3d8680873221eac705b20.md) | 415 | `result-track:0cc3d8680873221eac705b20dae73f3b7f316f40048d960bb6e1f436d65d916a` |
| 15 | `def` | [equivTangentBundleProd](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/equivtangentbundleprod--297bbb121cd36439aad49d04.md) | 425 | `declaration-track:297bbb121cd36439aad49d04f92078cdf8e633d6f3ae45ad0e4b422cef2d1da2` |
| 16 | `lemma` | [equivTangentBundleProd_eq_tangentMap_prod_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/equivtangentbundleprod-eq-tangentmap-prod-tangentmap--da009e9978e7e813e3a3e140.md) | 432 | `result-track:da009e9978e7e813e3a3e14069ce02f5b222c71fdf3904033407aa414e1a7a80` |
| 17 | `lemma` | [contMDiff_equivTangentBundleProd](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/contmdiff-equivtangentbundleprod--2e57c4faa07002b1832d1a02.md) | 441 | `result-track:2e57c4faa07002b1832d1a02e7d30b287e7743a175fdd1baa5be73a2409b264b` |
| 18 | `lemma` | [contMDiff_equivTangentBundleProd_symm](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/declarations/contmdiff-equivtangentbundleprod-symm--d7cf256fda903320d3194e93.md) | 450 | `result-track:d7cf256fda903320d3194e9392d4ec7e60b2b7dbd13cd769ee92f83f66f68491` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
