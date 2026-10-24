# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteLogAffineFirstDerivative.Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "959c7cb97291b7e8c218d46440e8d840bca0e5bf",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `959c7cb97291b7e8c218d46440e8d840bca0e5bf`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteLogAffineCovariance` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Linear` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/weightderivative--48460fb39a721076753767d0.md) | 52 | `declaration-track:48460fb39a721076753767d072cff5194640e54afca11a3e8228a01851600bf3` |
| 2 | `theorem` | [weightDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/weightderivative-apply--87368ff6a6aab9a7bd73172d.md) | 56 | `result-track:87368ff6a6aab9a7bd73172db6a74d0d0bb096679f70a06e402ca34f99914317` |
| 3 | `theorem` | [analyticAt_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/analyticat-unnormalizedweight--53c0310067db520c34d12cc8.md) | 63 | `result-track:53c0310067db520c34d12cc849a3ed36201594c42ae12c2a84e326233842c87c` |
| 4 | `theorem` | [hasFDerivAt_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/hasfderivat-unnormalizedweight--277d8f85b07539b911d9ae6f.md) | 73 | `result-track:277d8f85b07539b911d9ae6f7bc2f59a986ce1b3d57d9d44784a8b168911a907` |
| 5 | `def` | [partitionDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/partitionderivative--5f8cac77a24acf0a24683513.md) | 84 | `declaration-track:5f8cac77a24acf0a24683513fa41d93043af57217d60fe69f6455068abaf51c9` |
| 6 | `theorem` | [partitionDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/partitionderivative-apply--a1c1961c3d4750875b0da232.md) | 88 | `result-track:a1c1961c3d4750875b0da23232fecd63fd580fdfee089a6b2880cf92238a22c0` |
| 7 | `theorem` | [analyticAt_partition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/analyticat-partition--a0d0041c2160818cf9237e9f.md) | 97 | `result-track:a0d0041c2160818cf9237e9f98e4a0f8070b0e6e1e893eddd8029514d48d4b23` |
| 8 | `theorem` | [hasFDerivAt_partition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/hasfderivat-partition--56bdfd3b37a1b079c757c78d.md) | 107 | `result-track:56bdfd3b37a1b079c757c78d4504bb3b292e6c5b05a8506805c010564f694ae2` |
| 9 | `theorem` | [partition_mul_probability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/partition-mul-probability--96914c7bad027926bcc07739.md) | 120 | `result-track:96914c7bad027926bcc0773922bfa86041be1a0beb131dc31881192282ad1e6e` |
| 10 | `theorem` | [partitionDerivative_eq_partition_smul_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/partitionderivative-eq-partition-smul-centroid--fd9e2e1a0775e470fafcf119.md) | 128 | `result-track:fd9e2e1a0775e470fafcf1198cee7aece9e5d299cf2b2f3a96b4db7e96f531c2` |
| 11 | `theorem` | [inv_smul_partitionDerivative_eq_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/inv-smul-partitionderivative-eq-centroid--89132eacd40213f886b4b466.md) | 140 | `result-track:89132eacd40213f886b4b4666d93b852b4e7226211087ebd7198c39bc80d7993` |
| 12 | `theorem` | [analyticAt_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/analyticat-logpartition--cb7a5f4683f4eee0a069b3e2.md) | 150 | `result-track:cb7a5f4683f4eee0a069b3e295344899bb6d7794499352154c11cfaea2f1669a` |
| 13 | `theorem` | [hasFDerivAt_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/hasfderivat-logpartition--1fb9ebe03e1910c283e174df.md) | 157 | `result-track:1fb9ebe03e1910c283e174dfcd35224cf4487320a90f5a810e6e31ab4ce452ae` |
| 14 | `theorem` | [fderiv_logPartition_eq_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/fderiv-logpartition-eq-centroid--f6a760f12038cb23aba2a2d4.md) | 168 | `result-track:f6a760f12038cb23aba2a2d487cee6396510065edadb7e3c8bbc8595ad76f948` |
| 15 | `theorem` | [analyticAt_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/analyticat-centroid--ac75b6bd509331621f7b9e01.md) | 175 | `result-track:ac75b6bd509331621f7b9e010484c39145be04883372bd60b29e181c92c43145` |
| 16 | `theorem` | [directional_derivative_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant6ec4e10ddb1f35d895da6161df9f219d8c425da250c2d75d783d31765b72ed99.lean/declarations/directional-derivative-logpartition--817ad3a08b56d614242cdfc8.md) | 188 | `result-track:817ad3a08b56d614242cdfc837a852636eac3333e471556a62cc9f21a39b674d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
