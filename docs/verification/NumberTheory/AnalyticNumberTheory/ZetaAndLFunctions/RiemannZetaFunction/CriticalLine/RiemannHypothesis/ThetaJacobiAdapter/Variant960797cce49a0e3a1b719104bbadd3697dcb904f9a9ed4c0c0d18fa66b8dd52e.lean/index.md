# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaJacobiAdapter.Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78881aebde5859e97593df4d91859943e502f018",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78881aebde5859e97593df4d91859943e502f018`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.PositiveFourSector` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.CatalanJacobi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/cyclicmoment--5d46871b2dcb9e86e5469947.md) | 46 | `declaration-track:5d46871b2dcb9e86e5469947d23dc87fb2f878117a4034c817795c36859faa13` |
| 2 | `theorem` | [intertwiner_power_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/intertwiner-power-apply--179d802d1f98c982f6d19407.md) | 51 | `result-track:179d802d1f98c982f6d194071fc87cfa7e57342aed8da513c6fe8f35bd2006e1` |
| 3 | `theorem` | [cyclicMoment_transport](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/cyclicmoment-transport--8bfc1340399866d66d85db94.md) | 62 | `result-track:8bfc1340399866d66d85db94324f41768e8d69830e84dfbc396a097e3545534d` |
| 4 | `theorem` | [first_moment_obstructs_transport](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/first-moment-obstructs-transport--08dd608e0679c4c368b05ebc.md) | 72 | `result-track:08dd608e0679c4c368b05ebc6d3a5eddd4216a511a4cc7b9e116694045f089a2` |
| 5 | `def` | [atomicMagnitudeMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/atomicmagnitudemoment--c6aa7724bc70b87ae755d543.md) | 85 | `declaration-track:c6aa7724bc70b87ae755d543ae1b3aebddf59a0ecf59dd90c5276c28a86ea309` |
| 6 | `theorem` | [positive_atomic_first_moment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/positive-atomic-first-moment--4da98baf60766a810c1187ba.md) | 90 | `result-track:4da98baf60766a810c1187bab3f2dba2d4137b51d7edfa620721630109ebf1a5` |
| 7 | `theorem` | [positive_atomic_moments_not_free](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/positive-atomic-moments-not-free--a3988638b2b47f1d4ed5af14.md) | 103 | `result-track:a3988638b2b47f1d4ed5af14aee0687e9baa2f23a764a71ac923f8226decd40a` |
| 8 | `theorem` | [positive_atomic_moments_not_canonical_free](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/positive-atomic-moments-not-canonical-free--0b029ce6b09b0313df1c5bd1.md) | 113 | `result-track:0b029ce6b09b0313df1c5bd158d203c8055d088263e31b8b175174434b1af6f4` |
| 9 | `def` | [measureMagnitudeMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/measuremagnitudemoment--372b48309eb7ec90d1d9d4f8.md) | 128 | `declaration-track:372b48309eb7ec90d1d9d4f85cd88807a653b73a8b67ff657513108d3b3e1823` |
| 10 | `theorem` | [measure_first_moment_positive_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/measure-first-moment-positive-iff--5cc50e859de9864524833914.md) | 133 | `result-track:5cc50e859de986452483391475deb4e119698f929033874cec13456a3dc30961` |
| 11 | `theorem` | [measure_first_moment_positive_of_positive_support](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/measure-first-moment-positive-of-positive-support--f07bf2991c202eb50144d1b6.md) | 141 | `result-track:f07bf2991c202eb50144d1b6efd7530bac2baae36420a6a17ca80ba36a5d77c0` |
| 12 | `theorem` | [measure_moments_not_canonical_free](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/measure-moments-not-canonical-free--719a6df6a4d6acdc904f9976.md) | 152 | `result-track:719a6df6a4d6acdc904f99766fa59f36ef6614354fad65f863805fbe659c4415` |
| 13 | `theorem` | [involution_form_eq_sector_difference](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/involution-form-eq-sector-difference--3cabcac072103cf59cb37170.md) | 168 | `result-track:3cabcac072103cf59cb37170077dc57f92bde3e2f7c94136f2e7a3b1aa41b307` |
| 14 | `theorem` | [negative_sector_form_negative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/negative-sector-form-negative--7e0d75398646c2ba889a8013.md) | 185 | `result-track:7e0d75398646c2ba889a801315366f17797d418d8e32ef8b0ae6515274c6f799` |
| 15 | `theorem` | [negative_sector_prevents_magnitude_identification](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean/declarations/negative-sector-prevents-magnitude-identification--5aa72b1272be315c3a7695cb.md) | 196 | `result-track:5aa72b1272be315c3a7695cb57a0cd552dcb9d212cf00726e65b786b9ec495a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
