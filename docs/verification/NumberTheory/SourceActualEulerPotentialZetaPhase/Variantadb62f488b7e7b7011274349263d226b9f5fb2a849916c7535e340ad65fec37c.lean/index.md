# Verification target: GRWTSK.NumberTheory.SourceActualEulerPotentialZetaPhase.Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ae361507bc73af76f011404c0f398be55489db4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ae361507bc73af76f011404c0f398be55489db4`.

Source path: `GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEulerPotentialPhase` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EulerProduct.DirichletLSeries` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeff](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/declarations/coeff--e90147edd4b72b9a7841d46c.md) | 17 | `declaration-track:e90147edd4b72b9a7841d46c0170b13942f98f926491972dca927c78900ef089` |
| 2 | `theorem` | [coeff_norm_le](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/declarations/coeff-norm-le--75bf2af9e3fcaaec99818806.md) | 20 | `result-track:75bf2af9e3fcaaec998188066580ecb20555b3c16cad97f5bf7da14128cc571c` |
| 3 | `def` | [actualFullPrimeLogPotential](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/declarations/actualfullprimelogpotential--5eb74b7d12d0b0c9cd031e46.md) | 32 | `declaration-track:5eb74b7d12d0b0c9cd031e46de0b3cca14eed4cc1e42992fe1fdcaf48ceca08e` |
| 4 | `theorem` | [actualFullPrimeLogPotential_summable](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/declarations/actualfullprimelogpotential-summable--101945466c8eabdd224d317c.md) | 35 | `result-track:101945466c8eabdd224d317cbb8b9d7bc4881c377a9dee2da72736d97cbb18ed` |
| 5 | `theorem` | [actualFullPrimeLogPotential_exp_eq_zeta](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/declarations/actualfullprimelogpotential-exp-eq-zeta--e5c18c59b9209ebf205913db.md) | 41 | `result-track:e5c18c59b9209ebf205913db79dd55c763b24e17c54c50ddac7d828bf2b3ae25` |
| 6 | `theorem` | [term_eq_exp](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/declarations/term-eq-exp--4b6d9a73eab09c6c4af45768.md) | 51 | `result-track:4b6d9a73eab09c6c4af45768a891054cc4a5446b137108d2fa0b9f1fbadb0061` |
| 7 | `theorem` | [actualClosedPrimeLogPotential_tendsto_full](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/declarations/actualclosedprimelogpotential-tendsto-full--dec9ed1af4d4291cc366f03e.md) | 65 | `result-track:dec9ed1af4d4291cc366f03e0529415fcf75e7cd132bffa1b29b52baf4ff775d` |
| 8 | `theorem` | [actualFullPrimeLogPotential_re_negative](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/declarations/actualfullprimelogpotential-re-negative--8708b7d74cc8b7ef350dc50a.md) | 79 | `result-track:8708b7d74cc8b7ef350dc50a327e3e959ee1c72b4d23936513670adedfcf1c2d` |
| 9 | `theorem` | [actualZeta_norm_at_prime_two_phase_le](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/declarations/actualzeta-norm-at-prime-two-phase-le--debfa0be17691f7acfc04044.md) | 92 | `result-track:debfa0be17691f7acfc04044668865ba90a43b866b11f0f0a9767e2a9377cd45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
