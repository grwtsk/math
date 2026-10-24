# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteLogAffineFirstDerivative.Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3cc8304320d6e201904f150a40b83cae2f400c3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3cc8304320d6e201904f150a40b83cae2f400c3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteLogAffineCovariance` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Linear` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/weightderivative--d4e91c4fd610e401527b896d.md) | 44 | `declaration-track:d4e91c4fd610e401527b896dda24affd02d7d980919e66819ff320f08cc492d9` |
| 2 | `theorem` | [weightDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/weightderivative-apply--337656a5cda3cfb92c27b5a9.md) | 48 | `result-track:337656a5cda3cfb92c27b5a9bc145fcb6de1502babc7d9255dcd70d2041a7a7e` |
| 3 | `theorem` | [analyticAt_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/analyticat-unnormalizedweight--f01e2bba44ed3dad3f1ea8e0.md) | 55 | `result-track:f01e2bba44ed3dad3f1ea8e04be8d396a88f82254e1aba5aad5fff92b1a0f99b` |
| 4 | `theorem` | [hasFDerivAt_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/hasfderivat-unnormalizedweight--153fcf218d8d6b38c60cfb7a.md) | 65 | `result-track:153fcf218d8d6b38c60cfb7a10598541cef7c601375049fed580b6f8efd2d652` |
| 5 | `def` | [partitionDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/partitionderivative--a60f8796af080d85a3e053f3.md) | 76 | `declaration-track:a60f8796af080d85a3e053f3d2ce4a423e93313c6df4819d25dcd5dcaeca1546` |
| 6 | `theorem` | [partitionDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/partitionderivative-apply--94c43a14c1e15603825323f5.md) | 80 | `result-track:94c43a14c1e15603825323f540454a0a5fcfe854c6eeae695b01c182b84564ca` |
| 7 | `theorem` | [analyticAt_partition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/analyticat-partition--97d919e6569745d0f40c182e.md) | 89 | `result-track:97d919e6569745d0f40c182ea66d17a117c8eacb7db249b013cbdcdda3e79451` |
| 8 | `theorem` | [hasFDerivAt_partition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/hasfderivat-partition--a6b54622da72e3bfc2984ea4.md) | 99 | `result-track:a6b54622da72e3bfc2984ea4f1975c020f5fb1e24ee4508c9bb750859a064a1e` |
| 9 | `theorem` | [partition_mul_probability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/partition-mul-probability--666f2fdcbbd5d1669e6a7196.md) | 112 | `result-track:666f2fdcbbd5d1669e6a7196fdb4a26ce0dc142ab7318e011b73327f87af3803` |
| 10 | `theorem` | [partitionDerivative_eq_partition_smul_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/partitionderivative-eq-partition-smul-centroid--302ff1a935c67bf7263b860b.md) | 120 | `result-track:302ff1a935c67bf7263b860b8891bf672b9a42bd3d9ee92a716031ae9a24a08e` |
| 11 | `theorem` | [inv_smul_partitionDerivative_eq_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/inv-smul-partitionderivative-eq-centroid--f95b4155c08277743b686b8f.md) | 132 | `result-track:f95b4155c08277743b686b8f6e35253294586dd80f6b40b2475a7290fc0df4c7` |
| 12 | `theorem` | [analyticAt_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/analyticat-logpartition--187fd381bb64b56af725ce63.md) | 142 | `result-track:187fd381bb64b56af725ce6345679bd95f6b8f98ffcabe07f753c86df09816c6` |
| 13 | `theorem` | [hasFDerivAt_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/hasfderivat-logpartition--57359e87c05e42a92d6012a1.md) | 149 | `result-track:57359e87c05e42a92d6012a1962ad860bab708222f405706d95306e9af9da336` |
| 14 | `theorem` | [fderiv_logPartition_eq_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/fderiv-logpartition-eq-centroid--bcc3e639ccca825373ec5e23.md) | 160 | `result-track:bcc3e639ccca825373ec5e2327d2482b535e13775a8c56ab55904f8d96397668` |
| 15 | `theorem` | [analyticAt_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/analyticat-centroid--2edd298db206c49d289f2219.md) | 167 | `result-track:2edd298db206c49d289f2219b1dfe8afdb58beb09e47244b68797cc79aaaa550` |
| 16 | `theorem` | [directional_derivative_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean/declarations/directional-derivative-logpartition--d6f78e3a806376676ca920e3.md) | 180 | `result-track:d6f78e3a806376676ca920e362fcb1f2ae32aaac2dbd62a2d891a7c54e88bcff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
