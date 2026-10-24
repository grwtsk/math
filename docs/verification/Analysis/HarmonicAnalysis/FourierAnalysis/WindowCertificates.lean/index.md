# Verification target: GRWTSK.Analysis.Fourier.WindowCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "762d0793ddfffb32563a3e98b35cad42ae49758e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/WindowCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WindowCertificates.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WindowCertificates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `762d0793ddfffb32563a3e98b35cad42ae49758e`.

Source path: `GRWTSK/Analysis/Fourier/WindowCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/WindowCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularTransform](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WindowCertificates.lean/declarations/angulartransform--6962b884c045ef950b01fd19.md) | 15 | `declaration-track:6962b884c045ef950b01fd1917c133427af066f65792278ce51a0ba818eddd6e` |
| 2 | `structure` | [AngularWindowCertificate](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WindowCertificates.lean/declarations/angularwindowcertificate--d70781dc79ba77407d2d431b.md) | 19 | `declaration-track:d70781dc79ba77407d2d431b78ee57b2f6a7e349641239e441ab19f0e25a5251` |
| 3 | `structure` | [ReconstructionCertificate](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WindowCertificates.lean/declarations/reconstructioncertificate--f1b6bfb1bdb94835da26673a.md) | 30 | `declaration-track:f1b6bfb1bdb94835da26673a7f83b3b50655497e35d5f319130d9d3f2fd3d918` |
| 4 | `def` | [orderedCrossSpectrum](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WindowCertificates.lean/declarations/orderedcrossspectrum--c270bc19f0f5e65789b3411b.md) | 35 | `declaration-track:c270bc19f0f5e65789b3411b937e2c06735717fa3e975de7ca5188cae0f81c13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
