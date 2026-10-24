# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineMap.Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de7602ee46e29c9b25c82c3c235b722b783bda23",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de7602ee46e29c9b25c82c3c235b722b783bda23`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6.lean/declarations/contdiff--8514deb5f93b60fb6f5b008d.md) | 33 | `result-track:8514deb5f93b60fb6f5b008d669f4c9a176b98d5628110ec9b634f44f6f715f0` |
| 2 | `theorem` | [contDiff_lineMap_uncurry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6.lean/declarations/contdiff-linemap-uncurry--a7bca597d3e6eb2d7a065260.md) | 47 | `result-track:a7bca597d3e6eb2d7a0652603c230b183171ca0983ad2188c0a304bbe03f72f4` |
| 3 | `theorem` | [contDiff_lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6.lean/declarations/contdiff-linemap--bd20c5156b72fa6178837b74.md) | 53 | `result-track:bd20c5156b72fa6178837b74b9bcc6a68b9f43dc9772d4c950b4b52b6ead9f62` |
| 4 | `theorem` | [ContDiffWithinAt.lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6.lean/declarations/contdiffwithinat-linemap--9acfd06330f33a7b8fc5a66c.md) | 67 | `result-track:9acfd06330f33a7b8fc5a66c0e2fcbf9d4a6e824679f9587d725095454594456` |
| 5 | `theorem` | [ContDiffAt.lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6.lean/declarations/contdiffat-linemap--fe423bba50228fbe969cbba6.md) | 73 | `result-track:fe423bba50228fbe969cbba64693e2c2f612922695870321f95c1fadfce14aa7` |
| 6 | `theorem` | [ContDiffOn.lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6.lean/declarations/contdiffon-linemap--0278e4874e0d9fbc52d13ea0.md) | 78 | `result-track:0278e4874e0d9fbc52d13ea0d4f376e1a860898b2c35d1fa689477d7e00c027a` |
| 7 | `theorem` | [ContDiff.lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6.lean/declarations/contdiff-linemap--2996ba9985a8490e92fa1f38.md) | 83 | `result-track:2996ba9985a8490e92fa1f38fcc6ceac0d8247d946ceee55ea043b12b2b2df9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
