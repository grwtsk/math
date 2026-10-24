# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteDimension.Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a02669fd701234212f682f44e662327fbce954b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a02669fd701234212f682f44e662327fbce954b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiffOn_clm_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98.lean/declarations/contdiffon-clm-apply--d3987d6de2b7b37989379b75.md) | 37 | `result-track:d3987d6de2b7b37989379b75ed8abee76d4e85e56497629c35137a9ad739a496` |
| 2 | `theorem` | [contDiff_clm_apply_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98.lean/declarations/contdiff-clm-apply-iff--11e4267fc0e930ec4ac33572.md) | 47 | `result-track:11e4267fc0e930ec4ac33572739189f881fb3f1ebef3d6972ade9b80f336cb75` |
| 3 | `theorem` | [contDiff_succ_iff_fderiv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98.lean/declarations/contdiff-succ-iff-fderiv-apply--9c7685b3bcbc9f234ebb01c3.md) | 60 | `result-track:9c7685b3bcbc9f234ebb01c30adca8b55e41cca620cdad5cb55911f7f6b6055e` |
| 4 | `theorem` | [contDiffOn_succ_of_fderiv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98.lean/declarations/contdiffon-succ-of-fderiv-apply--5aee823e6f86d1cc9f277e3c.md) | 65 | `result-track:5aee823e6f86d1cc9f277e3c6461b83b14baeb316ef89857253adbeb84215139` |
| 5 | `theorem` | [contDiffOn_succ_iff_fderiv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98.lean/declarations/contdiffon-succ-iff-fderiv-apply--244e3397c7d483acb7eaf35e.md) | 71 | `result-track:244e3397c7d483acb7eaf35e65acb0a867b30f66eb791918e5637eff8e814db1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
