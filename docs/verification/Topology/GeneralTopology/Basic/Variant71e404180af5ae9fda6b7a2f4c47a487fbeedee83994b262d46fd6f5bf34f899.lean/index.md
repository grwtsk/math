# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1001146af344d68d222246d018a5927cdfc2326",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1001146af344d68d222246d018a5927cdfc2326`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Isometric` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.GelfandDuality` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Unitization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.PosPart.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/instance--962dccb9294af81d93410993.md) | 61 | `declaration-track:962dccb9294af81d93410993ecdc0c5d92dc62a3f98f04588c380c4959194681` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/instance--ea59a12d2574d20a12944aa0.md) | 68 | `declaration-track:ea59a12d2574d20a12944aa088b2a458ea7bd94a5e0d05871021e6ca15ad494e` |
| 3 | `def` | [characterSpaceToSpectrum](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/characterspacetospectrum--54881671eaa3a1c095b28935.md) | 79 | `declaration-track:54881671eaa3a1c095b28935690ad148c649c8dd6e53af298d3cd6ef761e0bd2` |
| 4 | `theorem` | [continuous_characterSpaceToSpectrum](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/continuous-characterspacetospectrum--7d80af371325ceadd5931cc5.md) | 89 | `result-track:7d80af371325ceadd5931cc5505d69aecac97c0d638cd7666fd3839512f5e479` |
| 5 | `theorem` | [bijective_characterSpaceToSpectrum](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/bijective-characterspacetospectrum--fa8592239a273165e29d8255.md) | 98 | `result-track:fa8592239a273165e29d8255afda0a3c4f0761a54da1581e7d144c7fc31d231a` |
| 6 | `def` | [characterSpaceHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/characterspacehomeo--c588e13491d2284c4f9cb4eb.md) | 118 | `declaration-track:c588e13491d2284c4f9cb4eb38a7f5288f6b6fa88bf6ee3a75a2aa77432e3023` |
| 7 | `def` | [continuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/continuousfunctionalcalculus--b1ac6f062805d12f3232ebbd.md) | 139 | `declaration-track:b1ac6f062805d12f3232ebbd2af251423806219b3581bbd749124266cb3eb8ea` |
| 8 | `theorem` | [continuousFunctionalCalculus_map_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/continuousfunctionalcalculus-map-id--dece6ea3f3217caac1c4f8ae.md) | 144 | `result-track:dece6ea3f3217caac1c4f8ae91aaa5728aa419e987c36e94f476a8263c778454` |
| 9 | `instance` | [IsStarNormal.instContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/isstarnormal-instcontinuousfunctionalcalculus--3a27745c059f8d2877a95355.md) | 157 | `declaration-track:3a27745c059f8d2877a95355a1e202bdf79579ade8713fa4a147a40c0e1e382e` |
| 10 | `lemma` | [cfcHom_eq_of_isStarNormal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/cfchom-eq-of-isstarnormal--ede6140427e93e807ae4bb4a.md) | 175 | `result-track:ede6140427e93e807ae4bb4a13aab4961abbc51f4677622cf7fe56ce43db449d` |
| 11 | `instance` | [IsStarNormal.instNonUnitalContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/isstarnormal-instnonunitalcontinuousfunctionalcalculus--29e216ee6bf9a2a0750fa2b6.md) | 182 | `declaration-track:29e216ee6bf9a2a0750fa2b6999bb6ca93bf25a3fd4f9a412b63d7e17bffcf9a` |
| 12 | `lemma` | [inr_comp_cfcₙHom_eq_cfcₙAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/inr-comp-cfc-hom-eq-cfc-aux--c5436dce68b4b20ce9c4bb43.md) | 187 | `result-track:c5436dce68b4b20ce9c4bb4364e6119809f4bacae129e9516073b5861a3a1106` |
| 13 | `lemma` | [SpectrumRestricts.nnreal_iff_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/spectrumrestricts-nnreal-iff-nnnorm--70679ef341a6feee48246e7b.md) | 211 | `result-track:70679ef341a6feee48246e7b2fe4b22f7c81c0a4632ed44eaafa8c60e9608531` |
| 14 | `lemma` | [SpectrumRestricts.nnreal_add](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/spectrumrestricts-nnreal-add--b61e9f83fa7fef300963c374.md) | 221 | `result-track:b61e9f83fa7fef300963c3748b00a1f1654c1888a7f666d5736a1e6b1740a932` |
| 15 | `lemma` | [IsSelfAdjoint.sq_spectrumRestricts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/isselfadjoint-sq-spectrumrestricts--6f528d7b3d3ae40e3c0c6190.md) | 231 | `result-track:6f528d7b3d3ae40e3c0c619082ee982f3dfb0017fe6680f80adc6a98d169dcfc` |
| 16 | `lemma` | [SpectrumRestricts.eq_zero_of_neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/spectrumrestricts-eq-zero-of-neg--8b8d1820042af72cf188cea1.md) | 239 | `result-track:8b8d1820042af72cf188cea1cf2a590f1998f96202838c86e185b522e71a9f58` |
| 17 | `lemma` | [SpectrumRestricts.smul_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/spectrumrestricts-smul-of-nonneg--c70cae078da0c6939c51b080.md) | 251 | `result-track:c70cae078da0c6939c51b080343aeb230eb8c177f5706033f6c82c3b22db3772` |
| 18 | `lemma` | [spectrum_star_mul_self_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/spectrum-star-mul-self-nonneg--70fd4b60741462148a604bd7.md) | 268 | `result-track:70fd4b60741462148a604bd777f277862b4255c95a2dba93c24bd1a7121a8755` |
| 19 | `lemma` | [IsSelfAdjoint.coe_mem_spectrum_complex](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/isselfadjoint-coe-mem-spectrum-complex--566216d98ce48eb38951e969.md) | 306 | `result-track:566216d98ce48eb38951e969be02f4c9b0c62ff5ff95afadeea34d01e4057f81` |
| 20 | `instance` | [CStarAlgebra.instNonnegSpectrumClass](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/cstaralgebra-instnonnegspectrumclass--d17ab61f38cd21931817a0e7.md) | 318 | `declaration-track:d17ab61f38cd21931817a0e71387aac8b67ed7d300675595b45e04f084ff867f` |
| 21 | `instance` | [CStarAlgebra.instNonnegSpectrumClassComplexUnital](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/cstaralgebra-instnonnegspectrumclasscomplexunital--c28764c4aa6633668d0e708a.md) | 334 | `declaration-track:c28764c4aa6633668d0e708aa5768780601c9d359c2f0e308772df2ad33b1da3` |
| 22 | `def` | [CStarAlgebra.spectralOrder](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/cstaralgebra-spectralorder--79583b68fd08714c8efc2f5e.md) | 354 | `declaration-track:79583b68fd08714c8efc2f5e2ad6c6ba0c35bef422bd236f9e02cedc5c13ab90` |
| 23 | `lemma` | [CStarAlgebra.spectralOrderedRing](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/cstaralgebra-spectralorderedring--f85d3bb5fa2ecdad31e9bc16.md) | 374 | `result-track:f85d3bb5fa2ecdad31e9bc16e266363970d2ae2166c3da8e946b0e6e13520326` |
| 24 | `instance` | [CStarAlgebra.instNonnegSpectrumClass'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/cstaralgebra-instnonnegspectrumclass--ca555ab905a2763f62e044d9.md) | 410 | `declaration-track:ca555ab905a2763f62e044d9d340722b493db1b996de72572be6db2a7123e3f5` |
| 25 | `lemma` | [Unitization.cfcₙ_eq_cfc_inr](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/unitization-cfc-eq-cfc-inr--8ac3a28639b0a1659af5e225.md) | 435 | `result-track:8ac3a28639b0a1659af5e225ea49654e57dcd99c7722050544aaa8e09179cab1` |
| 26 | `lemma` | [Unitization.complex_cfcₙ_eq_cfc_inr](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/unitization-complex-cfc-eq-cfc-inr--407fd35721b1bd1586a4fafe.md) | 453 | `result-track:407fd35721b1bd1586a4fafe016cd52f08c5704d5fc9a06a091c46b5b4d8a130` |
| 27 | `lemma` | [Unitization.real_cfcₙ_eq_cfc_inr](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/unitization-real-cfc-eq-cfc-inr--b8d2636002ccd90ef6517851.md) | 459 | `result-track:b8d2636002ccd90ef6517851299084374ad1fcc72f0fa7ba84bd241c3877fa90` |
| 28 | `instance` | [IsStarNormal.instIsometricContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/isstarnormal-instisometriccontinuousfunctionalcalculus--821be86c8850ada4c708890a.md) | 471 | `declaration-track:821be86c8850ada4c708890a6dde2de3a97b0bd296125d44a144fefa86fe0950` |
| 29 | `instance` | [IsSelfAdjoint.instIsometricContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/isselfadjoint-instisometriccontinuousfunctionalcalculus--3222cb2985d59c2c2b703544.md) | 477 | `declaration-track:3222cb2985d59c2c2b703544a1fbd1ade03bedea6d5fc8a8dfe5ff7dd0602d6f` |
| 30 | `instance` | [IsStarNormal.instNonUnitalIsometricContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/isstarnormal-instnonunitalisometriccontinuousfunctionalcalculus--fe0d225444d144c316e4340e.md) | 491 | `declaration-track:fe0d225444d144c316e4340e78d395c57b4910a0285a342df45dc090f970a91b` |
| 31 | `instance` | [IsSelfAdjoint.instNonUnitalIsometricContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/declarations/isselfadjoint-instnonunitalisometriccontinuousfunctionalcalculus--6645382c5013d52d396c1482.md) | 502 | `declaration-track:6645382c5013d52d396c1482499a8ab46e2efd3ae5faee7bf11000ca050f30fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
