# Verification target: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FiniteBooleanStructure.Variantec14e8913e14ac2b.HammingConjugacyAndAvalanche

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "939839c3e9609bb3d0795c633e28ae2b2098cbad",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `939839c3e9609bb3d0795c633e28ae2b2098cbad`.

Source path: `GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Network.Permutation` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.GroupTheory.BasicGroupTheory.FiniteBooleanStructure.Variantec14e8913e14ac2b.XorTranslationEmbedding`](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinatePermutationHom](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/coordinatepermutationhom--cee48dd690db138900735cdc.md) | 53 | `declaration-track:cee48dd690db138900735cdc8847c11969e71b64affbf2bd0679045c3d19d498` |
| 2 | `theorem` | [coordinatePermutationHom_apply](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/coordinatepermutationhom-apply--7883b0005bb82bacdf17f6b8.md) | 62 | `result-track:7883b0005bb82bacdf17f6b82638365104f2e870da004cd8f506f7435c2be471` |
| 3 | `theorem` | [coordinatePermutation_basisBit](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/coordinatepermutation-basisbit--4ca91a8e4cbf19d06e19ef35.md) | 69 | `result-track:4ca91a8e4cbf19d06e19ef35a3e8b5fd10aee5066174f0b6e535dee9771af4d5` |
| 4 | `theorem` | [basisBit_injective](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/basisbit-injective--33bead9be082586c1a8bc3b3.md) | 78 | `result-track:33bead9be082586c1a8bc3b31e1481e9ee6bf94a3b379c20a4c77e1463f27b08` |
| 5 | `theorem` | [coordinatePermutationHom_injective](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/coordinatepermutationhom-injective--e281ff528c025163961861dd.md) | 86 | `result-track:e281ff528c025163961861dd2a4950c38d3898588636b9423b2a7cb2ab47b4e0` |
| 6 | `def` | [coordinatePermutationEmbedding](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/coordinatepermutationembedding--d568c45e972592c4e381a7d6.md) | 100 | `declaration-track:d568c45e972592c4e381a7d6c9aa36f0a4fcc77f79aa7f469903780bc16454a0` |
| 7 | `def` | [hammingDistance](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/hammingdistance--214c27830f01f1ff379aca27.md) | 108 | `declaration-track:214c27830f01f1ff379aca27ae30f00f938c19aff8804e977dfe30980d644c32` |
| 8 | `theorem` | [hammingDistance_self](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/hammingdistance-self--8cb261a84c763920c1e8c222.md) | 112 | `result-track:8cb261a84c763920c1e8c2224cdb5bc12a414ba4d3ff1cc4f20c27da703ac16d` |
| 9 | `theorem` | [hammingDistance_comm](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/hammingdistance-comm--3e7751ee16e1f75a153dccff.md) | 116 | `result-track:3e7751ee16e1f75a153dccff17a15bfe17d7b9bc36af4a4a6491a04e167e19b9` |
| 10 | `theorem` | [hammingDistance_eq_zero_iff](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/hammingdistance-eq-zero-iff--c803331b7d2e318fad510b7f.md) | 120 | `result-track:c803331b7d2e318fad510b7ffd764ccedb2e626dae982cfc2737914964b53a9d` |
| 11 | `structure` | [HammingIso](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/hammingiso--0bbedcc9c93271a02f7ea4e0.md) | 126 | `declaration-track:0bbedcc9c93271a02f7ea4e0b8e067148b182e119f7ee84cc54cd62d23664595` |
| 12 | `def` | [HammingIso.toPerm](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/hammingiso-toperm--deaedcff3a939295948728cf.md) | 131 | `declaration-track:deaedcff3a939295948728cfb532f6ba2fdb36cc44dc07555042771d2625c40d` |
| 13 | `theorem` | [HammingIso.toPerm_apply](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/hammingiso-toperm-apply--b80895fd63c2dbb854175078.md) | 135 | `result-track:b80895fd63c2dbb8541750789326a5a1837099baa6e22d7850b07edd5d8d4823` |
| 14 | `theorem` | [xorBits_cancel_both_right](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/xorbits-cancel-both-right--59968f4807b544fce5b10879.md) | 142 | `result-track:59968f4807b544fce5b1087906e025dd65c45f50cef7e1a8baf26c388cce944d` |
| 15 | `theorem` | [coordinatePermutation_zero](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/coordinatepermutation-zero--52665ebdb488901b7f3ac1d1.md) | 149 | `result-track:52665ebdb488901b7f3ac1d119288306ea348501edf573ea53a004ad823861d5` |
| 16 | `theorem` | [HammingIso.hammingDistance_toPerm](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/hammingiso-hammingdistance-toperm--22e8b5b59784bec49c746d64.md) | 156 | `result-track:22e8b5b59784bec49c746d649000675e93cf982123bdc429536565c4b6da5dba` |
| 17 | `theorem` | [HammingIso.toPerm_injective](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/hammingiso-toperm-injective--549ebb9930f17d0165a10dc6.md) | 167 | `result-track:549ebb9930f17d0165a10dc64d3c78aecc37851216a4d19c8321b8782c4c3cd4` |
| 18 | `def` | [conjugate](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/conjugate--c337342530c4f1421eb06420.md) | 186 | `declaration-track:c337342530c4f1421eb064204bba3543bd40297230ad22a0a213933d84f42dcd` |
| 19 | `theorem` | [conjugate_apply](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/conjugate-apply--a0ab46ef192f1b304796dca5.md) | 190 | `result-track:a0ab46ef192f1b304796dca5910b30ef671c187a5b404d30ad732234f451577c` |
| 20 | `theorem` | [conjugate_one](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/conjugate-one--c33c4374fef2893f323e457b.md) | 197 | `result-track:c33c4374fef2893f323e457bf0f6d220d231c79d5cdb13380a913c4fedd674f5` |
| 21 | `theorem` | [conjugate_self](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/conjugate-self--5cf5e48b09e1fcd466a86dae.md) | 203 | `result-track:5cf5e48b09e1fcd466a86dae716a8c99f0dccaf75277e77267bf6ccef3426b50` |
| 22 | `theorem` | [conjugate_pow](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/conjugate-pow--c46ff53a6c08d464016f2aa7.md) | 210 | `result-track:c46ff53a6c08d464016f2aa7c9cc735d68c3975971d0b951e027452317b32ece` |
| 23 | `theorem` | [HammingIso.toPerm_symm_apply](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/hammingiso-toperm-symm-apply--b76476abbe6884674083a501.md) | 229 | `result-track:b76476abbe6884674083a501adc3d1a7e7dd95c8e7fc11fa1f218e2e5570e254` |
| 24 | `theorem` | [HammingIso.toPerm_symm_xor_basis](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/hammingiso-toperm-symm-xor-basis--86cd011fec69e82c9a44f301.md) | 236 | `result-track:86cd011fec69e82c9a44f301866dffa8265ce188f925e520f6b64e1a2ecfef73` |
| 25 | `theorem` | [HammingIso.toPerm_xor_cancel](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/hammingiso-toperm-xor-cancel--827139fe241c9301a49cc882.md) | 248 | `result-track:827139fe241c9301a49cc882b604e58935f3ccb4a68015e93167313e2042706e` |
| 26 | `theorem` | [bitDerivative_conjugate_hammingIso](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/bitderivative-conjugate-hammingiso--177ff174e9bde2696dc77f83.md) | 260 | `result-track:177ff174e9bde2696dc77f83e7ae966acf3bc9a6a30c4b693dc280935477f298` |
| 27 | `theorem` | [derivativeBit_conjugate_hammingIso](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/derivativebit-conjugate-hammingiso--ef07da65faed5074ea09e927.md) | 274 | `result-track:ef07da65faed5074ea09e927a407a19c05fd3ffbf2ba6d40a58ed27c705fa03b` |
| 28 | `theorem` | [sacCount_conjugate_hammingIso](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/saccount-conjugate-hammingiso--6abe321b1166474ae34b5480.md) | 286 | `result-track:6abe321b1166474ae34b54804ddb5c77c31dcf019b5710a7d6bd1f586712ae52` |
| 29 | `theorem` | [strictSAC_conjugate_hammingIso](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/strictsac-conjugate-hammingiso--598ec5aa4d948b0513ff23d2.md) | 300 | `result-track:598ec5aa4d948b0513ff23d271491991b61a526dfa8d6985e2200e1509363b9e` |
| 30 | `theorem` | [sacEntry_conjugate_hammingIso](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/sacentry-conjugate-hammingiso--a8214ad252bfd408d2539151.md) | 312 | `result-track:a8214ad252bfd408d2539151a945d0f4da448a2e1590e51ff3d83eb3ec0ea452` |
| 31 | `theorem` | [sum_sacEntry_relabel](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/sum-sacentry-relabel--9757841e27959aff0462eef7.md) | 320 | `result-track:9757841e27959aff0462eef7c766fc143b0fea73ba70b4b551609d79d08a2439` |
| 32 | `theorem` | [sacScore_conjugate_hammingIso](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/sacscore-conjugate-hammingiso--072d6beaf9bdff3c96391495.md) | 347 | `result-track:072d6beaf9bdff3c96391495aecab5037ce9cea037d6469fba0d76521cc588d9` |
| 33 | `theorem` | [varianceScore_conjugate_hammingIso](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/declarations/variancescore-conjugate-hammingiso--8769afc3544ee88ea5c376d4.md) | 357 | `result-track:8769afc3544ee88ea5c376d480a933d85aaf022e2738a0ba29ae1ba12a1be683` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
