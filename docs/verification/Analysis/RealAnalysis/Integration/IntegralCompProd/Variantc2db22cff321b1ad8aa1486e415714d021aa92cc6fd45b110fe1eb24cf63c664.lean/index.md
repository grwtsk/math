# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegralCompProd.Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48e575a8f62b187b4d36b125b47b08b6016f7709",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48e575a8f62b187b4d36b125b47b08b6016f7709`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFiniteIntegral_prod_mk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/hasfiniteintegral-prod-mk-left--7d48f59d902a5df6651596be.md) | 56 | `result-track:7d48f59d902a5df6651596be07c405f70e8d2a345ad7e205a566f456a458ff63` |
| 2 | `theorem` | [integrable_kernel_prod_mk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/integrable-kernel-prod-mk-left--fe2f2795b1338d0cd0edf8d9.md) | 72 | `result-track:fe2f2795b1338d0cd0edf8d90eab8104f2a09bcf0bfc1877126710ea34f3bf73` |
| 3 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.MeasureTheory.AEStronglyMeasurable.integral_kernel_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/root-grwtsk-analysis-realanalysis-integration-hasfiniteintegralprodmklef--6f2579ab9baac2557b377d17.md) | 79 | `result-track:6f2579ab9baac2557b377d1717b676b80ff6351b703be4ee601948a80d7c086c` |
| 4 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.MeasureTheory.AEStronglyMeasurable.compProd_mk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/root-grwtsk-analysis-realanalysis-integration-hasfiniteintegralprodmklef--607ee8cb64277c446dbe5363.md) | 86 | `result-track:607ee8cb64277c446dbe5363ce87a8904b237c87c4b9792ecacc08d7e0442694` |
| 5 | `theorem` | [hasFiniteIntegral_compProd_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/hasfiniteintegral-compprod-iff--b67f94c0fb41729787e823ad.md) | 96 | `result-track:b67f94c0fb41729787e823ad772fd23dbab0f43d9773c3cf628976c1ef0dde11` |
| 6 | `theorem` | [hasFiniteIntegral_compProd_iff'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/hasfiniteintegral-compprod-iff--a07d44722407f8824be166fb.md) | 115 | `result-track:a07d44722407f8824be166fbd4639ddcecdbf65952a4c920b478e51970d0122b` |
| 7 | `theorem` | [integrable_compProd_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/integrable-compprod-iff--7f54ec47dab3e8242a9193db.md) | 132 | `result-track:7f54ec47dab3e8242a9193db3f8d885b07d35163c7e9753aee0659a272cd05a9` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.MeasureTheory.Integrable.compProd_mk_left_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/root-grwtsk-analysis-realanalysis-integration-hasfiniteintegralprodmklef--6118b2a6f0cdd4d62031b1c3.md) | 140 | `result-track:6118b2a6f0cdd4d62031b1c3d765bd7d6331e9e5dbca2bb51fc1f33a00e96b10` |
| 9 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.MeasureTheory.Integrable.integral_norm_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/root-grwtsk-analysis-realanalysis-integration-hasfiniteintegralprodmklef--d5d3e6294c1425f26ba58a9e.md) | 145 | `result-track:d5d3e6294c1425f26ba58a9e8818655d35801311284a8a9ef1b8af3ce7be74d5` |
| 10 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.MeasureTheory.Integrable.integral_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/root-grwtsk-analysis-realanalysis-integration-hasfiniteintegralprodmklef--ec6213d0a909052ade1ea945.md) | 150 | `result-track:ec6213d0a909052ade1ea945465a7b806b9ca713c9c52e8e28066feddedc6eef` |
| 11 | `theorem` | [kernel.integral_fn_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/kernel-integral-fn-integral-add--a0523291205d0691df68dfa5.md) | 167 | `result-track:a0523291205d0691df68dfa556bb90c28e767ec017ae659ed53e583cf680a394` |
| 12 | `theorem` | [kernel.integral_fn_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/kernel-integral-fn-integral-sub--ab965bd09e10db90c0b02bcb.md) | 176 | `result-track:ab965bd09e10db90c0b02bcbb62c68f919f77663bb9757cd271c900ed83cf219` |
| 13 | `theorem` | [kernel.lintegral_fn_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/kernel-lintegral-fn-integral-sub--4e77073d87b0989384cf519b.md) | 185 | `result-track:4e77073d87b0989384cf519b4742cf1e38ce95b2b43df8bdfefbc21949809ff4` |
| 14 | `theorem` | [kernel.integral_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/kernel-integral-integral-add--13a59d795a9c63aca7796b5b.md) | 194 | `result-track:13a59d795a9c63aca7796b5b1e9a76113f44db315f2480fc3d0b9fd277c2aee9` |
| 15 | `theorem` | [kernel.integral_integral_add'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/kernel-integral-integral-add--32b1d11e17d56d29d8a26f9d.md) | 202 | `result-track:32b1d11e17d56d29d8a26f9dea1b31bca6371abbffd561b691be8c86a1ef6dc5` |
| 16 | `theorem` | [kernel.integral_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/kernel-integral-integral-sub--a5c78fb330cb9f8641ba3f71.md) | 209 | `result-track:a5c78fb330cb9f8641ba3f7192f5cc3962370f677bb17391307da07d9f786666` |
| 17 | `theorem` | [kernel.integral_integral_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/kernel-integral-integral-sub--3d3d23d3b9e81b5e691a19d8.md) | 217 | `result-track:3d3d23d3b9e81b5e691a19d8ba79027963b0811a19ee2113f8eec1db93729b5e` |
| 18 | `theorem` | [kernel.continuous_integral_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/kernel-continuous-integral-integral--13ba6b632a4814d87ec6fe00.md) | 225 | `result-track:13ba6b632a4814d87ec6fe0076779e0e51af584f990e77df3cfa570446d004f7` |
| 19 | `theorem` | [integral_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/integral-compprod--e884d4287a2e7ba735d76bc0.md) | 253 | `result-track:e884d4287a2e7ba735d76bc0b4d1c49abc972d458cf41d377cbf91cb7dfcf583` |
| 20 | `theorem` | [set_integral_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/set-integral-compprod--f6ee858cac29a91681885577.md) | 279 | `result-track:f6ee858cac29a9168188557737e89ed19c0825367b6fa5b66bce4a9950554753` |
| 21 | `theorem` | [set_integral_compProd_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/set-integral-compprod-univ-right--67ef6abea6865d91c3ac24ba.md) | 288 | `result-track:67ef6abea6865d91c3ac24ba3e681309e7b6d84e86426a4fe2e0ac615a7aa4af` |
| 22 | `theorem` | [set_integral_compProd_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/declarations/set-integral-compprod-univ-left--65cef007f2e89393a055c42c.md) | 294 | `result-track:65cef007f2e89393a055c42cba8651f882e3b3929b3b08eeceebb4dd82370e6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
