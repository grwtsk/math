# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PolarCoord.Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4624b5c0fc2cb6451033621cc750ca3b463a5fb7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4624b5c0fc2cb6451033621cc750ca3b463a5fb7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Jacobian` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean/declarations/macro-rules--39e3c4f49f2d9488b86d0208.md) | 25 | `declaration-track:39e3c4f49f2d9488b86d020841b8d59f7d4076513a4794c8bdb4d31288c3d1b6` |
| 2 | `def` | [polarCoord](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean/declarations/polarcoord--18279cc556afb6df28ea49b7.md) | 34 | `declaration-track:18279cc556afb6df28ea49b7527335593111f4ef63e7a2857c362c81038d9e1f` |
| 3 | `theorem` | [hasFDerivAt_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean/declarations/hasfderivat-polarcoord-symm--db8d54c75919e70eeeb8423f.md) | 99 | `result-track:db8d54c75919e70eeeb8423f5b95b39fa70e5d34ca14ac89c45d02d4d5f7461a` |
| 4 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean/declarations/instance--832ac345af3a4698615a4d13.md) | 111 | `declaration-track:832ac345af3a4698615a4d132e7949f4e66ed4bf58652fd23ba6d475c207949a` |
| 5 | `theorem` | [polarCoord_source_ae_eq_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean/declarations/polarcoord-source-ae-eq-univ--2818ef998df116dde265acf6.md) | 114 | `result-track:2818ef998df116dde265acf65977e8ed5670d691a174b906bf23f4b1dbf5e2e0` |
| 6 | `theorem` | [integral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant44bb176522a4fd864700a10c5408e06dabd81461388e1574ad1a6d5087460175.lean/declarations/integral-comp-polarcoord-symm--0cf9a4a6dd27240632f446ff.md) | 130 | `result-track:0cf9a4a6dd27240632f446ffc0541ecbb80d0305e6abc690b4d50a10dd120300` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
