# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FourierBridgeLiteralCheck.Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bf1a3ccd39d38eb385ddeeb509572518b21067a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bf1a3ccd39d38eb385ddeeb509572518b21067a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_fourierInv_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/declarations/integral-fourierinv-mul-eq--24406175068ad49fe38b09a7.md) | 20 | `result-track:24406175068ad49fe38b09a786cda7feced5ae99275e29d52aaf1150cddd59a6` |
| 2 | `theorem` | [continuous_fourierInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/declarations/continuous-fourierinv--13e70ee56346f74476ac54d4.md) | 34 | `result-track:13e70ee56346f74476ac54d4e70e44b38c7d90f772427d43c8aacc4e77c8d7c7` |
| 3 | `theorem` | [fourierInv_toLp_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/declarations/fourierinv-tolp-ae--07a10056cf7c776633c11a70.md) | 41 | `result-track:07a10056cf7c776633c11a70a0a95451e04cc99d2abd5f81315626bfbdef7da0` |
| 4 | `theorem` | [fourierInv_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/declarations/fourierinv-memlp--2f53c98d90ecb390bb3fb279.md) | 72 | `result-track:2f53c98d90ecb390bb3fb279ec5e78d4c56d685a52964f61de00a6d5c1c05cba` |
| 5 | `theorem` | [fourierInv_toLp_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/declarations/fourierinv-tolp-eq--764e9dbe73f3df3fcf2134a4.md) | 77 | `result-track:764e9dbe73f3df3fcf2134a4adadb3ed4c07dce570d92e7329fb421885bbc076` |
| 6 | `theorem` | [norm_fourierInv_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/declarations/norm-fourierinv-tolp--007fb8187d42d81f7c9309ae.md) | 83 | `result-track:007fb8187d42d81f7c9309aec1210534ed9b66744aca4fd4bdfc5b1a523b1757` |
| 7 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/declarations/example--dfeda807145612bc40e38ba6.md) | 95 | `declaration-track:dfeda807145612bc40e38ba65694e879c5c06b64c01da713bcd3b265e0d361fe` |
| 8 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/declarations/example--39edb17d428c5cf7d225ec63.md) | 99 | `declaration-track:39edb17d428c5cf7d225ec6384c2a321905f53c28292dd34b6e6eae4b87c6ede` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/declarations/example--3a1eb8a37a52d8537b69c52c.md) | 102 | `declaration-track:3a1eb8a37a52d8537b69c52c73e59ee7aac6de8149aa7396ed500d513a8c28ba` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/declarations/example--9b5fbdee2862f6ccfb089be3.md) | 106 | `declaration-track:9b5fbdee2862f6ccfb089be34ced6f14de8e9b7a95548beb3fda449ea99e7353` |
| 11 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/declarations/example--2b5e0bbba5177e8bd07f4158.md) | 109 | `declaration-track:2b5e0bbba5177e8bd07f4158c07d8d4b4e1c573423a86a4a095dfe6808bb51b7` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/declarations/example--2bb19b71272e446a4626adf5.md) | 113 | `declaration-track:2bb19b71272e446a4626adf52a9ca8b4327581da9f6f3ed88d6082a6312786f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
