# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogMoments.Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83e1c3ee5bc44f243586d512b60b7b94d963a067",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83e1c3ee5bc44f243586d512b60b7b94d963a067`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [negative_nat_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/negative-nat-rpow--fed64510e9d80a4906d1055d.md) | 25 | `result-track:fed64510e9d80a4906d1055daa06c73693cb9aefaec941672e560b9bbd492b95` |
| 2 | `theorem` | [inverse_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/inverse-power-integrable--6dac69523156ae5678f1dbe0.md) | 30 | `result-track:6dac69523156ae5678f1dbe00fec65e5d2918716f4e7f8d4e7abd9032a981afb` |
| 3 | `theorem` | [inverse_power_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/inverse-power-integral--bdbc722d19f11cd3188b92a6.md) | 39 | `result-track:bdbc722d19f11cd3188b92a68b58bdb4e68414610d615c983dbebc7b01abbdfb` |
| 4 | `def` | [logMomentPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/logmomentprimitive--a571600a4f9f7da86af62e4d.md) | 52 | `declaration-track:a571600a4f9f7da86af62e4df8592c9b01db7632658772bb972eb96ccfb5c2c0` |
| 5 | `theorem` | [log_moment_primitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/log-moment-primitive-derivative--885afe2fcedc783834b9c522.md) | 55 | `result-track:885afe2fcedc783834b9c5223497cf78ccc5d2b70a909a03895812046ede498a` |
| 6 | `theorem` | [log_moment_primitive_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/log-moment-primitive-tendsto--7b67c152a340b46461ee49d1.md) | 72 | `result-track:7b67c152a340b46461ee49d1f147725e792d7ccfc07c9eb13f56e716c33bd6dd` |
| 7 | `theorem` | [log_ratio_power_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/log-ratio-power-nonnegative--c9dbf43cd6c59f5d95291481.md) | 91 | `result-track:c9dbf43cd6c59f5d95291481d883e3581102f067b9da4eadda436e6e7bf9148b` |
| 8 | `theorem` | [log_ratio_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/log-ratio-power-integrable--a67151b2c549bd758aa01d4f.md) | 97 | `result-track:a67151b2c549bd758aa01d4f13cae1422f9bbfc0da4ce106c8a582bd4be30aa9` |
| 9 | `theorem` | [log_ratio_power_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/log-ratio-power-integral--ef17f6923c05d5805217a754.md) | 108 | `result-track:ef17f6923c05d5805217a75437cb7db3b59ba743302c1398b97be32de5a56744` |
| 10 | `theorem` | [log_ratio_sixth_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/log-ratio-sixth-integrable--0de50a5a98f6272fb920c13d.md) | 119 | `result-track:0de50a5a98f6272fb920c13d42461927619a4436531da4ed6985826c1ca5a545` |
| 11 | `theorem` | [log_ratio_sixth_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/log-ratio-sixth-integral--540732ddf558d9b63783be40.md) | 123 | `result-track:540732ddf558d9b63783be40b5447744bfe8bd98c734be4b765b44e375c42e45` |
| 12 | `theorem` | [log_ratio_seventh_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/log-ratio-seventh-integrable--5dcd4026068a27462c2ae477.md) | 127 | `result-track:5dcd4026068a27462c2ae477ae54e7b5aec3d1333b9cace365e3cc9abae8d448` |
| 13 | `theorem` | [log_ratio_seventh_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/declarations/log-ratio-seventh-integral--60ea1e6bf3003f3403bea7cb.md) | 131 | `result-track:60ea1e6bf3003f3403bea7cb92d2fafd699b40ce177abba7d09dc2272e7217b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
