# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LcmChebyshev.Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7aacad85448f25c9d24ab84f1beda862ca5fd2d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7aacad85448f25c9d24ab84f1beda862ca5fd2d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.PrimePowerLogSums` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.FinsetLemmas` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intervalLcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean/declarations/intervallcm--25f0991c8fefc39854be67fe.md) | 18 | `declaration-track:25f0991c8fefc39854be67fe21ddf2d1e0497bb5c7ec2fdd89ebb884c5931a69` |
| 2 | `theorem` | [dvd_intervalLcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean/declarations/dvd-intervallcm--6682fed094d59adef2f29d81.md) | 22 | `result-track:6682fed094d59adef2f29d81a8c0fecf80bd88cba79214b54d6073b846b02777` |
| 3 | `theorem` | [factorization_intervalLcm_eq_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean/declarations/factorization-intervallcm-eq-max--0ee4de35d84242cba38d82fd.md) | 29 | `result-track:0ee4de35d84242cba38d82fd228ac3c9651fa38744d509d0d44813e9e72ed3c5` |
| 4 | `theorem` | [factorization_intervalLcm_prime_log](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean/declarations/factorization-intervallcm-prime-log--dd1ef573a6a305112055795f.md) | 42 | `result-track:dd1ef573a6a305112055795f773672ee75b45f656c23ce62029a03437234e746` |
| 5 | `theorem` | [factorization_intervalLcm_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean/declarations/factorization-intervallcm-prime--1efd3522f45f5c106f367b17.md) | 71 | `result-track:1efd3522f45f5c106f367b174f5fc58f141047ed05773fc43a81f2c502a9d478` |
| 6 | `theorem` | [log_intervalLcm_eq_chebyshevPsi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean/declarations/log-intervallcm-eq-chebyshevpsi--198f35731e273c2c8441b5b6.md) | 91 | `result-track:198f35731e273c2c8441b5b608032fb5f7ebfdbbb39c1af32d1506eb8dbea79f` |
| 7 | `theorem` | [chebyshevPsi_le_log_intervalLcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean/declarations/chebyshevpsi-le-log-intervallcm--0ff4e71e14cc0fbe1a63ec69.md) | 128 | `result-track:0ff4e71e14cc0fbe1a63ec69e9e3701e3ffee70d37556f7cbc357816bc032aff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
