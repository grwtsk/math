# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PolarCoord.Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9d01d640d4a633bf14ca44638078910a382d48b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9d01d640d4a633bf14ca44638078910a382d48b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.PolarCoord` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [realMixedSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/realmixedspace--cbcaccc9b175ebb1495e2a0e.md) | 61 | `declaration-track:cbcaccc9b175ebb1495e2a0e638c5b6f85f8e4c948599ba8437ad0212b3c1e68` |
| 2 | `def` | [mixedSpaceToRealMixedSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/mixedspacetorealmixedspace--533b16e706abfb0a1c5e5753.md) | 68 | `declaration-track:533b16e706abfb0a1c5e5753d3f05d9f4a08803d162242d87cf1bf810c3c6769` |
| 3 | `theorem` | [mixedSpaceToRealMixedSpace_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/mixedspacetorealmixedspace-apply--0232aeff301bea106122c221.md) | 72 | `result-track:0232aeff301bea106122c2213bcae224c90505ff70582ce89923b4e995a08010` |
| 4 | `theorem` | [volume_preserving_mixedSpaceToRealMixedSpace_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/volume-preserving-mixedspacetorealmixedspace-symm--b602139512ff07b05f197ef2.md) | 78 | `result-track:b602139512ff07b05f197ef265ac7c3cb4425cb456b83be46288cd50d719dbea` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/instance--a8a27c7aa0a53f0577efa7ae.md) | 84 | `declaration-track:a8a27c7aa0a53f0577efa7aed5ef784d1c07e2a62290cba85670198c327296b7` |
| 6 | `def` | [polarCoordReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/polarcoordreal--f180876562501e951bef3688.md) | 91 | `declaration-track:f180876562501e951bef3688535cbc0b1e8c55104f65ddce8631773b1c345145` |
| 7 | `theorem` | [measurable_polarCoordReal_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/measurable-polarcoordreal-symm--160f9c00bf8f2bc885829594.md) | 94 | `result-track:160f9c00bf8f2bc885829594c456b612bcdc7a2ea38f09b6c5372a51fad8ee95` |
| 8 | `theorem` | [polarCoordReal_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/polarcoordreal-source--5637594815958f7eb8a862af.md) | 100 | `result-track:5637594815958f7eb8a862af4000292262a6e4cdae849240bd1584799b79e95f` |
| 9 | `theorem` | [abs_of_mem_polarCoordReal_target](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/abs-of-mem-polarcoordreal-target--acf1ca8f7ea084606901d3d9.md) | 103 | `result-track:acf1ca8f7ea084606901d3d9eebe546486b8afdb592ae9d843304ba38e43bcdb` |
| 10 | `def` | [FDerivPolarCoordRealSymm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/fderivpolarcoordrealsymm--3b7c8a887ceed0fa835795ab.md) | 112 | `declaration-track:3b7c8a887ceed0fa835795ab711b2c0b874da2d46958e49604958a307cd12082` |
| 11 | `theorem` | [hasFDerivAt_polarCoordReal_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/hasfderivat-polarcoordreal-symm--194f6862610cdb18a984673a.md) | 115 | `result-track:194f6862610cdb18a984673a38fb86ab06399905aab0723645324abab1e09913` |
| 12 | `theorem` | [det_fderivPolarCoordRealSymm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/det-fderivpolarcoordrealsymm--c9248d0426c0eb3479cbf03b.md) | 121 | `result-track:c9248d0426c0eb3479cbf03b6a2a42e47d0479647fa7763d5557736070db37a9` |
| 13 | `theorem` | [polarCoordReal_symm_target_ae_eq_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/polarcoordreal-symm-target-ae-eq-univ--d076f4ab187f47bc37fd396a.md) | 129 | `result-track:d076f4ab187f47bc37fd396afce93a99916775a8c24a1d22cdeeb73659fd367b` |
| 14 | `theorem` | [integral_comp_polarCoordReal_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/integral-comp-polarcoordreal-symm--a254b151b7a4608d2f1ff4fa.md) | 136 | `result-track:a254b151b7a4608d2f1ff4fa5b1ab0680659fd817556a77920ed982c719b0422` |
| 15 | `theorem` | [lintegral_comp_polarCoordReal_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/lintegral-comp-polarcoordreal-symm--63d165aff186b082b5c0ed12.md) | 150 | `result-track:63d165aff186b082b5c0ed125a70d934892acd4267a9695c703e130022623d93` |
| 16 | `def` | [polarCoord](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/polarcoord--f1203ef9331d152487ad4d61.md) | 175 | `declaration-track:f1203ef9331d152487ad4d6108c31b633433a0a4ecae1ed4af8e06479cf1b027` |
| 17 | `theorem` | [polarCoord_target_eq_polarCoordReal_target](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/polarcoord-target-eq-polarcoordreal-target--51561e853651daffa85c0828.md) | 178 | `result-track:51561e853651daffa85c08282403c0fd1fa26f65e8d373ff46a3dec87e651067` |
| 18 | `theorem` | [polarCoord_symm_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/polarcoord-symm-eq--80999d5909268a0e5f70f565.md) | 181 | `result-track:80999d5909268a0e5f70f5658ba6a9cf6242f30995f0e2bd33bae112a4bd400b` |
| 19 | `theorem` | [measurable_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/measurable-polarcoord-symm--65ea0f0a52c668cc5af68e15.md) | 185 | `result-track:65ea0f0a52c668cc5af68e159fc484b8f120e4d9e209eb90450f27720f65ba3e` |
| 20 | `theorem` | [normAtPlace_polarCoord_symm_of_isReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/normatplace-polarcoord-symm-of-isreal--4d9dafca6a8957ca8aa41a7d.md) | 190 | `result-track:4d9dafca6a8957ca8aa41a7d9a0be177b31c9364d8bae059953bea4eb6db4fee` |
| 21 | `theorem` | [normAtPlace_polarCoord_symm_of_isComplex](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/normatplace-polarcoord-symm-of-iscomplex--9bd63336765d56ba95d2de19.md) | 195 | `result-track:9bd63336765d56ba95d2de19513b6a43945704d724744dfaec170b188a5803c5` |
| 22 | `theorem` | [integral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/integral-comp-polarcoord-symm--4c4a83799184a3c90a74f5ad.md) | 201 | `result-track:4c4a83799184a3c90a74f5ad1363f50ea4c2053962ff072b15353d8b1fa7e8c7` |
| 23 | `theorem` | [lintegral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/lintegral-comp-polarcoord-symm--e88a4c651710bf2736f59924.md) | 211 | `result-track:e88a4c651710bf2736f5992440bf8e914c213d27017856603283a47fed7d9e1d` |
| 24 | `abbrev` | [polarSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/polarspace--ea2ca5d10212aa405bef335d.md) | 228 | `declaration-track:ea2ca5d10212aa405bef335da189fd26741c1d33e7a9b59e79a954d749dae788` |
| 25 | `def` | [measurableEquivRealMixedSpacePolarSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/measurableequivrealmixedspacepolarspace--a703cf50e5045fa454e38e67.md) | 236 | `declaration-track:a703cf50e5045fa454e38e674da117ce7362c71c28429332a41b71afbc4d2a7e` |
| 26 | `def` | [homeoRealMixedSpacePolarSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/homeorealmixedspacepolarspace--e56f663efdc69dd4a2e82df9.md) | 250 | `declaration-track:e56f663efdc69dd4a2e82df950570d549eab9d454a6511136a6f5bf579e85904` |
| 27 | `theorem` | [homeoRealMixedSpacePolarSpace_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/homeorealmixedspacepolarspace-apply--0162d20555e2805a2a4dd4f5.md) | 263 | `result-track:0162d20555e2805a2a4dd4f55d503d6fe1096b9aa33b65080f45eaf176488240` |
| 28 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_fst_ofIsReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/homeorealmixedspacepolarspace-apply-fst-ofisreal--d0a5c58b9ac5373b03542498.md) | 268 | `result-track:d0a5c58b9ac5373b0354249804dec0444acab649f40f5a9c26645c1039de962c` |
| 29 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_fst_ofIsComplex](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/homeorealmixedspacepolarspace-apply-fst-ofiscomplex--5685b114ff67ed176b752de1.md) | 273 | `result-track:5685b114ff67ed176b752de19267b648556447b7e551f504e2ec8ed04b09b630` |
| 30 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_snd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/homeorealmixedspacepolarspace-apply-snd--b707f587b945cd28c42d5e50.md) | 278 | `result-track:b707f587b945cd28c42d5e5082236b5ae2b98cbc92c8143c7114f32e5fde86e7` |
| 31 | `theorem` | [homeoRealMixedSpacePolarSpace_symm_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/homeorealmixedspacepolarspace-symm-apply--1d049b6b39acbc72628b1114.md) | 282 | `result-track:1d049b6b39acbc72628b11145b33359f55c0b4bfbe001e60e1c736801d5c8fbc` |
| 32 | `theorem` | [volume_preserving_homeoRealMixedSpacePolarSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/volume-preserving-homeorealmixedspacepolarspace--9df495151d74205ce81f74b9.md) | 286 | `result-track:9df495151d74205ce81f74b9cec074a7940d09cd30e6af1ba30a625f45e5a174` |
| 33 | `def` | [polarSpaceCoord](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/polarspacecoord--9dd04bc42c8d532c88e9f3f7.md) | 302 | `declaration-track:9dd04bc42c8d532c88e9f3f78b18638b35aaa88f731c2943f59252612cfb1c06` |
| 34 | `theorem` | [measurable_polarSpaceCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/measurable-polarspacecoord-symm--09ccd099b7d5d738b472088e.md) | 305 | `result-track:09ccd099b7d5d738b472088eb5c8d9193dc1dfc68ffc7fb5453565b8a918456d` |
| 35 | `theorem` | [polarSpaceCoord_target'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/polarspacecoord-target--da72a215dcccbc3661d3269d.md) | 311 | `result-track:da72a215dcccbc3661d3269d1659a15a339ec6383c06ce50b68ac16d2881d915` |
| 36 | `theorem` | [integral_comp_polarSpaceCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/integral-comp-polarspacecoord-symm--995c5b9af23a86147960b37a.md) | 321 | `result-track:995c5b9af23a86147960b37acc7e655f3c0d1e8f664df6d5235fb4cfa2cf7979` |
| 37 | `theorem` | [lintegral_comp_polarSpaceCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/lintegral-comp-polarspacecoord-symm--3e00a929a2c84d60a0dac1ad.md) | 334 | `result-track:3e00a929a2c84d60a0dac1adb4209bbcf8ce001c0629e11840ed75adc7ad25d1` |
| 38 | `theorem` | [normAtComplexPlaces_polarSpaceCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/normatcomplexplaces-polarspacecoord-symm--7dff36458a96ed06afb65737.md) | 350 | `result-track:7dff36458a96ed06afb65737a4e69fad6aa7e25d398f96c4c3c02c6096a29196` |
| 39 | `theorem` | [volume_eq_two_pi_pow_mul_integral_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/volume-eq-two-pi-pow-mul-integral-aux--50bf94c4890998d1100728e3.md) | 359 | `result-track:50bf94c4890998d1100728e36bea67925f528cd3f629a1e5925300a695414f1f` |
| 40 | `theorem` | [volume_eq_two_pi_pow_mul_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/volume-eq-two-pi-pow-mul-integral--83c587f5ce030913a2192800.md) | 384 | `result-track:83c587f5ce030913a2192800c05e6c997d3c76e67c4d2d5ffecc0502039423a6` |
| 41 | `theorem` | [volume_eq_two_pow_mul_two_pi_pow_mul_integral_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/volume-eq-two-pow-mul-two-pi-pow-mul-integral-aux--4088138222270c62858d9526.md) | 407 | `result-track:4088138222270c62858d9526675fe379e7341b7b2d7fb34250e8e8194ca581a7` |
| 42 | `theorem` | [volume_eq_two_pow_mul_two_pi_pow_mul_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean/declarations/volume-eq-two-pow-mul-two-pi-pow-mul-integral--f8cee87d5b36df8f4a9cae2e.md) | 435 | `result-track:f8cee87d5b36df8f4a9cae2e1b3864722e68bcb6be5e1c4fba823be8f0dadabc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
