# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LcmChebyshev.Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "720201abbda1a13d36bb2cdd7d12fc84d40e37c0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `720201abbda1a13d36bb2cdd7d12fc84d40e37c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.PrimePowerLogSums` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.FinsetLemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intervalLcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/declarations/intervallcm--7c27c3f95a3994575f6d3758.md) | 26 | `declaration-track:7c27c3f95a3994575f6d3758fa9875ecebff2272a80508201e28541fff0c0ea3` |
| 2 | `theorem` | [dvd_intervalLcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/declarations/dvd-intervallcm--e4483d4ca00638dd65457c0f.md) | 30 | `result-track:e4483d4ca00638dd65457c0fe7856c899175c9df226ff5deced59cafbeed2ccc` |
| 3 | `theorem` | [factorization_intervalLcm_eq_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/declarations/factorization-intervallcm-eq-max--bdf9cfc22f5f603509e16659.md) | 37 | `result-track:bdf9cfc22f5f603509e1665978f88b9a645f4399b498bb080d69a398526d0bf6` |
| 4 | `theorem` | [factorization_intervalLcm_prime_log](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/declarations/factorization-intervallcm-prime-log--f7de75aa4ff08979466c565d.md) | 50 | `result-track:f7de75aa4ff08979466c565d761fd133c12a03a756e4e88930368f01f61dcd42` |
| 5 | `theorem` | [factorization_intervalLcm_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/declarations/factorization-intervallcm-prime--143d0dfebbc64c586dddd165.md) | 79 | `result-track:143d0dfebbc64c586dddd165aefadd8cf6e1f545e68ea39efacb3f6311565e2c` |
| 6 | `theorem` | [log_intervalLcm_eq_chebyshevPsi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/declarations/log-intervallcm-eq-chebyshevpsi--3610e6c8617b293d2e8c74de.md) | 99 | `result-track:3610e6c8617b293d2e8c74dee690f945643cc19496b6122c35cff043d0dba26f` |
| 7 | `theorem` | [chebyshevPsi_le_log_intervalLcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/declarations/chebyshevpsi-le-log-intervallcm--669f60430dc93b15e65b2643.md) | 136 | `result-track:669f60430dc93b15e65b26433e28932c0a60275f6bdd228b6e622700bdd8f0d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
