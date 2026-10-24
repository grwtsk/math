# Verification target: GRWTSK.NumberTheory.SourceActualEulerPotentialZetaPhaseNative02.Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c157f2a559a3c7668863a73dc0c8c6b9b27583ea",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c157f2a559a3c7668863a73dc0c8c6b9b27583ea`.

Source path: `GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean.json)

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
| 1 | `def` | [coeff](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean/declarations/coeff--58fbeee42f2fd5e24137c8ec.md) | 17 | `declaration-track:58fbeee42f2fd5e24137c8ec1ec835ff7a184ac1440e947630f10c02b71173f7` |
| 2 | `theorem` | [coeff_norm_le](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean/declarations/coeff-norm-le--36c26d4e0e991ff9e082e725.md) | 20 | `result-track:36c26d4e0e991ff9e082e725cc4b816c242adc1361ebd11671528eb66a7612a9` |
| 3 | `def` | [actualFullPrimeLogPotential](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean/declarations/actualfullprimelogpotential--ac0d8ac61841981ec32ca7c5.md) | 32 | `declaration-track:ac0d8ac61841981ec32ca7c527a34c1af821adc32d22304076dccd671b000bda` |
| 4 | `theorem` | [actualFullPrimeLogPotential_summable](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean/declarations/actualfullprimelogpotential-summable--de0e87cec6a7454e7445cab1.md) | 35 | `result-track:de0e87cec6a7454e7445cab1d357f888c571cbf9d5e8ff759b088c86b7e46c48` |
| 5 | `theorem` | [actualFullPrimeLogPotential_exp_eq_zeta](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean/declarations/actualfullprimelogpotential-exp-eq-zeta--0fe54912371fe62c2e2089a8.md) | 41 | `result-track:0fe54912371fe62c2e2089a838fe7ad109c41863d5892785ddaa4cf77546560a` |
| 6 | `theorem` | [term_eq_exp](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean/declarations/term-eq-exp--bc61a562ed6bfdfcdcdcd907.md) | 51 | `result-track:bc61a562ed6bfdfcdcdcd907954e2298f10102ae3885a8f084f69b14aa66e7ac` |
| 7 | `theorem` | [actualClosedPrimeLogPotential_tendsto_full](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean/declarations/actualclosedprimelogpotential-tendsto-full--8e55af3c5d93a16acc87363a.md) | 65 | `result-track:8e55af3c5d93a16acc87363a3385d3447523ff5eeba7b325bd07bf3de48c2cbe` |
| 8 | `theorem` | [actualFullPrimeLogPotential_re_negative](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean/declarations/actualfullprimelogpotential-re-negative--03c7bca0459a17472aa908f5.md) | 79 | `result-track:03c7bca0459a17472aa908f528e044d1d27e59c9d41ddb45eadd84765ebfd5b4` |
| 9 | `theorem` | [actualZeta_norm_at_prime_two_phase_le](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variant39e42ca2f7cb111aa4afd1462933b92fcf48e3a63a5aaaf9db765b5bd7306315.lean/declarations/actualzeta-norm-at-prime-two-phase-le--07d4f2d2c07644bd4ae27e19.md) | 92 | `result-track:07d4f2d2c07644bd4ae27e191c38571c23cbb117a4ea88ee345f57545faaa9a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
