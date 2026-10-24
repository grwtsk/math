# Verification target: GRWTSK.Algebra.PID.Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fff911466722f4890a4079e480f5388df6735adb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/index.md) · [Full source](../../../../mathematics/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fff911466722f4890a4079e480f5388df6735adb`.

Source path: `GRWTSK/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Dvr` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ideal.eq_span_singleton_of_mem_of_notMem_sq_of_notMem_prime_ne](../../../../mathematics/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/declarations/ideal-eq-span-singleton-of-mem-of-notmem-sq-of-notmem-prime-ne--521ba95a439a9d62af0554c9.md) | 44 | `result-track:521ba95a439a9d62af0554c9cd991cf43a92f7a1a2ecbe63aae050a30d11d707` |
| 2 | `theorem` | [FractionalIdeal.isPrincipal_of_unit_of_comap_mul_span_singleton_eq_top](../../../../mathematics/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/declarations/fractionalideal-isprincipal-of-unit-of-comap-mul-span-singleton-eq-top--820d87232c8551d863094763.md) | 86 | `result-track:820d87232c8551d8630947630feb3836184cde471d9deaf3606b2a8b63fbaa91` |
| 3 | `theorem` | [FractionalIdeal.isPrincipal.of_finite_maximals_of_inv](../../../../mathematics/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/declarations/fractionalideal-isprincipal-of-finite-maximals-of-inv--45852eb7c20ee7d2715faf8f.md) | 116 | `result-track:45852eb7c20ee7d2715faf8fdc2be428bebc815b1c1431b3e4849a3188b3c3b9` |
| 4 | `theorem` | [Ideal.IsPrincipal.of_finite_maximals_of_isUnit](../../../../mathematics/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/declarations/ideal-isprincipal-of-finite-maximals-of-isunit--525e55e5ceac86b14bfa9ebc.md) | 180 | `result-track:525e55e5ceac86b14bfa9ebce6755a7753f89433759f8665caaedc326345be3d` |
| 5 | `theorem` | [IsPrincipalIdealRing.of_finite_primes](../../../../mathematics/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/declarations/isprincipalidealring-of-finite-primes--88ed802bca7343c03c5d6d7c.md) | 187 | `result-track:88ed802bca7343c03c5d6d7c0b893ac7cfd40351a3ed850273abca07e7b91018` |
| 6 | `theorem` | [IsLocalization.OverPrime.mem_normalizedFactors_of_isPrime](../../../../mathematics/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/declarations/islocalization-overprime-mem-normalizedfactors-of-isprime--6c4a619f0640339aa628612b.md) | 211 | `result-track:6c4a619f0640339aa628612b194bafa90e99701d8b6bfa55f23063a93563e742` |
| 7 | `theorem` | [IsDedekindDomain.isPrincipalIdealRing_localization_over_prime](../../../../mathematics/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/declarations/isdedekinddomain-isprincipalidealring-localization-over-prime--e0e19eaa4b5b25bd4a61f61d.md) | 251 | `result-track:e0e19eaa4b5b25bd4a61f61d0b8c68680d799abc6f827241a7c1a39e12746d6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
