# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PolarCoord.Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9c0e9cd6115cde474d9fa7d3148a7ac2355186c",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9c0e9cd6115cde474d9fa7d3148a7ac2355186c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.PolarCoord` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [realMixedSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/realmixedspace--1dd6ae8dd17a5656c35c5b53.md) | 69 | `declaration-track:1dd6ae8dd17a5656c35c5b533a14f6a300bfd0bbd7fcd18621bcd7052ed1d82d` |
| 2 | `def` | [mixedSpaceToRealMixedSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/mixedspacetorealmixedspace--5e7d1b6df411b4d6f7ee23bd.md) | 76 | `declaration-track:5e7d1b6df411b4d6f7ee23bdda59eafda620fc52a5c3c88cf84adaa43f63d970` |
| 3 | `theorem` | [mixedSpaceToRealMixedSpace_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/mixedspacetorealmixedspace-apply--1880d1b8388eca8f305b7a97.md) | 80 | `result-track:1880d1b8388eca8f305b7a97eb7a4ee374d3a23f00ee572ddf91ead2bfaaba2b` |
| 4 | `theorem` | [volume_preserving_mixedSpaceToRealMixedSpace_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/volume-preserving-mixedspacetorealmixedspace-symm--725ffe2a26bada6348446dd6.md) | 86 | `result-track:725ffe2a26bada6348446dd652a8a826e1a85fe8bc768c827ead6ef8c3236ef3` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/instance--9c0f100bab9974959cf8717f.md) | 92 | `declaration-track:9c0f100bab9974959cf8717f4f2cb582d20af01aab9ccacc94c00e33df9e2562` |
| 6 | `def` | [polarCoordReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/polarcoordreal--30b79a82ceb28c38f50c54cc.md) | 99 | `declaration-track:30b79a82ceb28c38f50c54cc1b132a24b7e51eed356bf580576ab07ebcafcd3d` |
| 7 | `theorem` | [measurable_polarCoordReal_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/measurable-polarcoordreal-symm--22d0e21ba086ebb0d9e84691.md) | 102 | `result-track:22d0e21ba086ebb0d9e84691f37e84fc5be5acb1c3a817e57b49786effdb76da` |
| 8 | `theorem` | [polarCoordReal_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/polarcoordreal-source--b0330cca0215b9259b32b648.md) | 108 | `result-track:b0330cca0215b9259b32b648f66861b78228ddfebad4b2aa4b1d00ab7fdf45e6` |
| 9 | `theorem` | [abs_of_mem_polarCoordReal_target](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/abs-of-mem-polarcoordreal-target--2cb4ef6917145e9bd9ebca5d.md) | 111 | `result-track:2cb4ef6917145e9bd9ebca5d9931bb88d15048888e825124ebb5249ba87aadc6` |
| 10 | `def` | [FDerivPolarCoordRealSymm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/fderivpolarcoordrealsymm--8f55456112d0be1b54d23659.md) | 120 | `declaration-track:8f55456112d0be1b54d236599e2462b844b3c45d5da34fc95cb32534740b46c3` |
| 11 | `theorem` | [hasFDerivAt_polarCoordReal_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/hasfderivat-polarcoordreal-symm--552f0127520307e0046caf8c.md) | 123 | `result-track:552f0127520307e0046caf8c3812f42516261be5a92917ceeeca9a39f41b3359` |
| 12 | `theorem` | [det_fderivPolarCoordRealSymm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/det-fderivpolarcoordrealsymm--d6a030a1ac63c305271a667b.md) | 129 | `result-track:d6a030a1ac63c305271a667b7ebf79a672cdc6fdd660c7393ec914f926056127` |
| 13 | `theorem` | [polarCoordReal_symm_target_ae_eq_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/polarcoordreal-symm-target-ae-eq-univ--3f455aa9f9bbbbf26463de14.md) | 137 | `result-track:3f455aa9f9bbbbf26463de14b391772017d1f20f7cffbbe71703da4234743f14` |
| 14 | `theorem` | [integral_comp_polarCoordReal_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/integral-comp-polarcoordreal-symm--595a0732b4387dff4ee7a841.md) | 144 | `result-track:595a0732b4387dff4ee7a841330c78d6056ed62a13f80f01e827602ad0288304` |
| 15 | `theorem` | [lintegral_comp_polarCoordReal_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/lintegral-comp-polarcoordreal-symm--ed94397619cf424d2e176497.md) | 158 | `result-track:ed94397619cf424d2e176497aa8882544f8a60bcf4d99ede4955708c1c205626` |
| 16 | `def` | [polarCoord](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/polarcoord--4dbe63ff859b4a2bd34fb3f4.md) | 183 | `declaration-track:4dbe63ff859b4a2bd34fb3f427ba6a7a60f0254106c76e5191446dca8163b0d8` |
| 17 | `theorem` | [polarCoord_target_eq_polarCoordReal_target](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/polarcoord-target-eq-polarcoordreal-target--cdbb1126ee4ac53280f14760.md) | 186 | `result-track:cdbb1126ee4ac53280f147605e53ec908bc1a3d63f47abae789fc1b8114be38f` |
| 18 | `theorem` | [polarCoord_symm_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/polarcoord-symm-eq--5ecf42de36f7c52bb4a8d8b7.md) | 189 | `result-track:5ecf42de36f7c52bb4a8d8b7799ab381c6c2c760cf80029a1965cd396a25751e` |
| 19 | `theorem` | [measurable_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/measurable-polarcoord-symm--842cb0672aa8aaabc6e4557a.md) | 193 | `result-track:842cb0672aa8aaabc6e4557ad84580543ed6cd7e7fbc24459e12efd038ff6358` |
| 20 | `theorem` | [normAtPlace_polarCoord_symm_of_isReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/normatplace-polarcoord-symm-of-isreal--464bf1aeb1da7aabe1bd4d87.md) | 198 | `result-track:464bf1aeb1da7aabe1bd4d878d2c1e30d68270ca0db37fb7635f02aecdab455c` |
| 21 | `theorem` | [normAtPlace_polarCoord_symm_of_isComplex](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/normatplace-polarcoord-symm-of-iscomplex--8bda5cbea7ecc3986b3bf9bd.md) | 203 | `result-track:8bda5cbea7ecc3986b3bf9bd946d03bb543ac68f59a1d59e0f1357806b6876aa` |
| 22 | `theorem` | [integral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/integral-comp-polarcoord-symm--8f17220a667a3e9ee950d5fe.md) | 209 | `result-track:8f17220a667a3e9ee950d5fe0b648f906392a3d74d7d098c0f2e6199236ee113` |
| 23 | `theorem` | [lintegral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/lintegral-comp-polarcoord-symm--a98bdce1d42993e4dc7b3282.md) | 219 | `result-track:a98bdce1d42993e4dc7b3282fa93dca0c7bc3f1d4666ae519b4b779a14bf6dda` |
| 24 | `abbrev` | [polarSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/polarspace--ca5b404166c9c16ed79b1b68.md) | 236 | `declaration-track:ca5b404166c9c16ed79b1b68b19b80c6a5f15ae3362edab816e2405f40aa25d2` |
| 25 | `def` | [measurableEquivRealMixedSpacePolarSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/measurableequivrealmixedspacepolarspace--d8843426e3a1a00f23a7d7c2.md) | 244 | `declaration-track:d8843426e3a1a00f23a7d7c2465334e29624ae66ef67b62bba9de4e8ccabb63e` |
| 26 | `def` | [homeoRealMixedSpacePolarSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/homeorealmixedspacepolarspace--8a99ad208a77ff67be96c4d3.md) | 258 | `declaration-track:8a99ad208a77ff67be96c4d3afd9081d0884f2060b1c7148cea07e818bab8a23` |
| 27 | `theorem` | [homeoRealMixedSpacePolarSpace_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/homeorealmixedspacepolarspace-apply--5a24a5ea4765821b4ab26e40.md) | 271 | `result-track:5a24a5ea4765821b4ab26e40d1efccd0d63811b513d1fabb0d7eec9433ba7261` |
| 28 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_fst_ofIsReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/homeorealmixedspacepolarspace-apply-fst-ofisreal--4c5df9e4fd5f06fc8272f083.md) | 276 | `result-track:4c5df9e4fd5f06fc8272f0835301598ded8ef730e6dff44b7af0ee94fc7a5c6e` |
| 29 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_fst_ofIsComplex](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/homeorealmixedspacepolarspace-apply-fst-ofiscomplex--5d97d2eac0a7ebf9edeafa3e.md) | 281 | `result-track:5d97d2eac0a7ebf9edeafa3e38507aa98f6ae58e95c46afe9ee69b5cd6331b2c` |
| 30 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_snd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/homeorealmixedspacepolarspace-apply-snd--42667fe8eadc472f67e41731.md) | 286 | `result-track:42667fe8eadc472f67e417316f23ab011b125a9b5b0667dddcc77281af921cf5` |
| 31 | `theorem` | [homeoRealMixedSpacePolarSpace_symm_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/homeorealmixedspacepolarspace-symm-apply--4305757ee19d70aa409d7437.md) | 290 | `result-track:4305757ee19d70aa409d74377bade09453f58a8b93e9ea69176066b916c8ea60` |
| 32 | `theorem` | [volume_preserving_homeoRealMixedSpacePolarSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/volume-preserving-homeorealmixedspacepolarspace--fede523e5180a191c665e39c.md) | 294 | `result-track:fede523e5180a191c665e39c5d4d048d486dcdda192ad591ce1e220963675789` |
| 33 | `def` | [polarSpaceCoord](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/polarspacecoord--f4cc959e2b991234407d5e15.md) | 310 | `declaration-track:f4cc959e2b991234407d5e15d9ffbc9d5908c5c00b2a2d151157b03b045797ac` |
| 34 | `theorem` | [measurable_polarSpaceCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/measurable-polarspacecoord-symm--2686275c5b6372cf430a74c8.md) | 313 | `result-track:2686275c5b6372cf430a74c84e73acced4fab7f25fd8f6d5658af5d047dc38e3` |
| 35 | `theorem` | [polarSpaceCoord_target'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/polarspacecoord-target--29df369c7b5fd7e5ca9f00fb.md) | 319 | `result-track:29df369c7b5fd7e5ca9f00fb6d7cbac7442d81f8f808bab6d20c5b5ce72d0fd6` |
| 36 | `theorem` | [integral_comp_polarSpaceCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/integral-comp-polarspacecoord-symm--d65f1770f871d080728ece48.md) | 329 | `result-track:d65f1770f871d080728ece489c5905fd1c0f87a8e952f0d26d8cac9ca8a37097` |
| 37 | `theorem` | [lintegral_comp_polarSpaceCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/lintegral-comp-polarspacecoord-symm--64f690c45a1e35c76c8e14b8.md) | 342 | `result-track:64f690c45a1e35c76c8e14b875d00a03860cdda62d0685d7a59659dfa9895f34` |
| 38 | `theorem` | [normAtComplexPlaces_polarSpaceCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/normatcomplexplaces-polarspacecoord-symm--ef9aa39203810d7f635b27a5.md) | 358 | `result-track:ef9aa39203810d7f635b27a5b21df25768f232d03d276fd2cb498aaa148af548` |
| 39 | `theorem` | [volume_eq_two_pi_pow_mul_integral_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/volume-eq-two-pi-pow-mul-integral-aux--d1280ed22d79c045bd7626a1.md) | 367 | `result-track:d1280ed22d79c045bd7626a11c57232b1937945f0f324989b7605c47dc743342` |
| 40 | `theorem` | [volume_eq_two_pi_pow_mul_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/volume-eq-two-pi-pow-mul-integral--3da0227bf122de27471976fe.md) | 392 | `result-track:3da0227bf122de27471976fee4b45e98e0f2637d459237c6da549a319ae3baf8` |
| 41 | `theorem` | [volume_eq_two_pow_mul_two_pi_pow_mul_integral_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/volume-eq-two-pow-mul-two-pi-pow-mul-integral-aux--fc4d731c4cce097eb8622128.md) | 415 | `result-track:fc4d731c4cce097eb8622128c2eb884a50c5db802d409d9ae95189e9db60e702` |
| 42 | `theorem` | [volume_eq_two_pow_mul_two_pi_pow_mul_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/declarations/volume-eq-two-pow-mul-two-pi-pow-mul-integral--9ac323f24459c8a819c018cb.md) | 443 | `result-track:9ac323f24459c8a819c018cbbeb83098179724446442e7ac18ea51dd71193367` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
