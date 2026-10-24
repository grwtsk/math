# Verification target: GRWTSK.Algebra.LinearAlgebra.Equalizer.Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3618d01cce05a735c4231e2513394b9a0220505c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3618d01cce05a735c4231e2513394b9a0220505c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Module.Flat.ker_lTensor_eq](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/module-flat-ker-ltensor-eq--adb2d9eb398228a3f38a9323.md) | 30 | `result-track:adb2d9eb398228a3f38a93235e6445189967e30cda1565e94c99ad7c1baec45e` |
| 2 | `lemma` | [Module.Flat.eqLocus_lTensor_eq](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/module-flat-eqlocus-ltensor-eq--5e20adf125771a3c93026e08.md) | 36 | `result-track:5e20adf125771a3c93026e08b43b529c5d4bedf28a411d3d794224e34b30ffb4` |
| 3 | `def` | [LinearMap.tensorEqLocusBil](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensoreqlocusbil--23a465f3ece6f172e36f0eef.md) | 44 | `declaration-track:23a465f3ece6f172e36f0eefe47202acc9c5b6e342611e6f368318f055c4e9c5` |
| 4 | `def` | [LinearMap.tensorKerBil](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensorkerbil--bf669e2af26e1261a2017687.md) | 60 | `declaration-track:bf669e2af26e1261a20176873039b92a71f44c6dc7b15a196338df1127b79903` |
| 5 | `def` | [LinearMap.tensorEqLocus](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensoreqlocus--b9df4d8b7936dc97f63fb67a.md) | 70 | `declaration-track:b9df4d8b7936dc97f63fb67a06206cd7cc0655854a009bf47bf879360db9586b` |
| 6 | `def` | [LinearMap.tensorKer](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensorker--f8d06457a9236ec5e2efb162.md) | 75 | `declaration-track:f8d06457a9236ec5e2efb1622091452663b022c8958caf4f28ca900d8d139a78` |
| 7 | `lemma` | [LinearMap.tensorKer_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensorker-tmul--4327a01337400bd2cab11747.md) | 80 | `result-track:4327a01337400bd2cab117478dc057b915f0359b04e961e3f527cb71e80a6035` |
| 8 | `lemma` | [LinearMap.tensorKer_coe](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensorker-coe--d62f694585fc4ebda8779d54.md) | 85 | `result-track:d62f694585fc4ebda8779d54cdd443386f92681b0458d75a9a70f3a8717a2642` |
| 9 | `lemma` | [LinearMap.tensorEqLocus_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensoreqlocus-tmul--91f9a68d28cd14e4095f7205.md) | 90 | `result-track:91f9a68d28cd14e4095f72056fc8a56a434f77fb2d89a909e845c86b6150c506` |
| 10 | `lemma` | [LinearMap.tensorEqLocus_coe](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensoreqlocus-coe--f2015d739a2bbfbeeaaa6f29.md) | 95 | `result-track:f2015d739a2bbfbeeaaa6f294d565026e4a9fcdedc65264bfb71c8d4eb7afda0` |
| 11 | `def` | [LinearMap.tensorKerInv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensorkerinv--e5fc52f41b2934a477e09105.md) | 99 | `declaration-track:e5fc52f41b2934a477e09105c7bbfe9baa2ec70499ee41e41a6dbe97559266eb` |
| 12 | `lemma` | [LinearMap.lTensor_ker_subtype_tensorKerInv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-ltensor-ker-subtype-tensorkerinv--eec909dce75775eb891a6731.md) | 107 | `result-track:eec909dce75775eb891a673161fefa9e1b8805215a8e8cda9925191379e9b40d` |
| 13 | `def` | [LinearMap.tensorEqLocusInv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensoreqlocusinv--9cea5d0463a7a7bf1781f2ce.md) | 113 | `declaration-track:9cea5d0463a7a7bf1781f2cec5390ab41a9ab9fec16bc82c567e49bf53470f3d` |
| 14 | `lemma` | [LinearMap.lTensor_eqLocus_subtype_tensorEqLocusInv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-ltensor-eqlocus-subtype-tensoreqlocusinv--b051e71e4a0d80e8c8c83137.md) | 124 | `result-track:b051e71e4a0d80e8c8c8313707e6b8de0fb3e570f0759e2eed7b6a9831242a4c` |
| 15 | `def` | [LinearMap.tensorKerEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensorkerequiv--4abcd283dd6c4c3387646790.md) | 131 | `declaration-track:4abcd283dd6c4c338764679030f875e2f21f7c071419e758e73133659e2b8798` |
| 16 | `lemma` | [LinearMap.tensorKerEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensorkerequiv-apply--de8eb941bdf2e3719af92b7d.md) | 142 | `result-track:de8eb941bdf2e3719af92b7de1338ab82da4b082e0c40ba8342e28eb05b2895c` |
| 17 | `lemma` | [LinearMap.lTensor_ker_subtype_tensorKerEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-ltensor-ker-subtype-tensorkerequiv-symm--bf8f4e222928ef3ae4656221.md) | 147 | `result-track:bf8f4e222928ef3ae46562215704483eb3fed2064678ca077d958a9a2f921353` |
| 18 | `def` | [LinearMap.tensorEqLocusEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensoreqlocusequiv--62ce9d60fb8de49bb2e23229.md) | 154 | `declaration-track:62ce9d60fb8de49bb2e23229ecebd7191fdaea12719ad2b28111e6fdd34c655f` |
| 19 | `lemma` | [LinearMap.tensorEqLocusEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-tensoreqlocusequiv-apply--225e793d8dbe0b316f674f8e.md) | 167 | `result-track:225e793d8dbe0b316f674f8e70df2b11004cfcb74b1f92b639c4b3a33b381925` |
| 20 | `lemma` | [LinearMap.lTensor_eqLocus_subtype_tensoreqLocusEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/linearmap-ltensor-eqlocus-subtype-tensoreqlocusequiv-symm--1d14040632071485b19362e2.md) | 172 | `result-track:1d14040632071485b19362e2d80e63b60321bd014224dc596abb3e83001e0fc8` |
| 21 | `def` | [AlgHom.tensorEqualizerAux](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/alghom-tensorequalizeraux--c0d8e06b1338b1bf9abd2e33.md) | 185 | `declaration-track:c0d8e06b1338b1bf9abd2e332c78c80b5b7c255491044f373f90d48065bdc4fe` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/instance--7e703d869d0c60aed48c6c56.md) | 191 | `declaration-track:7e703d869d0c60aed48c6c56a55a99c0856b43fcdd9d93f7c7434b610b67ead4` |
| 23 | `lemma` | [AlgHom.coe_tensorEqualizerAux](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/alghom-coe-tensorequalizeraux--ba54a356935fb62e539c73dc.md) | 194 | `result-track:ba54a356935fb62e539c73dc3590f5fd31a72b1fe1c808f1891b8ce7027568f5` |
| 24 | `lemma` | [AlgHom.tensorEqualizerAux_mul](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/alghom-tensorequalizeraux-mul--8c89dc59cee9c237a4ce78ba.md) | 202 | `result-track:8c89dc59cee9c237a4ce78ba12cb16336d5bc4f5947eb15bf40f2fb3678a76c9` |
| 25 | `def` | [AlgHom.tensorEqualizer](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/alghom-tensorequalizer--b7476fd48a9f5f031858193c.md) | 211 | `declaration-track:b7476fd48a9f5f031858193cb7035f140fd6b3d953fb540d633c829dab7d513c` |
| 26 | `lemma` | [AlgHom.coe_tensorEqualizer](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/alghom-coe-tensorequalizer--9ec3af2fd1571a186b3249b1.md) | 219 | `result-track:9ec3af2fd1571a186b3249b1705dc60890f450b1e704831831aaf844919f8df2` |
| 27 | `def` | [AlgHom.tensorEqualizerEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/alghom-tensorequalizerequiv--e567f8f7f8c9085a3d29cf43.md) | 226 | `declaration-track:e567f8f7f8c9085a3d29cf43c926a277c446756506379c10b0337da3bd84b47f` |
| 28 | `lemma` | [AlgHom.tensorEqualizerEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean/declarations/alghom-tensorequalizerequiv-apply--af0ab661d83ae8342dd92543.md) | 234 | `result-track:af0ab661d83ae8342dd92543c231b24045cb1f36c111e59b3d8835c967b416c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
