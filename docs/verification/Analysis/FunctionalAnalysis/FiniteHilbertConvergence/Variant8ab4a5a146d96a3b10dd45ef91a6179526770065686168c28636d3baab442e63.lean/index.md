# Verification target: GRWTSK.Analysis.FunctionalAnalysis.FiniteHilbertConvergence.Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93dbb4dac3eb587e2bbdbc199f68e0115fdb90ef",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93dbb4dac3eb587e2bbdbc199f68e0115fdb90ef`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.SpectralMeasure` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Spectral.HilbertTrace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Spectral.BoundaryConditionKind](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/declarations/spectral-boundaryconditionkind--1a2d47d5aebed013734a8fcf.md) | 81 | `declaration-track:1a2d47d5aebed013734a8fcf1349927b42c0e24fb1e2cf8578b766af3484c4d8` |
| 2 | `inductive` | [Spectral.SpectralConvergenceMode](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/declarations/spectral-spectralconvergencemode--311cf730719d95a16ad649a3.md) | 97 | `declaration-track:311cf730719d95a16ad649a3138c84ddd67694b1ecb4248cbd17519209f1915e` |
| 3 | `structure` | [Spectral.FiniteGraphLaplacianConvergenceCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/declarations/spectral-finitegraphlaplacianconvergencecertificate--864181d154f00f6f9cd805ff.md) | 131 | `declaration-track:864181d154f00f6f9cd805ff0482a2f5754590c7dfcfa4285f5992361221b125` |
| 4 | `def` | [Spectral.FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/declarations/spectral-finitegraphlaplacianconvergencecertificate-certifiedforhilberte--5c097f854a927e894a38a000.md) | 163 | `declaration-track:5c097f854a927e894a38a0009516edc6eb9751a30d3f6f37405a560d589a2d68` |
| 5 | `theorem` | [Spectral.FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/declarations/spectral-finitegraphlaplacianconvergencecertificate-certifiedforhilberte--3f012b0da2e43e7ced9c790f.md) | 179 | `result-track:3f012b0da2e43e7ced9c790f79fede2319d19f0717b4f5feb0bd5b6d0758792f` |
| 6 | `theorem` | [Spectral.FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/declarations/spectral-finitegraphlaplacianconvergencecertificate-certifiedforhilberte--8bcfc2dd210c50ab201a067f.md) | 197 | `result-track:8bcfc2dd210c50ab201a067fd8b58af9704b8ce0fb8ae6443387817b349d7fc6` |
| 7 | `theorem` | [Spectral.FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence_spectralMeasure](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/declarations/spectral-finitegraphlaplacianconvergencecertificate-certifiedforhilberte--581f7fc338373aa9d68fc4cb.md) | 205 | `result-track:581f7fc338373aa9d68fc4cbb3d06523067c352014ef7696820fc7e55aa7ac04` |
| 8 | `structure` | [Spectral.HilbertTraceEvidenceInput](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/declarations/spectral-hilberttraceevidenceinput--ac509aceb81fd1e1326f74ad.md) | 227 | `declaration-track:ac509aceb81fd1e1326f74ad58373f91f1bd3e80b4c784545aab412ab2d797e5` |
| 9 | `theorem` | [Spectral.HilbertTraceEvidenceInput.implies_bridge_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/declarations/spectral-hilberttraceevidenceinput-implies-bridge-ready--e21d98bbddf194617c88b964.md) | 238 | `result-track:e21d98bbddf194617c88b96405e8c4b35dd5422151699e3d176daea7795f607a` |
| 10 | `theorem` | [Spectral.HilbertTraceEvidenceInput.implies_bridge_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/declarations/spectral-hilberttraceevidenceinput-implies-bridge-theoremready--1b9f5c7713e6cbbbea6ca09f.md) | 244 | `result-track:1b9f5c7713e6cbbbea6ca09f57881764807c71082f0c24eaba462e44127340f9` |
| 11 | `theorem` | [Spectral.HilbertTraceEvidenceInput.finiteConvergence_present](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/declarations/spectral-hilberttraceevidenceinput-finiteconvergence-present--a9812400f1e0867a8dda3b76.md) | 251 | `result-track:a9812400f1e0867a8dda3b76177551578b3ecab766f2dc08d5d9343c019fb98c` |
| 12 | `theorem` | [Spectral.standardHilbertTraceBridge_no_evidenceInput](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/declarations/spectral-standardhilberttracebridge-no-evidenceinput--3b4c68b677c109b21db98185.md) | 263 | `result-track:3b4c68b677c109b21db981852cdd4852c31cffef87f03e70be0f5407db8d459a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
