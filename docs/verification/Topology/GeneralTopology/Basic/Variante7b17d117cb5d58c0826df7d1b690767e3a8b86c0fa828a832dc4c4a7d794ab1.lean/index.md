# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a232de5f4356748e118239022ae71b016052f5c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a232de5f4356748e118239022ae71b016052f5c`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Isometric` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.GelfandDuality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Unitization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.PosPart.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/instance--e14401d1639234dba12f9eeb.md) | 69 | `declaration-track:e14401d1639234dba12f9eebc36f8f2bde28ce4d65ee8925b8a92009b59b7149` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/instance--2019ee8569d29b78894c27c3.md) | 76 | `declaration-track:2019ee8569d29b78894c27c3d7a39379231499b3a21c5b9232cff1ab69db51e6` |
| 3 | `def` | [characterSpaceToSpectrum](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/characterspacetospectrum--0b9356dae323519ff56781c3.md) | 87 | `declaration-track:0b9356dae323519ff56781c343d8c6970e5c935d50f3d12d80295258916431d3` |
| 4 | `theorem` | [continuous_characterSpaceToSpectrum](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/continuous-characterspacetospectrum--fdc4fbf9a5c17ce3697008d9.md) | 97 | `result-track:fdc4fbf9a5c17ce3697008d9925c324b14996ef373c334ce95dbc8e53e4b7f3c` |
| 5 | `theorem` | [bijective_characterSpaceToSpectrum](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/bijective-characterspacetospectrum--4fd26889a0887aaa17c897fe.md) | 106 | `result-track:4fd26889a0887aaa17c897fe52da638db26b3a8dbd16860ee812225c728db36d` |
| 6 | `def` | [characterSpaceHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/characterspacehomeo--fe9e0a32c4014c7d691b61a1.md) | 126 | `declaration-track:fe9e0a32c4014c7d691b61a14c080975418e3ca8bc09b2828ca684bfc3b788bf` |
| 7 | `def` | [continuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/continuousfunctionalcalculus--258c2b2c42f40253e92ce7fe.md) | 147 | `declaration-track:258c2b2c42f40253e92ce7fef876f815b6847f90e3653061e014eb20ad9b9dfc` |
| 8 | `theorem` | [continuousFunctionalCalculus_map_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/continuousfunctionalcalculus-map-id--7e24fb1842221f09d41bc819.md) | 152 | `result-track:7e24fb1842221f09d41bc8196efd5ff84096a2e67980daacaa6dcab5059a885d` |
| 9 | `instance` | [IsStarNormal.instContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/isstarnormal-instcontinuousfunctionalcalculus--692f66908a3c9cc65c850ab4.md) | 165 | `declaration-track:692f66908a3c9cc65c850ab49763b7a06d2631798f5a1c3bb788ce8ade42b34f` |
| 10 | `lemma` | [cfcHom_eq_of_isStarNormal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/cfchom-eq-of-isstarnormal--afbafc9d668902ec6cf55fb6.md) | 183 | `result-track:afbafc9d668902ec6cf55fb61d66d8519a01c691981ca4b2252c9b6fdeff6b7e` |
| 11 | `instance` | [IsStarNormal.instNonUnitalContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/isstarnormal-instnonunitalcontinuousfunctionalcalculus--b78713e43c00461334ad422e.md) | 190 | `declaration-track:b78713e43c00461334ad422e4911b5d52f3d0130a1340c53977dbbe25d1464d4` |
| 12 | `lemma` | [inr_comp_cfcₙHom_eq_cfcₙAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/inr-comp-cfc-hom-eq-cfc-aux--0e0f5285408cca4fad5de8d7.md) | 195 | `result-track:0e0f5285408cca4fad5de8d714bdd21bfcb9a002c9d9d245b9749b6e1a0007a4` |
| 13 | `lemma` | [SpectrumRestricts.nnreal_iff_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/spectrumrestricts-nnreal-iff-nnnorm--e292726aeae7a2b51ab8fa25.md) | 219 | `result-track:e292726aeae7a2b51ab8fa255d147b29f83a662cd91d48bf3bbe91a8e0286276` |
| 14 | `lemma` | [SpectrumRestricts.nnreal_add](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/spectrumrestricts-nnreal-add--3155aff5bfc6e01c085f5951.md) | 229 | `result-track:3155aff5bfc6e01c085f5951f568972f8632e5ea2491b7aa99d4fa3db3d6cdf7` |
| 15 | `lemma` | [IsSelfAdjoint.sq_spectrumRestricts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/isselfadjoint-sq-spectrumrestricts--b4ed436e65327d008ccdbacc.md) | 239 | `result-track:b4ed436e65327d008ccdbacc679e16b4aa4babd03c166eca389cb6765425c82b` |
| 16 | `lemma` | [SpectrumRestricts.eq_zero_of_neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/spectrumrestricts-eq-zero-of-neg--3073100c9f64857cd400a25e.md) | 247 | `result-track:3073100c9f64857cd400a25eecf16d554f165edbc151f2383e664a6dc5677442` |
| 17 | `lemma` | [SpectrumRestricts.smul_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/spectrumrestricts-smul-of-nonneg--8ad727e397ed9a6a9d2aeeba.md) | 259 | `result-track:8ad727e397ed9a6a9d2aeeba32c9cb3ba88b9d0570b1aa3ab4258b751728e6fb` |
| 18 | `lemma` | [spectrum_star_mul_self_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/spectrum-star-mul-self-nonneg--4d008deb82f1bd211109437e.md) | 276 | `result-track:4d008deb82f1bd211109437ea204a84a329db7b04208a18d9ce7f70be3ad9fbc` |
| 19 | `lemma` | [IsSelfAdjoint.coe_mem_spectrum_complex](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/isselfadjoint-coe-mem-spectrum-complex--bda65c90c51195fc33c47485.md) | 314 | `result-track:bda65c90c51195fc33c47485eb4d475ee61aa6efd41e2a5eab5ca00add0dd8e2` |
| 20 | `instance` | [CStarAlgebra.instNonnegSpectrumClass](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/cstaralgebra-instnonnegspectrumclass--6f12c4058a1353328200229f.md) | 326 | `declaration-track:6f12c4058a1353328200229fe161cc4ea1c5097355f30840424c7c7a0eb87494` |
| 21 | `instance` | [CStarAlgebra.instNonnegSpectrumClassComplexUnital](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/cstaralgebra-instnonnegspectrumclasscomplexunital--b905861b85976ab2cedb111a.md) | 342 | `declaration-track:b905861b85976ab2cedb111abdf6f2ff0c4ca7ddbd2aa6a5db333cd3631cdd48` |
| 22 | `def` | [CStarAlgebra.spectralOrder](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/cstaralgebra-spectralorder--a577d5bc3f4dca2632d09ab7.md) | 362 | `declaration-track:a577d5bc3f4dca2632d09ab702bcebcea6f5c0a7e34be832864df185005681e6` |
| 23 | `lemma` | [CStarAlgebra.spectralOrderedRing](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/cstaralgebra-spectralorderedring--37aa40f4d08ac241451edd25.md) | 382 | `result-track:37aa40f4d08ac241451edd25520dab73cc52b23085d431684043af87a4f7f1a3` |
| 24 | `instance` | [CStarAlgebra.instNonnegSpectrumClass'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/cstaralgebra-instnonnegspectrumclass--09d489d9cd5c45ed02807fb6.md) | 418 | `declaration-track:09d489d9cd5c45ed02807fb67c0890077275963f0b187ea769561477f2e00163` |
| 25 | `lemma` | [Unitization.cfcₙ_eq_cfc_inr](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/unitization-cfc-eq-cfc-inr--f273313367cd6fdf37f11bbe.md) | 443 | `result-track:f273313367cd6fdf37f11bbeee96916f0ce43c228322ffc7ce54787cda6715a2` |
| 26 | `lemma` | [Unitization.complex_cfcₙ_eq_cfc_inr](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/unitization-complex-cfc-eq-cfc-inr--f973c956d143700c1366f9e3.md) | 461 | `result-track:f973c956d143700c1366f9e35c3bb28ecc4290c9d65edb0e57e99b3ce0575274` |
| 27 | `lemma` | [Unitization.real_cfcₙ_eq_cfc_inr](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/unitization-real-cfc-eq-cfc-inr--ead15f7440dab1a2b7957580.md) | 467 | `result-track:ead15f7440dab1a2b7957580162050f573a538b2adb8cbe3be9721ed81322201` |
| 28 | `instance` | [IsStarNormal.instIsometricContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/isstarnormal-instisometriccontinuousfunctionalcalculus--f3da8eef7512f433ee7a97a8.md) | 479 | `declaration-track:f3da8eef7512f433ee7a97a8a34282b3e5364c6e8f44ac9b02c87f943592457c` |
| 29 | `instance` | [IsSelfAdjoint.instIsometricContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/isselfadjoint-instisometriccontinuousfunctionalcalculus--9f1f57953caa746b46dcbb07.md) | 485 | `declaration-track:9f1f57953caa746b46dcbb07b22185c2bb0cf8c554702b434e3a9708b47f3e40` |
| 30 | `instance` | [IsStarNormal.instNonUnitalIsometricContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/isstarnormal-instnonunitalisometriccontinuousfunctionalcalculus--f186ad50eb96fd243ea2b468.md) | 499 | `declaration-track:f186ad50eb96fd243ea2b46860cfbdb8b9aec07f04f0ac8b2b622f4552c38eed` |
| 31 | `instance` | [IsSelfAdjoint.instNonUnitalIsometricContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/declarations/isselfadjoint-instnonunitalisometriccontinuousfunctionalcalculus--237c96a9527fa65d59a65b1b.md) | 510 | `declaration-track:237c96a9527fa65d59a65b1ba0b7d4396839b6cec42e4861035574ecbde18b63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
