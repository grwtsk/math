# Verification target: GRWTSK.Analysis.ErrorBounds.SchurJetScrewReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a001a80bc07ecdb853b9210affcbc784ac154048",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a001a80bc07ecdb853b9210affcbc784ac154048`.

Source path: `GRWTSK/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction`](../../../../mathematics/Analysis/ErrorBounds/ScrewSpectralReconstruction.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Budget](../../../../mathematics/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean/declarations/budget--0e09353f90a43b69b2c99946.md) | 19 | `declaration-track:0e09353f90a43b69b2c99946c39b5a02e64ea6824b11febcb74a851b4b5fbdf0` |
| 2 | `def` | [Budget.total](../../../../mathematics/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean/declarations/budget-total--5a73da785e401386abb7b840.md) | 27 | `declaration-track:5a73da785e401386abb7b8405acbae51fb2eeca8667ad6d8b16ee316ec0d1eeb` |
| 3 | `def` | [Budget.toScrewSpectral](../../../../mathematics/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean/declarations/budget-toscrewspectral--67626fe4320b0ec25b13210b.md) | 31 | `declaration-track:67626fe4320b0ec25b13210b275f427c373fc89043fa25016ed8d5e709f6e149` |
| 4 | `theorem` | [Budget.toScrewSpectral_total](../../../../mathematics/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean/declarations/budget-toscrewspectral-total--facf5fa53b554692139f22c1.md) | 40 | `result-track:facf5fa53b554692139f22c1f3b05fb1107a9edbc00577446d6596ae7edff754` |
| 5 | `theorem` | [reconstruction_error_bound](../../../../mathematics/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean/declarations/reconstruction-error-bound--251496431f0c01df02222b20.md) | 46 | `result-track:251496431f0c01df02222b20cbaec33ae2a93f58c767236d94b8a2b6fb95c275` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
