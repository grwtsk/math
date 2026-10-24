# Verification target: GRWTSK.NumberTheory.SourceActualEulerPotentialZetaPhaseNative03.Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f97c0db67477206f236b65fec11bbf63761e31b8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f97c0db67477206f236b65fec11bbf63761e31b8`.

Source path: `GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean.json)

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
| 1 | `def` | [coeff](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/declarations/coeff--406a6923094ebebf8563b946.md) | 25 | `declaration-track:406a6923094ebebf8563b946c5221fbfa312ac599acace9e47c76ada9e6c5ac1` |
| 2 | `theorem` | [coeff_norm_le](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/declarations/coeff-norm-le--45ba3426d0ef7ecfa86d65db.md) | 28 | `result-track:45ba3426d0ef7ecfa86d65db1d10d71014c4aa78765367f81bd5c7fc86f9e72f` |
| 3 | `def` | [actualFullPrimeLogPotential](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/declarations/actualfullprimelogpotential--0214451d188963b1ac3436d3.md) | 40 | `declaration-track:0214451d188963b1ac3436d37da35dd44c8817565bd9e1390596255ad327d6da` |
| 4 | `theorem` | [actualFullPrimeLogPotential_summable](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/declarations/actualfullprimelogpotential-summable--26030ed6fc9dbdf885c2e958.md) | 43 | `result-track:26030ed6fc9dbdf885c2e958e7db68fa7d40657a1472cc63125c37f7c44736d1` |
| 5 | `theorem` | [actualFullPrimeLogPotential_exp_eq_zeta](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/declarations/actualfullprimelogpotential-exp-eq-zeta--1d7a5e2e28a1860507902216.md) | 49 | `result-track:1d7a5e2e28a1860507902216470cef998acca8805049d7de9bc1172bc3aa9178` |
| 6 | `theorem` | [term_eq_exp](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/declarations/term-eq-exp--3f82759d690cca0788489992.md) | 54 | `result-track:3f82759d690cca078848999256db9df5f0e78d6db8abc02fbf674b2aec1c27a0` |
| 7 | `theorem` | [actualClosedPrimeLogPotential_tendsto_full](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/declarations/actualclosedprimelogpotential-tendsto-full--2e936a9415d5cdecfbdeffbb.md) | 68 | `result-track:2e936a9415d5cdecfbdeffbba6de3b6b01ea90cb7e6b77299988bd31998ad2ce` |
| 8 | `theorem` | [actualFullPrimeLogPotential_re_negative](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/declarations/actualfullprimelogpotential-re-negative--0526bed4e5bc82c4cee6f7ac.md) | 82 | `result-track:0526bed4e5bc82c4cee6f7acad3248db479cf6e02e84fe6023f0a63708c3eda2` |
| 9 | `theorem` | [actualZeta_norm_at_prime_two_phase_le](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/declarations/actualzeta-norm-at-prime-two-phase-le--962a787f8ae15adccd5c827c.md) | 95 | `result-track:962a787f8ae15adccd5c827c95196e95cbf0974ba974fb57ae7a238761f5efb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
