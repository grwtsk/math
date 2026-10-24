# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NormedSpace.Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4f059be045a2e1c2a183e2ec93d65bbc6e956ac",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4f059be045a2e1c2a183e2ec93d65bbc6e956ac`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/macro-rules--193a6e69b6ac71bfce15fa76.md) | 16 | `declaration-track:193a6e69b6ac71bfce15fa76cf9a1023317d2660032c69ca35e72fae04036427` |
| 2 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/example--2afb2657e4ce4015a49ee28b.md) | 32 | `declaration-track:2afb2657e4ce4015a49ee28be36fde3a32d83f804382ea418d6f98a07fe4a3b4` |
| 3 | `instance` | [MapContinuousLinearEquiv.isAddHaarMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/mapcontinuouslinearequiv-isaddhaarmeasure--caca468324eb5d7afe6aedef.md) | 43 | `declaration-track:caca468324eb5d7afe6aedefa6ed43941dd5be3072604ce58b13d48b4ef80bc1` |
| 4 | `instance` | [MapLinearEquiv.isAddHaarMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/maplinearequiv-isaddhaarmeasure--c53d14437b7e7cd9d27e9d84.md) | 50 | `declaration-track:c53d14437b7e7cd9d27e9d84045b6ee51eca020680bf0cfca0b482b7970e223c` |
| 5 | `theorem` | [integral_comp_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integral-comp-smul--9aa2af25aa78ea23eaccd485.md) | 65 | `result-track:9aa2af25aa78ea23eaccd48574c58064d6da68506365894eb64a5f204a21995e` |
| 6 | `theorem` | [integral_comp_smul_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integral-comp-smul-of-nonneg--c7928af6b985888a8e01edb9.md) | 88 | `result-track:c7928af6b985888a8e01edb9f5786ce2fb494bc2007917c691edd3bb396f85c0` |
| 7 | `theorem` | [integral_comp_inv_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integral-comp-inv-smul--b253819f8724cda7bc3c1c2c.md) | 96 | `result-track:b253819f8724cda7bc3c1c2c491ec4ab1e10fadc3b4f203e2d040d7b6ac897a6` |
| 8 | `theorem` | [integral_comp_inv_smul_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integral-comp-inv-smul-of-nonneg--235b8a1b101cd411077ab1e1.md) | 104 | `result-track:235b8a1b101cd411077ab1e1343b5b6cc0a6c9eeba08be762c372349689cc418` |
| 9 | `theorem` | [integral_comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integral-comp-mul-left--10d7eb286c35872f5601faaf.md) | 109 | `result-track:10d7eb286c35872f5601faaff2e9d66ab661f76413cb42976be8e7219cee06eb` |
| 10 | `theorem` | [integral_comp_inv_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integral-comp-inv-mul-left--8156c12a03bd2f42a92ca24e.md) | 113 | `result-track:8156c12a03bd2f42a92ca24e6a57335bb9b29695357d38099bc3ac539c1e47f0` |
| 11 | `theorem` | [integral_comp_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integral-comp-mul-right--ea3c5d01e39aba95e89dabfd.md) | 118 | `result-track:ea3c5d01e39aba95e89dabfdff42fe1a03b5ecbc89fb67e21fe4433248aea2ae` |
| 12 | `theorem` | [integral_comp_inv_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integral-comp-inv-mul-right--d9d300f6f7a9762637d26f6c.md) | 122 | `result-track:d9d300f6f7a9762637d26f6ccd5abc054653a0bd9c1622616592d7aa45a70785` |
| 13 | `theorem` | [integral_comp_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integral-comp-div--72d0c15b8f8419c3ebe236c9.md) | 127 | `result-track:72d0c15b8f8419c3ebe236c9e3e7224f10a94f21c347ee93e928fbb7ed49e380` |
| 14 | `theorem` | [integrable_comp_smul_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integrable-comp-smul-iff--0e8167380f8536e53fd03ae5.md) | 135 | `result-track:0e8167380f8536e53fd03ae5a66f51855ebce889504c28e1a02ef8fa001c5d0e` |
| 15 | `theorem` | [Integrable.comp_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integrable-comp-smul--b2ebe5f972acebdb1b263798.md) | 152 | `result-track:b2ebe5f972acebdb1b263798bffb64574ef09b665798d56bdee028667185795d` |
| 16 | `theorem` | [integrable_comp_mul_left_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integrable-comp-mul-left-iff--8588e3663161964f5a4cef0e.md) | 158 | `result-track:8588e3663161964f5a4cef0e395fa2f58558c1dec89529c4994a22a01a966224` |
| 17 | `theorem` | [Integrable.comp_mul_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integrable-comp-mul-left--ebb80e6aaeca7c8eb4cf1c85.md) | 163 | `result-track:ebb80e6aaeca7c8eb4cf1c853bded2478479587ae519545e92241195f97db4b7` |
| 18 | `theorem` | [integrable_comp_mul_right_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integrable-comp-mul-right-iff--5122bedad5589e2a3385dd72.md) | 168 | `result-track:5122bedad5589e2a3385dd72ec15bb1ae4b54acb42ff21de75fac560e2fb600c` |
| 19 | `theorem` | [Integrable.comp_mul_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integrable-comp-mul-right--e7ba4d2588556603acfa2d81.md) | 173 | `result-track:e7ba4d2588556603acfa2d817edfbafb3255a350f0a7ba01ba7da12061ccaf82` |
| 20 | `theorem` | [integrable_comp_div_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integrable-comp-div-iff--ea5b163352dd0f6cb1ce2713.md) | 178 | `result-track:ea5b163352dd0f6cb1ce271371509b1f487e4552e3f8305f17a2a0305f0e292c` |
| 21 | `theorem` | [Integrable.comp_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant8cbac2f3c2e5b333d9a19119ba65de420e7da69fc62986ee2eb177a35bbda19f.lean/declarations/integrable-comp-div--9a73a88feb4bcaa2a277ab15.md) | 183 | `result-track:9a73a88feb4bcaa2a277ab15834c22ef1412904aad3c231a691d732cca982c62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
