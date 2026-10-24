# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogCoordinateAttempt01.Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27136e64cdfd79db6ad26b30882e0b16b780552f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27136e64cdfd79db6ad26b30882e0b16b780552f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LogL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/declarations/logl2--d8a3e22791412e0de4f7cbfa.md) | 14 | `declaration-track:d8a3e22791412e0de4f7cbfa32debd0ffc78ae887022ddf3c1c1bdb0add1f490` |
| 2 | `theorem` | [integral_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/declarations/integral-exp-jacobian--5bcd8043ae52d943d1312c69.md) | 16 | `result-track:5bcd8043ae52d943d1312c696f04736769b29cdbb148aa3379ea3006547e56a4` |
| 3 | `theorem` | [integrable_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/declarations/integrable-exp-jacobian--a16c96a2dade8d80ba2f9458.md) | 25 | `result-track:a16c96a2dade8d80ba2f94588c967fe71c5e5411b708889748fc9910ffe12d86` |
| 4 | `theorem` | [exp_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/declarations/exp-quasi--df388e8842231362cee52d87.md) | 34 | `result-track:df388e8842231362cee52d87d69552f2da19b1839dcd9ac635e6527da16a3ed0` |
| 5 | `theorem` | [log_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/declarations/log-quasi--d1d34a0e1a579abfbc0c5f46.md) | 54 | `result-track:d1d34a0e1a579abfbc0c5f46a51743e608938ec0b9d7a6ece2860d15c3849933` |
| 6 | `def` | [logFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/declarations/logfunc--1631479aadb064c1c4c89bdd.md) | 73 | `declaration-track:1631479aadb064c1c4c89bddda76bd25ba389c0243e45f0c834060f30d236b67` |
| 7 | `def` | [positiveFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/declarations/positivefunc--5e5c0bc99e7804c98cb1a7d3.md) | 74 | `declaration-track:5e5c0bc99e7804c98cb1a7d3ff2f6f5d440e4c0c9888211cae11aca2dcb5198e` |
| 8 | `theorem` | [logFunc_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/declarations/logfunc-norm-sq--dd182f053caf37251ba06124.md) | 77 | `result-track:dd182f053caf37251ba061244f22b00b770f4d027e7a59fedeaea63f8655a08c` |
| 9 | `theorem` | [logFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/declarations/logfunc-memlp--b1c25e7d318c938b0c9b5fce.md) | 85 | `result-track:b1c25e7d318c938b0c9b5fce5af29daca7a1127cfbde765c9ca26f10bd4c5f2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
