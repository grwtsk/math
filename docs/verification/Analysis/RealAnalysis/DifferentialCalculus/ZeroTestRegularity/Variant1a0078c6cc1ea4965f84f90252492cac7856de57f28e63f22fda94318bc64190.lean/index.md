# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZeroTestRegularity.Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dc1ee20122b8077b338b3b0dd84b2b870d9b606",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dc1ee20122b8077b338b3b0dd84b2b870d9b606`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [testInterior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/declarations/testinterior--dc6f2d8cd1a5b608f760308d.md) | 22 | `declaration-track:dc6f2d8cd1a5b608f760308dfa42b6d47b9a129305632792df9331b4c49d6c5d` |
| 2 | `def` | [testInteriorDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/declarations/testinteriorderivative--34c56980e903cd2d0386d93c.md) | 25 | `declaration-track:34c56980e903cd2d0386d93c62207cf8ad323e27116234af81882d72887b509a` |
| 3 | `theorem` | [actualTest_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/declarations/actualtest-eq-indicator--9e52532fc98696f884f4eb6c.md) | 28 | `result-track:9e52532fc98696f884f4eb6c1cefcaa3f5ac5763f8b3db842102a880affd2cb3` |
| 4 | `theorem` | [testInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/declarations/testinterior-hasderivat--c26402ce54aeff5f86cfb809.md) | 33 | `result-track:c26402ce54aeff5f86cfb809262fae7fdc2c337339125dccaadd88a5b1ca032f` |
| 5 | `theorem` | [testInterior_frontier](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/declarations/testinterior-frontier--8accb448a381613e8d872dbf.md) | 38 | `result-track:8accb448a381613e8d872dbfd0d067cd5a4d48105bdc12805c78bc64aa0a7e1e` |
| 6 | `theorem` | [actualTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/declarations/actualtest-contdiff--8cadc0812f66fcd25f9cc031.md) | 51 | `result-track:8cadc0812f66fcd25f9cc03169af191eda2cb9686c23bd53c96046243778a69f` |
| 7 | `theorem` | [actualTest_zero_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/declarations/actualtest-zero-of-notmem--29376dd0f86cfdcf4b524941.md) | 66 | `result-track:29376dd0f86cfdcf4b5249418cda9b76a97c886069468bd44f267733ee8d70c9` |
| 8 | `theorem` | [actualTest_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/declarations/actualtest-support-subset--186aea1d95cf188eb1f6ff15.md) | 72 | `result-track:186aea1d95cf188eb1f6ff1574f1a8044b86e197f0c52bb478d20a80c0f4e377` |
| 9 | `theorem` | [actualTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/declarations/actualtest-hascompactsupport--b7c5ecc94a4894df1a1bb269.md) | 79 | `result-track:b7c5ecc94a4894df1a1bb269471ad0d3770ff00076da0e82a490ae0543557b83` |
| 10 | `theorem` | [actualTest_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/declarations/actualtest-even--43e5359f0119d69a60bfa0c5.md) | 85 | `result-track:43e5359f0119d69a60bfa0c5e2b83b65011c27754921d729c43091a54963eef9` |
| 11 | `theorem` | [actualTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190.lean/declarations/actualtest-integrable--8f24298649a3e80f65bfc24c.md) | 95 | `result-track:8f24298649a3e80f65bfc24c147e41716b836f3aaae2c1ca715a2b1cfdb7c73e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
