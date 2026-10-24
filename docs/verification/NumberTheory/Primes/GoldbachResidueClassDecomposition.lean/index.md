# Verification target: GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b434cfac8e8defaaf20c5e36387c564910a74ca0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b434cfac8e8defaaf20c5e36387c564910a74ca0`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates`](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Nat.Periodic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachRationalPhase](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachrationalphase--cacf99900fc1ca82a8627dad.md) | 38 | `declaration-track:cacf99900fc1ca82a8627dada9ff7d2840e19955db27e6d78050cec758364f83` |
| 2 | `def` | [goldbachResidueClassPrimeSum](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachresidueclassprimesum--02d970db0fcee880088e3955.md) | 42 | `declaration-track:02d970db0fcee880088e3955a1afeaf98e94d8a1de41601ce9d5bcdf87ada9a4` |
| 3 | `def` | [goldbachResidueClassExponentialKernel](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachresidueclassexponentialkernel--4fb60ee91aef5c2a3e2458cd.md) | 48 | `declaration-track:4fb60ee91aef5c2a3e2458cd2d8520db36350c2411dd70c38ed2f74cc4f667ef` |
| 4 | `def` | [goldbachResidueClassCircleKernel](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachresidueclasscirclekernel--abc4fe51708c4573ecaa5b61.md) | 55 | `declaration-track:abc4fe51708c4573ecaa5b615b50e0b1712b2ef3baf3ef8c4be3a4609049a154` |
| 5 | `def` | [goldbachResidueClassCircleModel](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachresidueclasscirclemodel--896d9ca736ae6c431710b43a.md) | 65 | `declaration-track:896d9ca736ae6c431710b43a0ae3871eb93bdeb41b49aef4afea19e89f3ce859` |
| 6 | `theorem` | [unitCharacter_denominator_at_rational](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/unitcharacter-denominator-at-rational--f1f3860ca3853b20d43823e9.md) | 71 | `result-track:f1f3860ca3853b20d43823e93c323341b0f0ec1fdc4aadf7fb9d614629fa955d` |
| 7 | `theorem` | [goldbachRationalPhase_periodic](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachrationalphase-periodic--43fbe42f570464e97bfc1ccb.md) | 90 | `result-track:43fbe42f570464e97bfc1ccb40e1971b310c97ebd256d501f5166a452ce3f61e` |
| 8 | `theorem` | [goldbachRationalPhase_mod](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachrationalphase-mod--64c89199bdf67cff6058b3a8.md) | 102 | `result-track:64c89199bdf67cff6058b3a8ae37d871e9d545ed0c31d45f87b66e51908ac222` |
| 9 | `theorem` | [unitCharacter_at_rational_eq_phase_mod](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/unitcharacter-at-rational-eq-phase-mod--7523e5928b7d99c68fc55856.md) | 110 | `result-track:7523e5928b7d99c68fc5585664bd9bf3a67e3cc401ae25d823823a278b77819e` |
| 10 | `theorem` | [goldbachPrimeSum_eq_sum_residueClasses](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachprimesum-eq-sum-residueclasses--2815c4145939f383dd8cc7c4.md) | 118 | `result-track:2815c4145939f383dd8cc7c43e4fe22d76ab41fe43e38bfff0ef7a4060454ea0` |
| 11 | `theorem` | [goldbachCenteredExponentialSum_eq_residueClassKernel](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachcenteredexponentialsum-eq-residueclasskernel--9249d4b195bdaf22cd34eabe.md) | 135 | `result-track:9249d4b195bdaf22cd34eabe3a771b4ce9e9334dcaf9bbbf869eccf5473bf5b5` |
| 12 | `theorem` | [goldbachExponentialSum_eq_residueClassKernel](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachexponentialsum-eq-residueclasskernel--a2ca6019b52b8989493b4ce6.md) | 183 | `result-track:a2ca6019b52b8989493b4ce62a8c278258d88e665b7caf6149fb5334a207e2b4` |
| 13 | `theorem` | [goldbachCenteredCircleIntegrand_eq_residueClassKernel](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachcenteredcircleintegrand-eq-residueclasskernel--9753c15460a0af6aa7482444.md) | 194 | `result-track:9753c15460a0af6aa74824442a49e3276c7af234bccecee057b22a0e2887e3d6` |
| 14 | `theorem` | [goldbachCircleIntegrand_eq_residueClassModel](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachcircleintegrand-eq-residueclassmodel--bd120505995f8108ace2129b.md) | 204 | `result-track:bd120505995f8108ace2129bb09dd95113beb8fb9198e762fcbebe7a921a56b9` |
| 15 | `theorem` | [goldbachCircleIntegrand_at_lift_eq_residueClassKernel](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/declarations/goldbachcircleintegrand-at-lift-eq-residueclasskernel--f99b7abbcd0520d150f3258b.md) | 215 | `result-track:f99b7abbcd0520d150f3258b2861c7904b6e85be59de48a63ef53a3d9dbcafdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
