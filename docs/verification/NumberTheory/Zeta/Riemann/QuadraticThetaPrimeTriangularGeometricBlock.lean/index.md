# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularGeometricBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "014527076089488ffe089e85bd1d75a59e6ffc9d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularGeometricBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularGeometricBlock.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularGeometricBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `014527076089488ffe089e85bd1d75a59e6ffc9d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularGeometricBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularGeometricBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernelDecay`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDecay.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Algebra.Field.GeomSum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Exponential` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangularGeometricRatio](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularGeometricBlock.lean/declarations/triangulargeometricratio--9c5c9298429f2a6e2a8782a4.md) | 15 | `declaration-track:9c5c9298429f2a6e2a8782a4b580bb80148cc557cad4d0e521242a71c2adb854` |
| 2 | `def` | [triangularGeometricBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularGeometricBlock.lean/declarations/triangulargeometricblock--f695edbfb091583d59c6735f.md) | 19 | `declaration-track:f695edbfb091583d59c6735f42a712a3126729275b7adf9ba03d9399e1d84667` |
| 3 | `theorem` | [triangularGeometricBlock_eq_exp_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularGeometricBlock.lean/declarations/triangulargeometricblock-eq-exp-sum--959e88d881ec0f099cd74085.md) | 23 | `result-track:959e88d881ec0f099cd74085fe164ca81c5d8ec835ceb83360457c4425d4a958` |
| 4 | `theorem` | [triangularGeometricBlock_eq_geom_ratio](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularGeometricBlock.lean/declarations/triangulargeometricblock-eq-geom-ratio--0b7e42c3f04e96066257cb37.md) | 39 | `result-track:0b7e42c3f04e96066257cb37c69bbfa9b199260bb726197b8c1bef6cfee082d2` |
| 5 | `def` | [SymmetricTriangularKernelAutocorrelationClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularGeometricBlock.lean/declarations/symmetrictriangularkernelautocorrelationclaim--3b04d84195597165e2375fa3.md) | 50 | `declaration-track:3b04d84195597165e2375fa318094c29d98cb3a6b63334f5c3a2814ebc144e77` |
| 6 | `def` | [TriangularGeometricBlockSineNormClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularGeometricBlock.lean/declarations/triangulargeometricblocksinenormclaim--69f57333b0a15dd02140e1ef.md) | 59 | `declaration-track:69f57333b0a15dd02140e1ef077ffdedf22e59dcd514d569710061983b4a176f` |
| 7 | `theorem` | [autocorrelation_and_sineNorm_to_closedForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularGeometricBlock.lean/declarations/autocorrelation-and-sinenorm-to-closedform--0353f63e69ee0d83d52f349a.md) | 70 | `result-track:0353f63e69ee0d83d52f349a91918dccdfa3a541b59b39f715dc86776a4ebe25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
