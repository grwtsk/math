# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eb068253266f1590b48168d01873d3ea9e9275e",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eb068253266f1590b48168d01873d3ea9e9275e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.CompleteLattice` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.LeastGreatest` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/instarchimedean--10fffb09dc2ce78e31b6e1cf.md) | 39 | `declaration-track:10fffb09dc2ce78e31b6e1cfb818d99621167a5b62461b44734f235cf99979cd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/instance--9d8cbc655ad1bd42f816d6f9.md) | 45 | `declaration-track:9d8cbc655ad1bd42f816d6f931a5934f7113a5ef72109ce7af934dffc62de2c0` |
| 3 | `theorem` | [isCauSeq_iff_lift](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/iscauseq-iff-lift--405c0878ddbcd4b878dbe5c7.md) | 48 | `result-track:405c0878ddbcd4b878dbe5c7aa2a5484af1c654fae97635dfd4909286d664043` |
| 4 | `theorem` | [of_near](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/of-near--d1621b7c297bda93ed0c9a4f.md) | 55 | `result-track:d1621b7c297bda93ed0c9a4f3dde7a7f5c4659a2391307d75d31cf2e9285e56d` |
| 5 | `theorem` | [exists_isLUB](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/exists-islub--a411e5b76e111414e082c57b.md) | 63 | `result-track:a411e5b76e111414e082c57b5d05e8c8468ce4f21b5ef7fdb4ffe5e040dd6b61` |
| 6 | `theorem` | [exists_isGLB](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/exists-isglb--863907ccf6168ad6ce13a2c8.md) | 115 | `result-track:863907ccf6168ad6ce13a2c8f5605f766908dbe65f67b1ee711bcee42cf6bca9` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/instance--190724cb95221893238584c5.md) | 123 | `declaration-track:190724cb95221893238584c5a67b7a8f9bcc9a276f14dd2db656b19605d864da` |
| 8 | `theorem` | [sSup_def](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/ssup-def--b22f9a3337fed31274ab81df.md) | 127 | `result-track:b22f9a3337fed31274ab81df8991a892fb59b9f327757da1594b695fda412ee7` |
| 9 | `theorem` | [isLUB_sSup](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/islub-ssup--4b3416f65df71fd62fe99e51.md) | 131 | `result-track:4b3416f65df71fd62fe99e516e20fbc2b685344f19609d595727e3dbc5ca0c75` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/instance--227c8f6219b43b01e0bfe15d.md) | 135 | `declaration-track:227c8f6219b43b01e0bfe15dca021939036feb089fe2fc59d39e03e23050da44` |
| 11 | `theorem` | [sInf_def](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/sinf-def--07e4e1ed8718a27f73ff5686.md) | 138 | `result-track:07e4e1ed8718a27f73ff5686ddc16e788995b269a29d1de0e5f0ee7cf42f9b5c` |
| 12 | `theorem` | [isGLB_sInf](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/isglb-sinf--ade00c77266e0d7529356bf8.md) | 140 | `result-track:ade00c77266e0d7529356bf800f6df16f2b2e576475cc9a7b4a56a4478c9582f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/instance--698a837424672e88de2de61f.md) | 144 | `declaration-track:698a837424672e88de2de61f193f5bcc3f30e032b8dd1d762b61cd6e35cb7cda` |
| 14 | `theorem` | [lt_sInf_add_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/lt-sinf-add-pos--4cb5d5ec4c1d85e4c4740940.md) | 152 | `result-track:4cb5d5ec4c1d85e4c47409405d0f929023aad04ddf2d93004e489f101fcf9fe4` |
| 15 | `theorem` | [add_neg_lt_sSup](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/add-neg-lt-ssup--d39a3496cfc63da5fe1c319d.md) | 156 | `result-track:d39a3496cfc63da5fe1c319dc4cbc64f543cf2cfba1384acbdbaea2c9ad29d9b` |
| 16 | `theorem` | [sInf_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/sinf-le-iff--9bbbfdd6db1ef51f8e783334.md) | 159 | `result-track:9bbbfdd6db1ef51f8e7833342bffff9634a24aa2cb14f1d027243a86762ad57b` |
| 17 | `theorem` | [le_sSup_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/le-ssup-iff--7729ba35b52e1e2edea2f09a.md) | 167 | `result-track:7729ba35b52e1e2edea2f09a864561badfedc401e3ae8ebdd2b3f80168b0af92` |
| 18 | `theorem` | [sSup_empty](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/ssup-empty--a34bacba27cdfd8adca13509.md) | 176 | `result-track:a34bacba27cdfd8adca135098286121e9f8bf4bceb4f041ac9ba57e892e8493a` |
| 19 | `theorem` | [sInf_univ](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/sinf-univ--0e2a6c3a81e71921d7d2990a.md) | 179 | `result-track:0e2a6c3a81e71921d7d2990aeb8ccb3bb35791501e6843f6bcbd5c8712e55a09` |
| 20 | `lemma` | [iSup_of_isEmpty](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/isup-of-isempty--c3c15a52ed00548cf1cb5fd0.md) | 182 | `result-track:c3c15a52ed00548cf1cb5fd00e209ff3e5e24df9ddbfeb176a74de7295303c9a` |
| 21 | `theorem` | [iSup_const_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/isup-const-zero--3064332b0a93b2ff05fb9dd6.md) | 186 | `result-track:3064332b0a93b2ff05fb9dd62aa96d740912ae6b5c54bcb725bc1aa8661a71d2` |
| 22 | `lemma` | [sSup_of_not_bddAbove](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/ssup-of-not-bddabove--ebc0752ed32604ecc20adb8c.md) | 191 | `result-track:ebc0752ed32604ecc20adb8c5283f025632378b66514bb4d221fefe6ebdc4fd2` |
| 23 | `lemma` | [iSup_of_not_bddAbove](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/isup-of-not-bddabove--4ad848c5c1f7a5074d563e2e.md) | 192 | `result-track:4ad848c5c1f7a5074d563e2e72abe3a815d19dbe36bfae8bb35162c4b7a8b2e5` |
| 24 | `theorem` | [sSup_univ](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/ssup-univ--2717ee4c2423e88975a99af2.md) | 194 | `result-track:2717ee4c2423e88975a99af27ef897c594a68c391c5029f7900d55d033033428` |
| 25 | `theorem` | [sInf_empty](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/sinf-empty--119c1bebd2b4d64d318f975f.md) | 197 | `result-track:119c1bebd2b4d64d318f975f6fabb098a8848f1eff2f136b6b956da739f0368c` |
| 26 | `lemma` | [iInf_of_isEmpty](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/iinf-of-isempty--5bd62a86dfd3b18757f8f4e1.md) | 199 | `result-track:5bd62a86dfd3b18757f8f4e11ba7066d0205855ca2d1022b057eeee2741722ce` |
| 27 | `theorem` | [iInf_const_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/iinf-const-zero--fc49507a76fee420b6f5763b.md) | 203 | `result-track:fc49507a76fee420b6f5763bb76fce0701ee899cfdab5d688fffc1c4e7f071ad` |
| 28 | `theorem` | [sInf_of_not_bddBelow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/sinf-of-not-bddbelow--5ceda1dce0931990acfbb062.md) | 208 | `result-track:5ceda1dce0931990acfbb0626f2d2aaa932e04fa1a5cdebe4b7e01c3444e388d` |
| 29 | `theorem` | [iInf_of_not_bddBelow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/iinf-of-not-bddbelow--adc1d33b1ff828835cda2ddb.md) | 211 | `result-track:adc1d33b1ff828835cda2ddb8fba78534114b4b0c2aa2f15fcb97273312cbe30` |
| 30 | `theorem` | [sSup_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/ssup-neg--5ee8297e6d49784657a550c5.md) | 215 | `result-track:5ee8297e6d49784657a550c5b225af3ebef8ea8aaa333b412a75a99b554c8808` |
| 31 | `theorem` | [sInf_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/sinf-neg--d6b16781dff3c85cf4c35a7f.md) | 223 | `result-track:d6b16781dff3c85cf4c35a7f8a7abf43bb42fbda156cd93ade94462c341f0909` |
| 32 | `lemma` | [sSup_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/ssup-le--b9033f8e4d2730ee523e1476.md) | 230 | `result-track:b9033f8e4d2730ee523e14769244a70e2bf132f886977b98261757941b08610d` |
| 33 | `lemma` | [iSup_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/isup-le--fb1b5ed042f46d0237696cc7.md) | 238 | `result-track:fb1b5ed042f46d0237696cc7dd5555b3341b3aad4a879653b8514c28755476e6` |
| 34 | `lemma` | [le_sInf](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/le-sinf--41361216ca104de6886b7786.md) | 245 | `result-track:41361216ca104de6886b7786b5cde7fa2a155e816b01b2e36bcd8ce2e457477c` |
| 35 | `lemma` | [le_iInf](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/le-iinf--f92954f1dc25102996fbf9a6.md) | 253 | `result-track:f92954f1dc25102996fbf9a6fe551a54b08c1d720097dfcf0b81747cf5e5f531` |
| 36 | `lemma` | [sSup_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/ssup-nonpos--58940ee74a14ae6ea8b29658.md) | 258 | `result-track:58940ee74a14ae6ea8b29658f6b087fccd3280054502fcdbfe2b30732bd15abe` |
| 37 | `lemma` | [iSup_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/isup-nonpos--551e300142ed3021d144df8c.md) | 262 | `result-track:551e300142ed3021d144df8c24875087b818348dbc777289203c458b612af16f` |
| 38 | `lemma` | [sInf_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/sinf-nonneg--0c78a22556f7c17d2a8998a1.md) | 266 | `result-track:0c78a22556f7c17d2a8998a171535806f013e240effaf64a9886b1e2b75caeb2` |
| 39 | `lemma` | [iInf_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/iinf-nonneg--aedb4dbe4e9830bf05afa1ec.md) | 270 | `result-track:aedb4dbe4e9830bf05afa1ece5e89bbb22e008bf5e467e66901dd3d5fb15316e` |
| 40 | `lemma` | [sSup_nonneg'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/ssup-nonneg--285fec7fcd15b9e0e7cc9324.md) | 274 | `result-track:285fec7fcd15b9e0e7cc9324ac68682c0b0d150877e67c5424d591f9668107fa` |
| 41 | `lemma` | [iSup_nonneg'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/isup-nonneg--1a06e717372859bbf004912c.md) | 281 | `result-track:1a06e717372859bbf004912c59140c7593ffee6b2a4218c1d324e2a58ae4662c` |
| 42 | `lemma` | [sInf_nonpos'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/sinf-nonpos--5aaf23815d1de668153ed7f9.md) | 285 | `result-track:5aaf23815d1de668153ed7f9b8cc091a888746377bbf4c9d4fa91db6ec0dee63` |
| 43 | `lemma` | [iInf_nonpos'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/iinf-nonpos--6fd2eeaf9b63d81a0af46fb8.md) | 292 | `result-track:6fd2eeaf9b63d81a0af46fb867f7a4b4337ed288b9a39ad8a64b941e2858f1a3` |
| 44 | `lemma` | [sSup_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/ssup-nonneg--d3cb237c4b2312acb567b265.md) | 296 | `result-track:d3cb237c4b2312acb567b2653c1ad7ec19417420a1463b960ff844a34313a7f7` |
| 45 | `lemma` | [iSup_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/isup-nonneg--d55c0f2d69a763caea9b83b6.md) | 303 | `result-track:d55c0f2d69a763caea9b83b6903309213d757b5e56c2c7ab4824cbc73cd94879` |
| 46 | `lemma` | [iSup_nonneg_of_nonnegHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/isup-nonneg-of-nonneghomclass--f4edb2fad328504ec35d0660.md) | 305 | `result-track:f4edb2fad328504ec35d06606f36eb80f3f9bea3f48e020a7458ee2e33a26553` |
| 47 | `lemma` | [sInf_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/sinf-nonpos--383b7315f48f1ab7f4bcdc0f.md) | 312 | `result-track:383b7315f48f1ab7f4bcdc0f3722339c55b90ea2ddb0de2bc929bf3ee4b32ce9` |
| 48 | `lemma` | [iInf_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/iinf-nonpos--af851fd1f78f25327dabd889.md) | 319 | `result-track:af851fd1f78f25327dabd88900daf5d3acf63434895c1ec615d3a253b84314eb` |
| 49 | `theorem` | [sInf_le_sSup](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/sinf-le-ssup--3fba24a67354c336fa295114.md) | 321 | `result-track:3fba24a67354c336fa295114943a4126edf189ea8facba8e14f0079c590f0ff6` |
| 50 | `theorem` | [cauSeq_converges](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/causeq-converges--b2a0c951135a6b451bc21547.md) | 326 | `result-track:b2a0c951135a6b451bc2154772037788d059de3b0f830a35fbe8761ee2606b26` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/instance--a94acd16ebcd77ce86dc2a20.md) | 344 | `declaration-track:a94acd16ebcd77ce86dc2a20766d525617f35cfc7044bb5b88f47fc56071d804` |
| 52 | `theorem` | [iInf_Ioi_eq_iInf_rat_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/iinf-ioi-eq-iinf-rat-gt--7e414dcc3f35f61e96bc4c28.md) | 349 | `result-track:7e414dcc3f35f61e96bc4c28f2d8d51c3a5b15d26203a17e011acfed9ab4a9aa` |
| 53 | `theorem` | [not_bddAbove_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/not-bddabove-coe--4b346dfbc88d1a85fd474e49.md) | 372 | `result-track:4b346dfbc88d1a85fd474e4923f898c21210d6aaf52b90ad8ef0a23fc3f270d8` |
| 54 | `theorem` | [not_bddBelow_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/not-bddbelow-coe--3b216a88a94d53badd30a7a5.md) | 378 | `result-track:3b216a88a94d53badd30a7a5a3e429c85c298e2761886b845f410dfc61113e25` |
| 55 | `theorem` | [iUnion_Iic_rat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/iunion-iic-rat--2f17b00aad3ac1324eca8574.md) | 384 | `result-track:2f17b00aad3ac1324eca85744e7977684be7d109d9008ea974f577d40e445028` |
| 56 | `theorem` | [iInter_Iic_rat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/iinter-iic-rat--1e6e27390e3d21200ea145ee.md) | 387 | `result-track:1e6e27390e3d21200ea145eef2067a26d2e97240a79324715a6b77ccbbbefd04` |
| 57 | `lemma` | [exists_natCast_add_one_lt_pow_of_one_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/exists-natcast-add-one-lt-pow-of-one-lt--f9ce1ee79179bb674d9eaf6a.md) | 391 | `result-track:f9ce1ee79179bb674d9eaf6a3f5060c2bebc541ae828602d8b4d2dedbecf8790` |
| 58 | `lemma` | [exists_nat_pos_inv_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/declarations/exists-nat-pos-inv-lt--aadda4ba34d4a0ebfb47262e.md) | 411 | `result-track:aadda4ba34d4a0ebfb47262ef5933f38f890cba143b8938a201931bc49be05d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
