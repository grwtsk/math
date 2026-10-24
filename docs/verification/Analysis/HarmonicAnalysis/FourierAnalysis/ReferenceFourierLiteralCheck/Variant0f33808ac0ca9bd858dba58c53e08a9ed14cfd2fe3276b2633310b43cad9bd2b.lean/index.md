# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReferenceFourierLiteralCheck.Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19d220e1dc7b8d28bc9feb66b1c1caf7a6cf005a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19d220e1dc7b8d28bc9feb66b1c1caf7a6cf005a`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reference_zeroExtension_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean/declarations/reference-zeroextension-ae--3251a98882d78dbca4704cf2.md) | 14 | `result-track:3251a98882d78dbca4704cf27248018bd03bbd988d546d25072b2d127f0f2801` |
| 2 | `theorem` | [reference_zeroExtension_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean/declarations/reference-zeroextension-integrable--363117f52a5961fdd14cae64.md) | 27 | `result-track:363117f52a5961fdd14cae64d46c1943fb365d824b4a573bf6b21930047171ff` |
| 3 | `theorem` | [reference_zeroExtension_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean/declarations/reference-zeroextension-fourier--1724467a2128fc3d2ad16faf.md) | 35 | `result-track:1724467a2128fc3d2ad16faf6ab62dc5c1e87af09f76e5728d32349ff822e5a5` |
| 4 | `theorem` | [reference_zeroExtension_fourier_norm_sq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean/declarations/reference-zeroextension-fourier-norm-sq--13c347bd0f82c6f9c1828733.md) | 60 | `result-track:13c347bd0f82c6f9c1828733e023617def4cf1d1e8ce01887885063057c95ca1` |
| 5 | `theorem` | [reference_zeroExtension_fourier_square_integral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean/declarations/reference-zeroextension-fourier-square-integral--7054de9e9adbcf42a29a5653.md) | 67 | `result-track:7054de9e9adbcf42a29a56533d2a8da8a363ff7b2fc734a5559b0bdebe6db825` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean/declarations/example--59daf33969822f207edcb72f.md) | 87 | `declaration-track:59daf33969822f207edcb72fe9f2fd1df815345540604ed55563b3ab93d9d52a` |
| 7 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean/declarations/example--998674d90cb43613af7489b6.md) | 91 | `declaration-track:998674d90cb43613af7489b6c5765bed1d1738d754ca73aea08d4a8e818f9e82` |
| 8 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean/declarations/example--a137c601620936a0f8f12cf7.md) | 94 | `declaration-track:a137c601620936a0f8f12cf726b146998954006a9e5b756b2367ee61ba9245a7` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean/declarations/example--e270ab5e55ac188426cebe29.md) | 97 | `declaration-track:e270ab5e55ac188426cebe2997db2beedabe4c7cb4657c9a5c138255cc5bb35d` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Variant0f33808ac0ca9bd858dba58c53e08a9ed14cfd2fe3276b2633310b43cad9bd2b.lean/declarations/example--eca83d175e49b4bf993be09f.md) | 100 | `declaration-track:eca83d175e49b4bf993be09ffdd6cc861a6447f314f9ba5c38b9a0a5e6efbdc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
