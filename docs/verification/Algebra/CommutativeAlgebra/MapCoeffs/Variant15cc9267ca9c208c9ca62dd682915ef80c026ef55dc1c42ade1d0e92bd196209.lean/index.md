# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MapCoeffs.Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c463713df3d0f602fde34f86d0d9d74e785d51ad",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c463713df3d0f602fde34f86d0d9d74e785d51ad`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/mapcoeffs--1aa40a8d5f113489fb323f62.md) | 46 | `declaration-track:1aa40a8d5f113489fb323f62e4b2d60b014f98598f9e79a239b5b6a1cb2ed494` |
| 2 | `lemma` | [mapCoeffs_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/mapcoeffs-apply--3ebd2aaa1b99083dd4efea41.md) | 60 | `result-track:3ebd2aaa1b99083dd4efea41298267d4cb0f8cd9720f708d6cd10c113d999487` |
| 3 | `lemma` | [mapCoeffs_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/mapcoeffs-monomial--722d65513c4e46610b83ecb4.md) | 63 | `result-track:722d65513c4e46610b83ecb40f2191f7e14cf49ce3a137c726e1270d1dc51be2` |
| 4 | `lemma` | [mapCoeffs_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/mapcoeffs-x--f68440c5899b553ff5ae9fe7.md) | 68 | `result-track:f68440c5899b553ff5ae9fe7d9afaaece35074c488106e8b3b6146a9d4dfb2e2` |
| 5 | `lemma` | [mapCoeffs_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/mapcoeffs-c--dba7179053f1775aafe281d6.md) | 72 | `result-track:dba7179053f1775aafe281d683a8b9d7a7cd9f134a296666b310f1472359d7d2` |
| 6 | `theorem` | [apply_aeval_eq'](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/apply-aeval-eq--acca5e11e10fbb2665075a45.md) | 78 | `result-track:acca5e11e10fbb2665075a45da36cae74f49edd488e2417ec4d48aedb09b3d9f` |
| 7 | `theorem` | [apply_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/apply-aeval-eq--16384bb19ebb50d3d7ac9747.md) | 90 | `result-track:16384bb19ebb50d3d7ac97471665e5419de29273b1006773a6818b40abb7b4e2` |
| 8 | `theorem` | [apply_eval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/apply-eval-eq--245e7794b54edd58fd07a6e8.md) | 96 | `result-track:245e7794b54edd58fd07a6e861f1539c94947014c0dae887111d05074ad4da29` |
| 9 | `def` | [mapCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/mapcoeffs--30df4bf97d02611f1f751356.md) | 111 | `declaration-track:30df4bf97d02611f1f7513561e34d08a4117fc3fa0192d2d2b45ea9d9d2fe883` |
| 10 | `lemma` | [coeff_mapCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/coeff-mapcoeffs--b5db2a3d0a05de50e996494e.md) | 115 | `result-track:b5db2a3d0a05de50e996494e7c661661dc3f7c41bf8d55a8137ee6591ab7bc38` |
| 11 | `lemma` | [mapCoeffs_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/mapcoeffs-monomial--41e4873f2081e3b7ed408379.md) | 119 | `result-track:41e4873f2081e3b7ed408379ce52fc7c816cdfe00d590d20e089622e831004ad` |
| 12 | `lemma` | [mapCoeffs_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/mapcoeffs-x--f434990e050a26eeb624f5e1.md) | 124 | `result-track:f434990e050a26eeb624f5e1d3d45d6cdf8d5c16e48c580ffd9fa4f706f43cb9` |
| 13 | `lemma` | [mapCoeffs_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/mapcoeffs-c--7cdec1190ebf7019a5d0f6f2.md) | 128 | `result-track:7cdec1190ebf7019a5d0f6f20d143cf5fecbf1c0e1a7fd46980f9821c1fb8a9c` |
| 14 | `theorem` | [deriv_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/deriv-aeval-eq--cb1466a78addc0e95ad658ac.md) | 133 | `result-track:cb1466a78addc0e95ad658ac560851f8b1f2aa5693d921f166419ef987755e13` |
| 15 | `def` | [implicitDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/implicitderiv--513b43b1a60ea55bf4eeafb0.md) | 143 | `declaration-track:513b43b1a60ea55bf4eeafb0b8f450de5685cb5d1c17b8d7cce6d6268b92bb65` |
| 16 | `lemma` | [implicitDeriv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/implicitderiv-c--e21be98da5bc65ac0eb38ce9.md) | 148 | `result-track:e21be98da5bc65ac0eb38ce98f280ee6c71fd4fdf12cd70430cb2acc9e6a994d` |
| 17 | `lemma` | [implicitDeriv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/implicitderiv-x--8a2f238ab8797b652f40e56d.md) | 153 | `result-track:8a2f238ab8797b652f40e56ddaa725e5894ab7117c5adb651cab020801e1dac8` |
| 18 | `lemma` | [deriv_aeval_eq_implicitDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/deriv-aeval-eq-implicitderiv--7a99d7cf82682710df97d8ae.md) | 157 | `result-track:7a99d7cf82682710df97d8ae7b95c940e8391a2d8c8fc21969cfda4c79077251` |
| 19 | `lemma` | [algHom_deriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/alghom-deriv--f09a9adef7d69713fdd6cf21.md) | 164 | `result-track:f09a9adef7d69713fdd6cf217f1d7de735a54957b69ef125dc44728e90838403` |
| 20 | `lemma` | [algEquiv_deriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/algequiv-deriv--e0c45d562001ae0e16648b77.md) | 179 | `result-track:e0c45d562001ae0e16648b77c8cc61dda11e07c8ed4154e4eee61847ce3a3658` |
| 21 | `lemma` | [algHom_deriv'](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/alghom-deriv--ef05c4503f1aa7eb77c224f8.md) | 189 | `result-track:ef05c4503f1aa7eb77c224f82ecf1cb56767b0fa775bdcc780b9e287918fc47b` |
| 22 | `lemma` | [algEquiv_deriv'](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/declarations/algequiv-deriv--1be8f6b26102d2b09df587d9.md) | 196 | `result-track:1be8f6b26102d2b09df587d9c5e179b693f60457cffa47f8c9071e5010322262` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
