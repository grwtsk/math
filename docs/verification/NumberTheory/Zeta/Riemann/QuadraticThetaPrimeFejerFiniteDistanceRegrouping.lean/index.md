# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteDistanceRegrouping

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffc561b844afbe7d9a09a18930ed1c0d5220e077",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffc561b844afbe7d9a09a18930ed1c0d5220e077`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDistanceSample`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceSample.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclicFejerDistance_mapsTo_Icc](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/declarations/cyclicfejerdistance-mapsto-icc--4d8107ed4292e72be3307450.md) | 13 | `result-track:4d8107ed4292e72be330745035efb2645fd5dbfe8ecbd8617e7e51ffb916e5f1` |
| 2 | `theorem` | [cyclicFejerDistanceFiber_weighted_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/declarations/cyclicfejerdistancefiber-weighted-le--743fd0bf454df74a1e4a8387.md) | 24 | `result-track:743fd0bf454df74a1e4a8387bbfcbae8c00bf5173397c85250a31345cfe1d144` |
| 3 | `theorem` | [cyclicDistanceWeightedKernel_le_IccFirstMoment](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/declarations/cyclicdistanceweightedkernel-le-iccfirstmoment--b07a3d720673efa6306b2443.md) | 104 | `result-track:b07a3d720673efa6306b2443387ac6bb2d8f71e61e26310409b5b8da5fd382c8` |
| 4 | `theorem` | [cyclicDistance_Icc_sum_eq_cyclicStepBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/declarations/cyclicdistance-icc-sum-eq-cyclicstepbudget--6c6027d32cb4b8460bf3e7d7.md) | 126 | `result-track:6c6027d32cb4b8460bf3e7d7c003a67e5da2d8ec73fc1d01824a9644b58d4e5f` |
| 5 | `theorem` | [cyclicDistanceWeightedKernelPairing](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/declarations/cyclicdistanceweightedkernelpairing--028badb172b173f088a86d34.md) | 146 | `result-track:028badb172b173f088a86d340e52417cae7b861f01def52084a2a763e166c3f3` |
| 6 | `theorem` | [nonAliasingFejerSharpStepL1FirstMomentFour](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/declarations/nonaliasingfejersharpstepl1firstmomentfour--48fc3d37773063f863008866.md) | 154 | `result-track:48fc3d37773063f8630088665869c8ec8c3955f17bc8b27d3f3893d85a6f5324` |
| 7 | `theorem` | [nonAliasingPrimePrefixFejerFirstMomentComparisonFactorFour](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/declarations/nonaliasingprimeprefixfejerfirstmomentcomparisonfactorfour--7f8ab974fed815664c8c3097.md) | 160 | `result-track:7f8ab974fed815664c8c3097b4318ead674f496c13f0905209cd68d01bd9564f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
