# Verification target: GRWTSK.NumberTheory.SourceActualEulerPotentialZetaPhaseNative01.Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "851c59579ee8a534d74f5d6dfaf30c5e87ae6dbf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `851c59579ee8a534d74f5d6dfaf30c5e87ae6dbf`.

Source path: `GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEulerPotentialPhase` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EulerProduct.DirichletLSeries` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeff](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/declarations/coeff--c9e252ecfaeba784c9a119ad.md) | 24 | `declaration-track:c9e252ecfaeba784c9a119ad7155684e3923acae7642262a916a3c38288dc85a` |
| 2 | `theorem` | [coeff_norm_le](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/declarations/coeff-norm-le--0ca9a93b633b522e83f2ba69.md) | 27 | `result-track:0ca9a93b633b522e83f2ba69e680f36d9855d41ce2005b3556a9a8c9fbba37ea` |
| 3 | `def` | [actualFullPrimeLogPotential](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/declarations/actualfullprimelogpotential--f772625d0a8845ca24a42a75.md) | 39 | `declaration-track:f772625d0a8845ca24a42a7570e2d3065e2371aa08667548489ecd21e956c4c6` |
| 4 | `theorem` | [actualFullPrimeLogPotential_summable](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/declarations/actualfullprimelogpotential-summable--9629b47ff2211e72bf36285f.md) | 42 | `result-track:9629b47ff2211e72bf36285f8a365b1d3953652284ced9081829e1155897451d` |
| 5 | `theorem` | [actualFullPrimeLogPotential_exp_eq_zeta](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/declarations/actualfullprimelogpotential-exp-eq-zeta--253458c892251cff37325900.md) | 47 | `result-track:253458c892251cff37325900bc7ff0cb1aa463a92c0e8f0f7b3cf9b765ea6752` |
| 6 | `theorem` | [term_eq_exp](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/declarations/term-eq-exp--b37039be2cdd70318c331e10.md) | 57 | `result-track:b37039be2cdd70318c331e10761cd222e6721b5d0c09f09ac272525dadeabc26` |
| 7 | `theorem` | [actualClosedPrimeLogPotential_tendsto_full](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/declarations/actualclosedprimelogpotential-tendsto-full--afc52fe0f6b41192d01463b4.md) | 71 | `result-track:afc52fe0f6b41192d01463b4dd3c7caea0eb3465e942903a26c808e52c628596` |
| 8 | `theorem` | [actualFullPrimeLogPotential_re_negative](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/declarations/actualfullprimelogpotential-re-negative--aa8538fb8bace2e685278aef.md) | 85 | `result-track:aa8538fb8bace2e685278aeff744e7da56482d1a4de6e0c3e5554416d2fa9767` |
| 9 | `theorem` | [actualZeta_norm_at_prime_two_phase_le](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/declarations/actualzeta-norm-at-prime-two-phase-le--294c429c5282157f648f597e.md) | 95 | `result-track:294c429c5282157f648f597e696656291ced5fc1febfde5550fd3619a2c91698` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
