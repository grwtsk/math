# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Cauchy.Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0e1cc311679e0c7b5736beb3814d994c6ca3be7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0e1cc311679e0c7b5736beb3814d994c6ca3be7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cauchyPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/cauchypdfreal--4f522f1a94f614eb8e054275.md) | 50 | `declaration-track:4f522f1a94f614eb8e054275e1e48fd2a15404686e843224a9a63dc3e4914b5f` |
| 2 | `lemma` | [cauchyPDFReal_scale_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/cauchypdfreal-scale-zero--816d392086b05ba1f187f942.md) | 56 | `result-track:816d392086b05ba1f187f942d27986a1440b6a724780f402bcb17715549083cf` |
| 3 | `lemma` | [cauchyPDFReal_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/cauchypdfreal-def--627ba5b034bb464670dd553f.md) | 63 | `result-track:627ba5b034bb464670dd553f16e245a815f706ecbf51a5cbfcc29d3afac581eb` |
| 4 | `lemma` | [cauchyPDFReal_def'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/cauchypdfreal-def--0cab631f5b8f252d530482eb.md) | 69 | `result-track:0cab631f5b8f252d530482ebb0a2aaa4712c63aa101360937e8a6601796cd3e8` |
| 5 | `def` | [cauchyPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/cauchypdf--be35eff82413813d37b05413.md) | 81 | `declaration-track:be35eff82413813d37b05413c4b860c2b8460b1bf0a04bb164982f97abf80054` |
| 6 | `lemma` | [cauchyPDF_scale_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/cauchypdf-scale-zero--0cdf7b29b2b544cbe83bc567.md) | 88 | `result-track:0cdf7b29b2b544cbe83bc56756b8d939994c8566c9306590eda71dd07dc147a4` |
| 7 | `lemma` | [cauchyPDF_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/cauchypdf-def--24a67fc02c293d04b034272f.md) | 95 | `result-track:24a67fc02c293d04b034272f91894634db2ca3fecaa11d3b58fa3f0756ded48e` |
| 8 | `lemma` | [measurable_cauchyPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/measurable-cauchypdfreal--c284906e564ee060ff24861f.md) | 102 | `result-track:c284906e564ee060ff24861f99a241b03a79c4226a01cc1ce7c08ce9fc6b2087` |
| 9 | `lemma` | [stronglyMeasurable_cauchyPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/stronglymeasurable-cauchypdfreal--d8484289ad4063fdf58437c5.md) | 110 | `result-track:d8484289ad4063fdf58437c56697d621de54cc0f9685f0f1d1ebe955a339e9de` |
| 10 | `lemma` | [measurable_cauchyPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/measurable-cauchypdf--c4d1002c4ae1f9f88985fcf8.md) | 117 | `result-track:c4d1002c4ae1f9f88985fcf8c57057f18d80603a36b028a6ad5eda91a723898c` |
| 11 | `lemma` | [stronglyMeasurable_cauchyPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/stronglymeasurable-cauchypdf--9f1c0011eef8d1f09eb39079.md) | 125 | `result-track:9f1c0011eef8d1f09eb3907928cfd3e99dd7b6776e24c5243f7632b9a330896b` |
| 12 | `lemma` | [cauchyPDF_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/cauchypdf-pos--eee2fa46f7f7bd75283a72cd.md) | 132 | `result-track:eee2fa46f7f7bd75283a72cd40990a92d9313809be01d994c4be2458c64c8eba` |
| 13 | `lemma` | [integral_cauchyPDFReal_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/integral-cauchypdfreal-eq-one--c6ae2177bb88af22ec9c7331.md) | 139 | `result-track:c6ae2177bb88af22ec9c7331cae26b4b5d44394c079231e725cea5f3ccfcecf9` |
| 14 | `lemma` | [integrable_cauchyPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/integrable-cauchypdfreal--e034d820c883f93973f0a5eb.md) | 150 | `result-track:e034d820c883f93973f0a5eb27e954e396e109ea50667e010bc4ae1d20bb590a` |
| 15 | `lemma` | [lintegral_cauchyPDF_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/lintegral-cauchypdf-eq-one--ed2ba61a63a209e3c37a41c7.md) | 163 | `result-track:ed2ba61a63a209e3c37a41c7462240be866824984f803311514108eaa89d6e71` |
| 16 | `def` | [cauchyMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/cauchymeasure--51056c78ebfb24cf73548eba.md) | 178 | `declaration-track:51056c78ebfb24cf73548eba601a827efa56b6286bb544b17dc1f49d7909fcf6` |
| 17 | `lemma` | [cauchyMeasure_of_scale_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/cauchymeasure-of-scale-ne-zero--7d6dfa2a1097a655ac9045d6.md) | 184 | `result-track:7d6dfa2a1097a655ac9045d6e766593fc8125cbaaecbbceed8e3c9055f7bac11` |
| 18 | `lemma` | [cauchyMeasure_zero_scale](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/cauchymeasure-zero-scale--fe92aff0666fc682bf644729.md) | 191 | `result-track:fe92aff0666fc682bf64472925fd502fa001d18e40000a795ce967ce1f34dc61` |
| 19 | `instance` | [instIsProbabilityMeasure_cauchyMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/declarations/instisprobabilitymeasure-cauchymeasure--3f58009be1e98921f09ece81.md) | 196 | `declaration-track:3f58009be1e98921f09ece817f04b7deaf95d4620c3581ad55b4b3b96367d2e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
