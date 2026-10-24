# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Geometric.Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50d5b65064db0e278f4076f0ecbac12cd894d339",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50d5b65064db0e278f4076f0ecbac12cd894d339`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.SumMeasure` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [geometricMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/geometricmeasure--bd79394dcd164ab286fd8096.md) | 60 | `declaration-track:bd79394dcd164ab286fd80963c13ab80bb7b5685fd92262c3e07f4d3aa4b5166` |
| 2 | `lemma` | [geometricMeasure_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/geometricmeasure-eq--97745390e292a275978002d5.md) | 66 | `result-track:97745390e292a275978002d55742cb0229963098433be154ea1724df0cda7601` |
| 3 | `lemma` | [geometricMeasure_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/geometricmeasure-nonneg--67b5a4139f1fb8f0835f4682.md) | 73 | `result-track:67b5a4139f1fb8f0835f4682526f595bfec7e5498d6e68c37f1d7bf28daf84fe` |
| 4 | `lemma` | [geometricMeasure_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/geometricmeasure-pos--cb73c92c10150425c17e135a.md) | 76 | `result-track:cb73c92c10150425c17e135ab422fc61c2120c986db476eeb1ee62c73c083c56` |
| 5 | `lemma` | [geometricMeasure_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/geometricmeasure-singleton--2c5be7a1fafa01ccbafb0e1c.md) | 79 | `result-track:2c5be7a1fafa01ccbafb0e1c0e30fb7abe29d9c261f8cad1cb26c2d6286e2dc5` |
| 6 | `lemma` | [geometricMeasure_real_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/geometricmeasure-real-singleton--8a5c51c43b21d3a6c28b1080.md) | 83 | `result-track:8a5c51c43b21d3a6c28b1080ed3b62a4a79cbc04e0507e0d5ba8db3d994672f2` |
| 7 | `lemma` | [geometricMeasure_real_singleton_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/geometricmeasure-real-singleton-pos--efb147a8f5eda2e5578c2225.md) | 88 | `result-track:efb147a8f5eda2e5578c22256a118095cca67b632e51c18bf0ed7c6a16bc3802` |
| 8 | `lemma` | [hasSum_one_geometricMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/hassum-one-geometricmeasure--d12c51c29997e22b5576a080.md) | 93 | `result-track:d12c51c29997e22b5576a080c5a678ab3c9afe5c387f02454d837db6ac1e441e` |
| 9 | `instance` | [isProbabilityMeasure_geometricMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/isprobabilitymeasure-geometricmeasure--f3b2df00cf382b1d164df106.md) | 98 | `declaration-track:f3b2df00cf382b1d164df1065c42953a300f90a60b0335e981262ec6d4bb0b70` |
| 10 | `lemma` | [integrable_geometricMeasure_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/integrable-geometricmeasure-iff--79ece0c40239761e2c260fa6.md) | 110 | `result-track:79ece0c40239761e2c260fa649108168a417b9db22753095812ae3566bcb76bb` |
| 11 | `lemma` | [hasSum_integral_geometricMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/hassum-integral-geometricmeasure--e8e7ea0c0d8aa0ff73bff995.md) | 118 | `result-track:e8e7ea0c0d8aa0ff73bff995aef93f99d53c89f4badf2d2fc3c526b277563049` |
| 12 | `lemma` | [integral_geometricMeasure'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/integral-geometricmeasure--80b27b7191781a3b9ccfc20b.md) | 134 | `result-track:80b27b7191781a3b9ccfc20b57687a765ce2928004634a46486c84b985dca3f5` |
| 13 | `lemma` | [integral_geometricMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/integral-geometricmeasure--7c2d4e10b90d51987ed6f364.md) | 145 | `result-track:7c2d4e10b90d51987ed6f364ea3282958ed8dcc5dcba36450dc0a2bb8b392582` |
| 14 | `def` | [geometricPMFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/geometricpmfreal--c0588801027f866ec3556d84.md) | 160 | `declaration-track:c0588801027f866ec3556d849775d2cb2c4b6267e7aaecb4966252f73b057d9b` |
| 15 | `lemma` | [geometricPMFRealSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/geometricpmfrealsum--420e11b4ba8ebe9f22984251.md) | 163 | `result-track:420e11b4ba8ebe9f229842513299543a1499d0cfa49581ccd3bc913a88219102` |
| 16 | `lemma` | [geometricPMFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/geometricpmfreal-pos--26a4844ffd51f0ebb889f526.md) | 173 | `result-track:26a4844ffd51f0ebb889f5266467adb4bfd4e9a407b51b0976a11be6e3155c22` |
| 17 | `lemma` | [geometricPMFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/geometricpmfreal-nonneg--e2af5696419108b218f93283.md) | 179 | `result-track:e2af5696419108b218f93283d36605551a6d262e59eb2dbaa4aa33d1edaf0813` |
| 18 | `def` | [geometricPMF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/geometricpmf--db9e11ba72039a2e606c12ed.md) | 187 | `declaration-track:db9e11ba72039a2e606c12edb0f738fa69eb73090d95932e55e1b7fd78ba97da` |
| 19 | `lemma` | [measurable_geometricPMFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/measurable-geometricpmfreal--bc551bf8bd41f122a942cdec.md) | 195 | `result-track:bc551bf8bd41f122a942cdecfc3e312ca865e3f6073a941542660781ed625743` |
| 20 | `lemma` | [stronglyMeasurable_geometricPMFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Geometric/Variant0577c2bf0ffdf1446dec6ed22cc1ec5be9b0af7769a7ca78e058cef506be6d16.lean/declarations/stronglymeasurable-geometricpmfreal--8e7822f9284b20d74d5443e3.md) | 199 | `result-track:8e7822f9284b20d74d5443e32eeb527623c6bbb669fe08d038fd6f0c241dadcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
