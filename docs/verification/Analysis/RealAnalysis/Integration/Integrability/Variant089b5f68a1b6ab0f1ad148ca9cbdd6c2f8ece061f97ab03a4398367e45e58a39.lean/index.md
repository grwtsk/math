# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integrability.Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "523f90fc960adca33d7cec696a08c7962a71a154",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `523f90fc960adca33d7cec696a08c7962a71a154`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasIntegralIndicatorConst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean/declarations/hasintegralindicatorconst--57f5bea42986bffcdfc3dca7.md) | 37 | `result-track:57f5bea42986bffcdfc3dca7e73a2056f083d7260bf74e5686ddb30abc8d4add` |
| 2 | `theorem` | [HasIntegral.of_aeEq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean/declarations/hasintegral-of-aeeq-zero--e6929dbf385d1a298d772ee3.md) | 103 | `result-track:e6929dbf385d1a298d772ee3b9041c06c4bf7447e3fefcadde9fb2c95283ccc1` |
| 3 | `theorem` | [HasIntegral.congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean/declarations/hasintegral-congr-ae--d482a1083ff7e2ca6c1fd184.md) | 156 | `result-track:d482a1083ff7e2ca6c1fd18429015aae95d30c6ac04495f435dddac012d33e2a` |
| 4 | `theorem` | [hasBoxIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean/declarations/hasboxintegral--0cda9b78ec6862de6f7cadbb.md) | 171 | `result-track:0cda9b78ec6862de6f7cadbbda8297c9de5afd644ad58f94bb2a8ef647afe511` |
| 5 | `theorem` | [box_integral_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean/declarations/box-integral-eq-integral--db496b345dc825de7604a5d8.md) | 186 | `result-track:db496b345dc825de7604a5d8cd7ca904458d350a8b032945604581fe335528b6` |
| 6 | `theorem` | [IntegrableOn.hasBoxIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean/declarations/integrableon-hasboxintegral--d3c105dd4f0905b97d7f1d66.md) | 198 | `result-track:d3c105dd4f0905b97d7f1d66f522f261e3e2117f60504ed3e8630823a588afef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
