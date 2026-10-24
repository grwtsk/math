# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EulerPrimeReciprocalDivergence.Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fa2f7f6e0ba752c2c3aa555662e027b22870e15",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fa2f7f6e0ba752c2c3aa555662e027b22870e15`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.PrimeReciprocalSums` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.RealEulerProductConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteHarmonicEulerProduct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/declarations/finiteharmoniceulerproduct--6f96f8dfbe4360ad4eb30dc7.md) | 18 | `declaration-track:6f96f8dfbe4360ad4eb30dc7f31b7be6a12b8b196b84e320895d3537813c3d0d` |
| 2 | `theorem` | [finiteHarmonicEulerProduct_expands](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/declarations/finiteharmoniceulerproduct-expands--319d6debd4f359bc4cdb7f1d.md) | 22 | `result-track:319d6debd4f359bc4cdb7f1dfca71ed3071c5f87e11e0a7ab5df99e83d9b663b` |
| 3 | `theorem` | [posWeightReal_one_eq_inv_nat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/declarations/posweightreal-one-eq-inv-nat--1dd6ec3fb9c69e50aeb14cbb.md) | 33 | `result-track:1dd6ec3fb9c69e50aeb14cbb417624a8cee7c5fbea5371342d57d43422576697` |
| 4 | `theorem` | [harmonicPartial_le_finiteHarmonicEulerProduct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/declarations/harmonicpartial-le-finiteharmoniceulerproduct--4b1492fe3f88cc655ce7f236.md) | 40 | `result-track:4b1492fe3f88cc655ce7f236ec23335e0324b66cf65ade1270211425bc37d6ce` |
| 5 | `def` | [reciprocalGeometricFactor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/declarations/reciprocalgeometricfactor--afbce91165d874580409162f.md) | 55 | `declaration-track:afbce91165d874580409162f93e9581d1775cd0baf72220edd0cbb7c0afcf12f` |
| 6 | `theorem` | [finiteZetaEulerFactorReal_one_eq_reciprocalGeometricFactor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/declarations/finitezetaeulerfactorreal-one-eq-reciprocalgeometricfactor--8ec27398c73fb6b37ad30a3d.md) | 59 | `result-track:8ec27398c73fb6b37ad30a3d81197cde6f01ce1034be1e2175d3997709929ac5` |
| 7 | `theorem` | [reciprocalGeometricFactor_le_inv_one_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/declarations/reciprocalgeometricfactor-le-inv-one-sub--db61721493e180443ede2482.md) | 72 | `result-track:db61721493e180443ede2482c8303a4063cb3d2b3dd12b8101403482c9181ec4` |
| 8 | `theorem` | [inv_one_sub_prime_inv_le_exp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/declarations/inv-one-sub-prime-inv-le-exp--527ad2ec27018bff438fee2b.md) | 94 | `result-track:527ad2ec27018bff438fee2b4754e66810a8b56c4508d450a4dd1d980b866db4` |
| 9 | `theorem` | [finiteHarmonicEulerProduct_le_exp_primeReciprocalPartial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/declarations/finiteharmoniceulerproduct-le-exp-primereciprocalpartial--c9de4ba834f13de5d656793c.md) | 117 | `result-track:c9de4ba834f13de5d656793c9a0eb4a99caf74e369665bed32935867433a35d2` |
| 10 | `theorem` | [primeReciprocalPartial_unbounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/declarations/primereciprocalpartial-unbounded--45b2e6ece0f9fe6d021b0ad8.md) | 151 | `result-track:45b2e6ece0f9fe6d021b0ad8daa7063d685c287d46d1d2d17518cc1b36de023b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
