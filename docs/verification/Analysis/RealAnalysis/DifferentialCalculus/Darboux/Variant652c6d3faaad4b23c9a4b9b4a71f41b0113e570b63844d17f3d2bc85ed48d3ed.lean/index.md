# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Darboux.Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a439370033e454429967ca213bef25c993f7df57",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a439370033e454429967ca213bef25c993f7df57`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LocalExtr.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_hasDerivWithinAt_eq_of_gt_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/declarations/exists-hasderivwithinat-eq-of-gt-of-lt--46f866aff3c1d04090c06487.md) | 26 | `result-track:46f866aff3c1d04090c064879d3a9a2c832b777c3bb60b06351cff67dde67291` |
| 2 | `theorem` | [exists_hasDerivWithinAt_eq_of_lt_of_gt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/declarations/exists-hasderivwithinat-eq-of-lt-of-gt--9094a0dca46c1042048425ac.md) | 62 | `result-track:9094a0dca46c1042048425accc749d0878961bc4d0e15beeb4d85cb30ed1efcf` |
| 3 | `theorem` | [Set.OrdConnected.image_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/declarations/set-ordconnected-image-hasderivwithinat--dc0f3e593ff1b86c5f811254.md) | 72 | `result-track:dc0f3e593ff1b86c5f8112547da5f21ee64f9b4a4d2702c1604236f1901b0de8` |
| 4 | `theorem` | [Set.OrdConnected.image_derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/declarations/set-ordconnected-image-derivwithin--d66a39f1a6e54cf5effeeeff.md) | 90 | `result-track:d66a39f1a6e54cf5effeeeff3f45aa631c740ec8d4e0ad552fb3cc23ce5d7f20` |
| 5 | `theorem` | [Set.OrdConnected.image_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/declarations/set-ordconnected-image-deriv--7e84a9613493a0c58284dbf0.md) | 96 | `result-track:7e84a9613493a0c58284dbf0ecfe173f4f5c649c9932865195b035eb64346d73` |
| 6 | `theorem` | [Convex.image_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/declarations/convex-image-hasderivwithinat--63a32d15e63db4e59e51de7b.md) | 102 | `result-track:63a32d15e63db4e59e51de7bd3ce2658bb167168e77e088c4e057b6c50a61a9d` |
| 7 | `theorem` | [Convex.image_derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/declarations/convex-image-derivwithin--31cddf8e287e7f3fb8394d18.md) | 108 | `result-track:31cddf8e287e7f3fb8394d186db20a47a26fa460faded07bd6f0a7007303a533` |
| 8 | `theorem` | [Convex.image_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/declarations/convex-image-deriv--d4f8f60881d90abb8abd1b0f.md) | 114 | `result-track:d4f8f60881d90abb8abd1b0f1e4d1c5cc1a7adb80c816e7ab73390ae3e8b0aae` |
| 9 | `theorem` | [exists_hasDerivWithinAt_eq_of_ge_of_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/declarations/exists-hasderivwithinat-eq-of-ge-of-le--8e9fe15190de23dbbf0e7160.md) | 120 | `result-track:8e9fe15190de23dbbf0e716005ceaba85a6680314684816aaf4db79b2d02135c` |
| 10 | `theorem` | [exists_hasDerivWithinAt_eq_of_le_of_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/declarations/exists-hasderivwithinat-eq-of-le-of-ge--ad9866673da7cfcc8274cc65.md) | 128 | `result-track:ad9866673da7cfcc8274cc654a1b58db385fb76a3aa240739695a630c2b88953` |
| 11 | `theorem` | [hasDerivWithinAt_forall_lt_or_forall_gt_of_forall_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/declarations/hasderivwithinat-forall-lt-or-forall-gt-of-forall-ne--97821f5104562f01897bd094.md) | 136 | `result-track:97821f5104562f01897bd0946e8a791583a6a73e92d4a12a4525be262d988019` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
