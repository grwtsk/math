# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightUnboundedPrimeJump

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7bc717e32b7cdfaff56d5258e6c98093ed9f9ea",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7bc717e32b7cdfaff56d5258e6c98093ed9f9ea`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightPsiCapacityNoGo`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Bertrand` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [chebyshevPsi_nat_prime_jump](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/declarations/chebyshevpsi-nat-prime-jump--fb463971063d52364c586658.md) | 43 | `result-track:fb463971063d52364c586658e4ebe0ef7a534b91c4061a3dbd1f215d1e0d2eee` |
| 2 | `theorem` | [psiError_nat_prime_jump](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/declarations/psierror-nat-prime-jump--58a563eadc5120fd125717d7.md) | 69 | `result-track:58a563eadc5120fd125717d7c048d92cc02a665c5475c7745e046f8f5c4a9c1f` |
| 3 | `theorem` | [two_mul_dyadicScale_eq_pow](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/declarations/two-mul-dyadicscale-eq-pow--8c17bdb78badb218f1cb6796.md) | 96 | `result-track:8c17bdb78badb218f1cb67968316a0ccb468a8ba988d795fe74cc22572b1f974` |
| 4 | `theorem` | [log_two_mul_dyadicScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/declarations/log-two-mul-dyadicscale--90d83bc5dfbd81626eceb814.md) | 109 | `result-track:90d83bc5dfbd81626eceb8147cf0781731899ae5d1d21a13e4580ae958571253` |
| 5 | `theorem` | [exists_dyadic_bertrandPrime_log_gt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/declarations/exists-dyadic-bertrandprime-log-gt--65ae7655091aa8ba4d42cdcb.md) | 127 | `result-track:65ae7655091aa8ba4d42cdcb8ab9a4cb91cc7dd69f20d1172d445c7ac1e76dfe` |
| 6 | `theorem` | [unboundedAdjacentPsiJump_of_bertrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/declarations/unboundedadjacentpsijump-of-bertrand--08c746a79783953dc63d278f.md) | 171 | `result-track:08c746a79783953dc63d278fa639f0e6c3630fd9339f8035b873d5556bb877bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
