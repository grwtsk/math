# Verification target: GRWTSK.Analysis.FunctionalAnalysis.FiniteHilbertConvergence.Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4918448070b41d0c2a09dd59c23ba2ba43705fcb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4918448070b41d0c2a09dd59c23ba2ba43705fcb`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.SpectralMeasure` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Spectral.HilbertTrace` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Spectral.BoundaryConditionKind](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/declarations/spectral-boundaryconditionkind--cc0e50402dd3e758ea80b958.md) | 73 | `declaration-track:cc0e50402dd3e758ea80b9585e635bdddd7486caa60eebeabf5c1281709f2b9d` |
| 2 | `inductive` | [Spectral.SpectralConvergenceMode](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/declarations/spectral-spectralconvergencemode--42bd7b20786748d99d721943.md) | 89 | `declaration-track:42bd7b20786748d99d721943d37f57cd69300e54bf1482bc6d9f2e3c3df77ba8` |
| 3 | `structure` | [Spectral.FiniteGraphLaplacianConvergenceCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/declarations/spectral-finitegraphlaplacianconvergencecertificate--8385b08f7771870d66f0bc63.md) | 123 | `declaration-track:8385b08f7771870d66f0bc63b7f07dfc12b1fa1060c5a85dddc5bb0252c490e6` |
| 4 | `def` | [Spectral.FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/declarations/spectral-finitegraphlaplacianconvergencecertificate-certifiedforhilberte--64e741b7a1d2c6ce2148a6fd.md) | 155 | `declaration-track:64e741b7a1d2c6ce2148a6fd507b2ffdaa5e7abfef47edc815f16828c87acdd5` |
| 5 | `theorem` | [Spectral.FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/declarations/spectral-finitegraphlaplacianconvergencecertificate-certifiedforhilberte--77af55ca248cf9724a6f2a59.md) | 171 | `result-track:77af55ca248cf9724a6f2a599592cf0b35f53636b934f4f14a47534d7d1cd16f` |
| 6 | `theorem` | [Spectral.FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/declarations/spectral-finitegraphlaplacianconvergencecertificate-certifiedforhilberte--3d3868b2d7402c2b3fad51fc.md) | 189 | `result-track:3d3868b2d7402c2b3fad51fcff33dabc430c68c1c6f54330eb7ce951aac001d8` |
| 7 | `theorem` | [Spectral.FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence_spectralMeasure](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/declarations/spectral-finitegraphlaplacianconvergencecertificate-certifiedforhilberte--a0facc010c273e60f3984e9b.md) | 197 | `result-track:a0facc010c273e60f3984e9b236b007e155d4214fae9fe5264e44d7c417ff49d` |
| 8 | `structure` | [Spectral.HilbertTraceEvidenceInput](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/declarations/spectral-hilberttraceevidenceinput--5e07201e945ce94316ec311f.md) | 219 | `declaration-track:5e07201e945ce94316ec311f5391391a296a415e81c0116c4c413b29c7a6c4f6` |
| 9 | `theorem` | [Spectral.HilbertTraceEvidenceInput.implies_bridge_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/declarations/spectral-hilberttraceevidenceinput-implies-bridge-ready--8f63a0515e73e17fc232a092.md) | 230 | `result-track:8f63a0515e73e17fc232a092c40bd9aff6f93235e081d5c5ccf93c4212319bcc` |
| 10 | `theorem` | [Spectral.HilbertTraceEvidenceInput.implies_bridge_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/declarations/spectral-hilberttraceevidenceinput-implies-bridge-theoremready--c9839affb605bdc5046b3e46.md) | 236 | `result-track:c9839affb605bdc5046b3e46ef1955cbb259b5ea5982afc9aa4a6cdd767564da` |
| 11 | `theorem` | [Spectral.HilbertTraceEvidenceInput.finiteConvergence_present](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/declarations/spectral-hilberttraceevidenceinput-finiteconvergence-present--30b178cc305b0ae6eb9a148e.md) | 243 | `result-track:30b178cc305b0ae6eb9a148ea21cd8817c210db8ae9950de56cbf72ee7d44c47` |
| 12 | `theorem` | [Spectral.standardHilbertTraceBridge_no_evidenceInput](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant6e67225842ad80cbcdcf74fea51ec57e9acca75d44440eedf167578021f80b97.lean/declarations/spectral-standardhilberttracebridge-no-evidenceinput--bb215ba251d20c49b5b045db.md) | 255 | `result-track:bb215ba251d20c49b5b045db310f2877f1b73c14b32ff5cdc7e795c0d1764b4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
