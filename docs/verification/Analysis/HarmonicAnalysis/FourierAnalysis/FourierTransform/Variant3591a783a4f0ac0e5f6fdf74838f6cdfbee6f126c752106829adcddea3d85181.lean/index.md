# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierTransform.Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10918865f469b879947ae513d22e3a34776ed4e4",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10918865f469b879947ae513d22e3a34776ed4e4`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.AddChar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Circle` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral--93425b93cdd3ce4493dcd240.md) | 77 | `declaration-track:93425b93cdd3ce4493dcd2407af71d19b66eb28e2a3971e952eea7ca6c9fcee0` |
| 2 | `theorem` | [fourierIntegral_const_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-const-smul--c7301141eef0603b6161da16.md) | 81 | `result-track:c7301141eef0603b6161da16820ed5df374039e83157d6d502baf616b3476047` |
| 3 | `theorem` | [norm_fourierIntegral_le_integral_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/norm-fourierintegral-le-integral-norm--cae1b34dae6166b70c96cca2.md) | 88 | `result-track:cae1b34dae6166b70c96cca2b87343bdcd74655cc26ed537dba8d38524cfcb61` |
| 4 | `theorem` | [fourierIntegral_comp_add_right](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-comp-add-right--69319c0a315f2fa9a2fae988.md) | 95 | `result-track:69319c0a315f2fa9a2fae9881f8d0b3ac56bf6b8631ca3155a81451c8417a8f8` |
| 5 | `theorem` | [fourierIntegral_convergent_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-convergent-iff--a93f50d87b60174508a7bfa0.md) | 122 | `result-track:a93f50d87b60174508a7bfa0b2991dc7168fdf34b0977b3876f213d4b2bd86b3` |
| 6 | `theorem` | [fourierIntegral_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-add--34e13b18d182eed2ee933d4f.md) | 138 | `result-track:34e13b18d182eed2ee933d4fa1a74cec5dd1e57040e749012322630e214e67dc` |
| 7 | `theorem` | [fourierIntegral_continuous](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-continuous--d64c8583d27681070f172b9a.md) | 149 | `result-track:d64c8583d27681070f172b9af642aae4e28fe694f3221fbdc41434fea6148400` |
| 8 | `theorem` | [integral_bilin_fourierIntegral_eq_flip](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/integral-bilin-fourierintegral-eq-flip--dbf0c7fe6139445985ae6aa4.md) | 172 | `result-track:dbf0c7fe6139445985ae6aa480fe9c346afce3264e8c2da6d3f532bdb874b45c` |
| 9 | `theorem` | [integral_fourierIntegral_smul_eq_flip](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/integral-fourierintegral-smul-eq-flip--3385dc5589a15c2a04b163c3.md) | 214 | `result-track:3385dc5589a15c2a04b163c3874066eea297192044f54ad10e9873a76bc07bc5` |
| 10 | `lemma` | [fourierIntegral_probChar](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-probchar--fb8a7bc197d84e2698d7f348.md) | 223 | `result-track:fb8a7bc197d84e2698d7f348ed6377db24027630aa9e66d81eea60e4e9f177a4` |
| 11 | `theorem` | [fourierIntegral_continuousLinearMap_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-continuouslinearmap-apply--1d5edfa4e0b5dd3cd749abba.md) | 242 | `result-track:1d5edfa4e0b5dd3cd749abba5dc3f72230a660ae90e79e039f69a82c425eb706` |
| 12 | `theorem` | [fourierIntegral_continuousMultilinearMap_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-continuousmultilinearmap-apply--a323b77b9c10243ee5fe6cba.md) | 251 | `result-track:a323b77b9c10243ee5fe6cba9255e88f1a7cc010569b91fac0fe239eda910301` |
| 13 | `def` | [fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral--bada126745ad5cffae8dd862.md) | 276 | `declaration-track:bada126745ad5cffae8dd8620b55172c9d81ca986db39f514b02fbecb78ffc27` |
| 14 | `theorem` | [fourierIntegral_def](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-def--810e60c4675ea65371142baa.md) | 279 | `result-track:810e60c4675ea65371142baa27d7388e8b98e3fb734ce0280ae6911507c128dc` |
| 15 | `theorem` | [fourierIntegral_const_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-const-smul--1c9ec8ca1ac2504bf3018eb7.md) | 283 | `result-track:1c9ec8ca1ac2504bf3018eb7b1ddeb617c39b4d951afd420c27574789cd3b9f2` |
| 16 | `theorem` | [norm_fourierIntegral_le_integral_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/norm-fourierintegral-le-integral-norm--3553cd73b388a710ac42e1ac.md) | 288 | `result-track:3553cd73b388a710ac42e1acc3e97fd2c084c43a0b427a54ed36cc3ad7610086` |
| 17 | `theorem` | [fourierIntegral_comp_add_right](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-comp-add-right--df6dfc25bde85d5338828618.md) | 294 | `result-track:df6dfc25bde85d5338828618cd6a5893ed201630131ead17698f06ce908274a7` |
| 18 | `theorem` | [vector_fourierIntegral_eq_integral_exp_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/vector-fourierintegral-eq-integral-exp-smul--8897ba5d6297f529c48d53f6.md) | 311 | `result-track:8897ba5d6297f529c48d53f6576fb22ad8ef4d6d7cd1c2d56b4dc860dd54a69a` |
| 19 | `theorem` | [fourierIntegral_convergent_iff'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-convergent-iff--2c0e819146129c86203d244f.md) | 323 | `result-track:2c0e819146129c86203d244fcb5cb0aa2628f0286a7d96406311d1df1f7e02a9` |
| 20 | `theorem` | [fourierIntegral_continuousLinearMap_apply'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-continuouslinearmap-apply--63fc6c8f25437987fa921775.md) | 339 | `result-track:63fc6c8f25437987fa9217753cbff7e8463c0f6071b034a98453920498281b21` |
| 21 | `theorem` | [fourierIntegral_continuousMultilinearMap_apply'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-continuousmultilinearmap-apply--d472754cc08dbc854ce85f62.md) | 345 | `result-track:d472754cc08dbc854ce85f629a3f2ed4c013a6417b4d128a9f53056792936573` |
| 22 | `theorem` | [fourierIntegral_convergent_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-convergent-iff--e57ba4c1153ef3605b80e9ad.md) | 360 | `result-track:e57ba4c1153ef3605b80e9ad72794723978c1148208fa7e8b5e0f5db53d7ca4f` |
| 23 | `def` | [fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral--a6cfb27a90b0b2cb10579cee.md) | 369 | `declaration-track:a6cfb27a90b0b2cb10579ceef9c83eb5dadc171e7411d94411b97c742efb533e` |
| 24 | `def` | [fourierIntegralInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegralinv--d3a990d7a1f65ce922d5c86e.md) | 375 | `declaration-track:d3a990d7a1f65ce922d5c86e8133133b196272dea04a8f3774998fb22040201c` |
| 25 | `lemma` | [fourierIntegral_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-eq--51a875b603ad7bc47db19048.md) | 381 | `result-track:51a875b603ad7bc47db19048511db9246e8bfd41384d5174d50f9d41313b7647` |
| 26 | `lemma` | [fourierIntegral_eq'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-eq--218d2e4f8ec043e1376bf60a.md) | 384 | `result-track:218d2e4f8ec043e1376bf60afdb83307a933a380686915ddfc6f5d2d3adfbb93` |
| 27 | `lemma` | [fourierIntegralInv_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegralinv-eq--79a9c2ea696e903fb394047b.md) | 388 | `result-track:79a9c2ea696e903fb394047b9c66fe8bc2ea7fa305c51f33fa453e980515be80` |
| 28 | `lemma` | [fourierIntegralInv_eq'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegralinv-eq--913127614515227b2641fb56.md) | 392 | `result-track:913127614515227b2641fb5617308f51ce97428a623a22e270166013b328ad58` |
| 29 | `lemma` | [fourierIntegral_comp_linearIsometry](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-comp-linearisometry--4c4e9cca70743c9544c95233.md) | 396 | `result-track:4c4e9cca70743c9544c952337c7e25aebb8758f85feae47140aea5a08620a60d` |
| 30 | `lemma` | [fourierIntegralInv_eq_fourierIntegral_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegralinv-eq-fourierintegral-neg--e40939bb001ac055c92276b3.md) | 401 | `result-track:e40939bb001ac055c92276b3be819cb1298779333648783a65f69f7c422180a0` |
| 31 | `lemma` | [fourierIntegralInv_eq_fourierIntegral_comp_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegralinv-eq-fourierintegral-comp-neg--4449a63155c18e36e91712db.md) | 405 | `result-track:4449a63155c18e36e91712dbe775090f9882037618640cd7a4aa4a2d7e37c37f` |
| 32 | `lemma` | [fourierIntegralInv_comm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegralinv-comm--d5c1c495d1bb36f82beffddf.md) | 412 | `result-track:d5c1c495d1bb36f82beffddfb92a697e7be2bd17e48421c5ad8e5bc21b1b8a88` |
| 33 | `lemma` | [fourierIntegralInv_comp_linearIsometry](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegralinv-comp-linearisometry--6cf1e521af62bf422ab7e2e8.md) | 417 | `result-track:6cf1e521af62bf422ab7e2e8ff29855fd16ee0b5d940a9997d51457268adde9e` |
| 34 | `theorem` | [fourierIntegral_real_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-real-eq--31feddb2eff3b2937f821e5e.md) | 421 | `result-track:31feddb2eff3b2937f821e5e681e920c63eb87be72fbca3a7a3212c6b9039779` |
| 35 | `theorem` | [fourierIntegral_real_eq_integral_exp_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-real-eq-integral-exp-smul--eb2d1b3bb085186d08c87c88.md) | 426 | `result-track:eb2d1b3bb085186d08c87c88422a835f1fe4bbc02def5c744c5050220e0df8ac` |
| 36 | `theorem` | [fourierIntegral_continuousLinearMap_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-continuouslinearmap-apply--243e353dc4ff1cfea513df48.md) | 431 | `result-track:243e353dc4ff1cfea513df48f38738e8d1257f2540696dfa737acf13c5070ef2` |
| 37 | `theorem` | [fourierIntegral_continuousMultilinearMap_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/declarations/fourierintegral-continuousmultilinearmap-apply--ec13e709c2ba5e99279f8fe6.md) | 437 | `result-track:ec13e709c2ba5e99279f8fe68b693045a4db3fbe9cb8c70b4bdf15b03c4639db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
