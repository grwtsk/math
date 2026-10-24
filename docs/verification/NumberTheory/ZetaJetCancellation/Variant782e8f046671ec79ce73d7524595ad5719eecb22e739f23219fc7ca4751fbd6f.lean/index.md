# Verification target: GRWTSK.NumberTheory.ZetaJetCancellation.Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d28706a8333c105022da9c21e22cfeb25a373b1a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d28706a8333c105022da9c21e22cfeb25a373b1a`.

Source path: `GRWTSK/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_zeta_pole_cancellation](../../../../mathematics/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean/declarations/actual-zeta-pole-cancellation--5e00f40644f249d30f92114b.md) | 26 | `result-track:5e00f40644f249d30f92114bda21d12206d25d7e9b897af0e684fa39d36cc4e1` |
| 2 | `theorem` | [low_child_limit](../../../../mathematics/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean/declarations/low-child-limit--d7dc35a084a16eb142c6f730.md) | 37 | `result-track:d7dc35a084a16eb142c6f73042a5449a669d2902a118bb180aae99dc64e5e87f` |
| 3 | `theorem` | [high_child_limit](../../../../mathematics/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean/declarations/high-child-limit--7ffd40a31a30441f1d15f88a.md) | 45 | `result-track:7ffd40a31a30441f1d15f88a00080073e2cc7e2415797cd3309854bf18bcbf8a` |
| 4 | `theorem` | [unit_jet_high_child_vanishes](../../../../mathematics/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean/declarations/unit-jet-high-child-vanishes--0b128aae7e6807d6ebc0778c.md) | 53 | `result-track:0b128aae7e6807d6ebc0778c0ad101e4e915471e1809027a99d1f927ea53d6bf` |
| 5 | `theorem` | [unit_jet_low_child_preserves_source](../../../../mathematics/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean/declarations/unit-jet-low-child-preserves-source--ba1b77bb13ce88d3dd3e2893.md) | 59 | `result-track:ba1b77bb13ce88d3dd3e2893471228d978501a514242332f806db20e4d831291` |
| 6 | `theorem` | [actual_children_conserve_source](../../../../mathematics/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean/declarations/actual-children-conserve-source--bb2cc8ae87a05c8fb366ea75.md) | 65 | `result-track:bb2cc8ae87a05c8fb366ea75759a3603ab9bdcc832ab61392cba52f6f3744a14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
