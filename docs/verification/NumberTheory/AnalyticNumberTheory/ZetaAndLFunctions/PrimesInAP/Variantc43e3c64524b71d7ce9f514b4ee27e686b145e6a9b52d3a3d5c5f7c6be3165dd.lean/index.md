# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimesInAP.Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "832b79941825be780eb6d4ee618853a92dc9d96c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `832b79941825be780eb6d4ee618853a92dc9d96c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [residueClass](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/residueclass--bac4cb14a2be7c29d666b33e.md) | 95 | `declaration-track:bac4cb14a2be7c29d666b33e75d352a1c5aac0c80d0601c772891d43545421e8` |
| 2 | `lemma` | [residueClass_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/residueclass-nonneg--7c89eed6cacb6af296d800bb.md) | 98 | `result-track:7c89eed6cacb6af296d800bb3ed1428fc516be9bd647b24127deb991c996a495` |
| 3 | `lemma` | [residueClass_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/residueclass-le--6cae075ca0547553f90d864c.md) | 101 | `result-track:6cae075ca0547553f90d864c55b74a1d5d51ac24fd26e4b7b7ed4590634361f5` |
| 4 | `lemma` | [residueClass_apply_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/residueclass-apply-zero--b503781ee22449098793ed63.md) | 105 | `result-track:b503781ee22449098793ed63f97b36f598cd3c72fa46ef41ae78a2c34c1ce1c3` |
| 5 | `lemma` | [abscissaOfAbsConv_residueClass_le_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/abscissaofabsconv-residueclass-le-one--258a3a637e44441eb4df6e66.md) | 109 | `result-track:258a3a637e44441eb4df6e6611a51d3de140201c130aa2a8a30365e17f623414` |
| 6 | `lemma` | [support_residueClass_prime_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/support-residueclass-prime-div--12933460dd5a9ca844520e70.md) | 125 | `result-track:12933460dd5a9ca844520e70203b62ef289b610ba9273510a36c617255907ac2` |
| 7 | `def` | [F₀](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/f--f567adef0ee0f12ff46a862b.md) | 135 | `declaration-track:f567adef0ee0f12ff46a862bf8b7934c9514cff16d1c32da0e4ae01dfdbb3137` |
| 8 | `def` | [F'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/f--ef607d17d81f42b865efea07.md) | 137 | `declaration-track:ef607d17d81f42b865efea074da66730f21dc1d3ffc60be3ea4d12954489fcb6` |
| 9 | `def` | [F''](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/f--573639de1cdafff7af473f13.md) | 139 | `declaration-track:573639de1cdafff7af473f1316e5a51ac593204894821368738c690a462f03db` |
| 10 | `lemma` | [F''_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/f-le--71b87239396bc4786439ace9.md) | 141 | `result-track:71b87239396bc4786439ace99a8f6cefd87d173ca05b2cdb3b7416bdaf853d22` |
| 11 | `lemma` | [summable_F''](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/summable-f--bde84f87a73c7ae6d122ddb3.md) | 162 | `result-track:bde84f87a73c7ae6d122ddb38c4b4f5a954efb76f23daae9dab9c0e592f4f430` |
| 12 | `lemma` | [summable_residueClass_non_primes_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/summable-residueclass-non-primes-div--75fa9b961ab4ab80353d5ada.md) | 188 | `result-track:75fa9b961ab4ab80353d5adabd78b0ef83b909f86e56c5f99c4dc6759e5a7034` |
| 13 | `lemma` | [residueClass_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/residueclass-apply--4fc5159f1655d349b761f21e.md) | 225 | `result-track:4fc5159f1655d349b761f21eb52e4192c04466a4605a7baf59f3c70bc07ba498` |
| 14 | `lemma` | [residueClass_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/residueclass-eq--65315974c2b266e5e0f45279.md) | 235 | `result-track:65315974c2b266e5e0f45279fb32d89d632ef185e40a87f355b93e5266b11501` |
| 15 | `lemma` | [LSeries_residueClass_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/lseries-residueclass-eq--6c7e51de4de2bf794acd688f.md) | 245 | `result-track:6c7e51de4de2bf794acd688fff26fa7c90a4d2dc5b2df5bcfbd242e5c8b2ad40` |
| 16 | `abbrev` | [LFunctionResidueClassAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/lfunctionresidueclassaux--ca3e9fd8d34705c705788950.md) | 267 | `declaration-track:ca3e9fd8d34705c705788950f11a6208b254eaeb428af1b9e46b4d81de82472a` |
| 17 | `lemma` | [continuousOn_LFunctionResidueClassAux'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/continuouson-lfunctionresidueclassaux--fcbdcd53249c513d52e21f52.md) | 273 | `result-track:fcbdcd53249c513d52e21f52a10c6faa20c186f7651e39dfbffc5be9208f1cb0` |
| 18 | `lemma` | [continuousOn_LFunctionResidueClassAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/continuouson-lfunctionresidueclassaux--2e3f649383aa6a376240d4d3.md) | 296 | `result-track:2e3f649383aa6a376240d4d34577d4e39fc81ee8331588b7fdf9862d8498dd0b` |
| 19 | `lemma` | [eqOn_LFunctionResidueClassAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/eqon-lfunctionresidueclassaux--4911df33b780e2278fd812cf.md) | 311 | `result-track:4911df33b780e2278fd812cf603ff48ee0e559e63fa8a0b96ee6c4caf523a677` |
| 20 | `lemma` | [LFunctionResidueClassAux_real](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/lfunctionresidueclassaux-real--daea349c2e2d3de7c0876987.md) | 335 | `result-track:daea349c2e2d3de7c08769874a8818a867f689fd9d7036d6d299f8e3d0a8e2f2` |
| 21 | `lemma` | [LSeries_residueClass_lower_bound](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/lseries-residueclass-lower-bound--84e0ba991b6a3b7245482721.md) | 355 | `result-track:84e0ba991b6a3b72454827214cd757e392e39d78995314f961ad1d50c9f3d212` |
| 22 | `lemma` | [not_summable_residueClass_prime_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/not-summable-residueclass-prime-div--5661eab152f13001421223ba.md) | 386 | `result-track:5661eab152f13001421223bacfc1208249ba904c2ad8713d7b6337eb79480932` |
| 23 | `theorem` | [infinite_setOfPred_prime_and_eq_mod](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/infinite-setofpred-prime-and-eq-mod--3ff254d77066d0e41f238725.md) | 438 | `result-track:3ff254d77066d0e41f2387254a0a6261f401f2c6eb40d2c671bfebd0473f1f4b` |
| 24 | `theorem` | [forall_exists_prime_gt_and_eq_mod](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/forall-exists-prime-gt-and-eq-mod--531169b6a74b00414af29b1b.md) | 450 | `result-track:531169b6a74b00414af29b1b58e1109f3af25bba1fe501653a175b9d43dbec3f` |
| 25 | `theorem` | [forall_exists_prime_gt_and_zmodEq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/forall-exists-prime-gt-and-zmodeq--5148a492970ab98d5f3d78aa.md) | 458 | `result-track:5148a492970ab98d5f3d78aa3c65949224817d04e7220bf8d27878f2839d176d` |
| 26 | `theorem` | [forall_exists_prime_gt_and_modEq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/forall-exists-prime-gt-and-modeq--51aae60449c5bf77579cb573.md) | 470 | `result-track:51aae60449c5bf77579cb573395a2a7b3461cd221b648f9490d935a9d0555392` |
| 27 | `lemma` | [frequently_atTop_prime_and_modEq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/frequently-attop-prime-and-modeq--4e1978f8edd8ae85ae438430.md) | 475 | `result-track:4e1978f8edd8ae85ae438430d35cf8c2f838aaf29f1d0adb8fab01f63ebf4374` |
| 28 | `lemma` | [infinite_setOfPred_prime_and_modEq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variantc43e3c64524b71d7ce9f514b4ee27e686b145e6a9b52d3a3d5c5f7c6be3165dd.lean/declarations/infinite-setofpred-prime-and-modeq--8d623f6020809d30cd273790.md) | 482 | `result-track:8d623f6020809d30cd273790b8922312ec05f56bdf87d59b0a3b8285d8db055c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
