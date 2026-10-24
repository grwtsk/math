# Verification target: GRWTSK.Analysis.Instances.Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb9c0c0322d69fb314973f011d584187ab4cd688",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/index.md) · [Full source](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb9c0c0322d69fb314973f011d584187ab4cd688`.

Source path: `GRWTSK/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Restrict` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unique` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Unitization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Spectrum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cfcₙAux](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfc-aux--6b8da3f691bf3d65ab5e3bcb.md) | 70 | `declaration-track:6b8da3f691bf3d65ab5e3bcb40fef682240107cb7f3398e1d18413b464c7ff88` |
| 2 | `lemma` | [cfcₙAux_id](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfc-aux-id--64b9fda7c2049d0b69355b17.md) | 75 | `result-track:64b9fda7c2049d0b69355b17c099097f9cfbfdcb2c8d4fca1a397d7982a0dc68` |
| 3 | `lemma` | [isClosedEmbedding_cfcₙAux](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/isclosedembedding-cfc-aux--3e036d5e4e3b7b376d980613.md) | 78 | `result-track:3e036d5e4e3b7b376d98061357a5c55a772f619a6956dfbb0545456ede040268` |
| 4 | `lemma` | [spec_cfcₙAux](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/spec-cfc-aux--f4c7e6c359895f121c5b256f.md) | 86 | `result-track:f4c7e6c359895f121c5b256f189141154cd6b173ee5da154bc0fd232a0d42bfc` |
| 5 | `lemma` | [cfcₙAux_mem_range_inr](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfc-aux-mem-range-inr--4aa8cbb3ce2bb0f521051740.md) | 98 | `result-track:4aa8cbb3ce2bb0f521051740a18bb642564b43213870a5e3891e25e0d8bb46d5` |
| 6 | `theorem` | [RCLike.nonUnitalContinuousFunctionalCalculus](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/rclike-nonunitalcontinuousfunctionalcalculus--40cde754e76bd1c76d836834.md) | 119 | `result-track:40cde754e76bd1c76d836834a790cdd1126f8d891282eeebcffd2cbe2aeacbe6` |
| 7 | `lemma` | [isSelfAdjoint_iff_isStarNormal_and_quasispectrumRestricts](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/isselfadjoint-iff-isstarnormal-and-quasispectrumrestricts--953b304fe17fcf5d3d6df54a.md) | 154 | `result-track:953b304fe17fcf5d3d6df54a37432f6ac5b0389a2c71a76e5e3caa71e3d06fa7` |
| 8 | `lemma` | [QuasispectrumRestricts.isSelfAdjoint](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/quasispectrumrestricts-isselfadjoint--563824d9374f18ee7778a5ee.md) | 172 | `result-track:563824d9374f18ee7778a5eeeda45958638323c7d008945a8ec7cd3aabc797b2` |
| 9 | `instance` | [IsSelfAdjoint.instNonUnitalContinuousFunctionalCalculus](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/isselfadjoint-instnonunitalcontinuousfunctionalcalculus--612b5292a046f5f080eeaa71.md) | 176 | `declaration-track:612b5292a046f5f080eeaa71ced8ece83bb1c7fa415cc16e8c4dd1d7911d8c8d` |
| 10 | `lemma` | [isSelfAdjoint_iff_isStarNormal_and_spectrumRestricts](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/isselfadjoint-iff-isstarnormal-and-spectrumrestricts--858d677f8d3d8130d4a88500.md) | 198 | `result-track:858d677f8d3d8130d4a88500658352c6dcb201554419241909cc51344cb3477c` |
| 11 | `lemma` | [IsSelfAdjoint.spectrumRestricts](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/isselfadjoint-spectrumrestricts--53c30ef53ccde40973d52d8a.md) | 212 | `result-track:53c30ef53ccde40973d52d8a86bdffb4670e6ee8ec1643342377624957b77bba` |
| 12 | `lemma` | [SpectrumRestricts.isSelfAdjoint](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/spectrumrestricts-isselfadjoint--f5a5a6882279f22bb5968630.md) | 218 | `result-track:f5a5a6882279f22bb59686305868e0c15e080a3d20e544ff7cd7830151b4b06f` |
| 13 | `instance` | [IsSelfAdjoint.instContinuousFunctionalCalculus](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/isselfadjoint-instcontinuousfunctionalcalculus--235013c9ad7c05a0d630c434.md) | 222 | `declaration-track:235013c9ad7c05a0d630c4348c4bbfe9857347bfc6310a27872f6d3df74b35c9` |
| 14 | `lemma` | [IsSelfAdjoint.spectrum_nonempty](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/isselfadjoint-spectrum-nonempty--0b9ea6560f0dca33575a6fd0.md) | 228 | `result-track:0b9ea6560f0dca33575a6fd0940fb60707a1c1bb734626079b313d9be2f8be89` |
| 15 | `lemma` | [CFC.exists_sqrt_of_isSelfAdjoint_of_quasispectrumRestricts](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfc-exists-sqrt-of-isselfadjoint-of-quasispectrumrestricts--f289480f2b230e3a1137ccf5.md) | 241 | `result-track:f289480f2b230e3a1137ccf5d7dce696e5bd67fa6609e52fc59061d07035c4c0` |
| 16 | `lemma` | [nonneg_iff_isSelfAdjoint_and_quasispectrumRestricts](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/nonneg-iff-isselfadjoint-and-quasispectrumrestricts--55762dde8dc73f233300574e.md) | 263 | `result-track:55762dde8dc73f233300574e3e69e6c6561ba4b812f9ce0226e96287fb4b1bba` |
| 17 | `instance` | [Nonneg.instNonUnitalContinuousFunctionalCalculus](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/nonneg-instnonunitalcontinuousfunctionalcalculus--51d2becbd367480cae0fcbb6.md) | 271 | `declaration-track:51d2becbd367480cae0fcbb66ac11eb6e15642a2e3c71eb6d9bbfb09bd7ffe24` |
| 18 | `lemma` | [NNReal.spectrum_nonempty](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/nnreal-spectrum-nonempty--94aa4407deb805bfadde0ba8.md) | 278 | `result-track:94aa4407deb805bfadde0ba8af5b2c6266c0da1ef7a053fdf6ecf2952ddb0555` |
| 19 | `lemma` | [CFC.exists_sqrt_of_isSelfAdjoint_of_spectrumRestricts](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfc-exists-sqrt-of-isselfadjoint-of-spectrumrestricts--eb4d44b33c674a41cacb99a0.md) | 289 | `result-track:eb4d44b33c674a41cacb99a0821ba49e8791f4fff24f1a8f90f97628361d3de7` |
| 20 | `lemma` | [nonneg_iff_isSelfAdjoint_and_spectrumRestricts](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/nonneg-iff-isselfadjoint-and-spectrumrestricts--20030275ff3259397f088e28.md) | 309 | `result-track:20030275ff3259397f088e28f3a0970f169a3ec5df4bc924397e9cc106bd43a7` |
| 21 | `instance` | [Nonneg.instContinuousFunctionalCalculus](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/nonneg-instcontinuousfunctionalcalculus--7ce3fe42bed253b1fc7f5e86.md) | 317 | `declaration-track:7ce3fe42bed253b1fc7f5e86fabb3668d8b464ced2ddcd7eb181782a54db34bb` |
| 22 | `lemma` | [cfcHom_real_eq_restrict](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfchom-real-eq-restrict--50042f96bb296d759de6a07a.md) | 332 | `result-track:50042f96bb296d759de6a07a0993dac3c21348271defcb56a0f11bf0675d6c6e` |
| 23 | `lemma` | [cfc_real_eq_complex](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfc-real-eq-complex--3b92a92828bd83dbf53b8765.md) | 339 | `result-track:3b92a92828bd83dbf53b8765532234a6150a823447407ca1988dec5fb6d0704f` |
| 24 | `lemma` | [cfcₙHom_real_eq_restrict](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfc-hom-real-eq-restrict--fc69e6b02cfb3a51296b3194.md) | 353 | `result-track:fc69e6b02cfb3a51296b319465050d7629b6a6765c0c389af8deb5ac1717e1b3` |
| 25 | `lemma` | [cfcₙ_real_eq_complex](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfc-real-eq-complex--02f38fe12b419ee8337177a0.md) | 359 | `result-track:02f38fe12b419ee8337177a09b991a601e1b4a53ac58c0ae51d5bf683e4f57ba` |
| 26 | `lemma` | [cfcHom_nnreal_eq_restrict](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfchom-nnreal-eq-restrict--5d990f7d589bbb0183b353f2.md) | 376 | `result-track:5d990f7d589bbb0183b353f2b993efb078e7d3d433d4730f165c9188f87edd20` |
| 27 | `lemma` | [cfc_nnreal_eq_real](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfc-nnreal-eq-real--ad654ce609f4f27fcf64ba36.md) | 381 | `result-track:ad654ce609f4f27fcf64ba3619d00cf626b9ccfb300d923d843e75562847e48c` |
| 28 | `lemma` | [cfcₙHom_nnreal_eq_restrict](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfc-hom-nnreal-eq-restrict--7f1e4420c3a299453765c587.md) | 398 | `result-track:7f1e4420c3a299453765c5874efed44c01a954136f4951f204a1b3aa1ee11c15` |
| 29 | `lemma` | [cfcₙ_nnreal_eq_real](../../../../mathematics/Analysis/Instances/Variantb72b8b6ace328bf54f3aa1f5dc6a8394e4bcde0690f3b747451958632ef76e74.lean/declarations/cfc-nnreal-eq-real--cc3cac003c90c889775d2f79.md) | 404 | `result-track:cc3cac003c90c889775d2f79775e78d6e4371b725a22466ceaf593ee05958430` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
