# Verification target: GRWTSK.Algebra.Homology.ThreeCellCech

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e89ca3cc9e88312d6c3eaca53aef5c93917a3fa9",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Homology/ThreeCellCech.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/index.md) · [Full source](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e89ca3cc9e88312d6c3eaca53aef5c93917a3fa9`.

Source path: `GRWTSK/Algebra/Homology/ThreeCellCech.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Homology/ThreeCellCech.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Triple](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/triple--9d08fe186657b1c2f8af15f6.md) | 18 | `declaration-track:9d08fe186657b1c2f8af15f6bd279e6a5bb82b8c7f571d94553711150ae8b0f6` |
| 2 | `def` | [delta0](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/delta0--fcf58ede0adf7c2e5431b80c.md) | 23 | `declaration-track:fcf58ede0adf7c2e5431b80c5c8e60f3237590221b06aabab7672079b6254dbf` |
| 3 | `def` | [delta1](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/delta1--6fdf9352d6b83ec1c26c3277.md) | 25 | `declaration-track:6fdf9352d6b83ec1c26c327747856016430d85acaee66c98f277695cac17e931` |
| 4 | `def` | [tree](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/tree--99853a7f18462df51cc2a5ed.md) | 28 | `declaration-track:99853a7f18462df51cc2a5ed829665c7e046b6d3ad7fdeb8d7e93bb1f34326c9` |
| 5 | `def` | [face](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/face--676384eac66df66ebf31af6d.md) | 31 | `declaration-track:676384eac66df66ebf31af6d4a9fb62d7d35bee702994025b322b401b2780025` |
| 6 | `def` | [common](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/common--039c79a289cf0e0f9b9047fc.md) | 33 | `declaration-track:039c79a289cf0e0f9b9047fc3a21d82e174cf238f8a5257f3e5f86e5c72e311d` |
| 7 | `def` | [mismatch](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/mismatch--105d96423e2b35087ee54d80.md) | 35 | `declaration-track:105d96423e2b35087ee54d8041717e50b233cc0052aa60a1baa9272ead6be9db` |
| 8 | `def` | [replaceClosure](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/replaceclosure--32e4598922eeb508eaae6abf.md) | 38 | `declaration-track:32e4598922eeb508eaae6abfcd4a31aa36a17695ce58453034dd0d984f8f0d66` |
| 9 | `theorem` | [delta1_delta0](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/delta1-delta0--ae9399882b351f02b4d7b3a2.md) | 40 | `result-track:ae9399882b351f02b4d7b3a2a5526d6861c66683be3f76e3988069280d47147b` |
| 10 | `theorem` | [edge_homotopy](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/edge-homotopy--aa3bb8d710d4599fc5fe73ab.md) | 44 | `result-track:aa3bb8d710d4599fc5fe73ab2a890d45a019d4b3ce4d10114d5c7f3986faabf3` |
| 11 | `theorem` | [delta1_face](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/delta1-face--764f19cb91ba80c524c33170.md) | 48 | `result-track:764f19cb91ba80c524c33170795f341acf4404df2f38945ee8bb05330d2c68c6` |
| 12 | `theorem` | [vertex_homotopy](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/vertex-homotopy--4341a1a6ed290f1b6a33b5fa.md) | 50 | `result-track:4341a1a6ed290f1b6a33b5fa1507e7778064640d699ce03262f42f9fe7d14f3e` |
| 13 | `theorem` | [reconstruct](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/reconstruct--f191c168cad10a4f4b043280.md) | 54 | `result-track:f191c168cad10a4f4b043280fb7979fac659a20e94cab96a0fbedbbcd53539a2` |
| 14 | `theorem` | [mismatch_decomposition](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/mismatch-decomposition--88fd3a26ac09104e17e9ff1b.md) | 59 | `result-track:88fd3a26ac09104e17e9ff1b28b9e7a58847439d30485f4bcdef417d65700071` |
| 15 | `theorem` | [matching_iff](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/matching-iff--ce58858ec9463284d209b960.md) | 65 | `result-track:ce58858ec9463284d209b96030da044e5d50a15583f57dab4bffb32875806b1f` |
| 16 | `def` | [GlueFiber](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/gluefiber--94af7e24a5c84180d1005b3b.md) | 87 | `declaration-track:94af7e24a5c84180d1005b3b4162c5caef813f3901b879964ffee4253436a059` |
| 17 | `theorem` | [glue_inhabited_iff](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/glue-inhabited-iff--9a9fe0f66484347137201f13.md) | 89 | `result-track:9a9fe0f66484347137201f1392ad17bc79f2547c94b74403035aad1c09d7987c` |
| 18 | `theorem` | [glue_unique](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/glue-unique--84179cd90ccaf62c53105c4e.md) | 97 | `result-track:84179cd90ccaf62c53105c4ec3c39fdc55c0866dda0b646eb40546a0ceb38920` |
| 19 | `theorem` | [tree_replaceClosure](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/tree-replaceclosure--5ed92f0b90bc5fb6a1155582.md) | 101 | `result-track:5ed92f0b90bc5fb6a1155582f55e946ebe9086cbd8c0879a8e9e91b0418ebd46` |
| 20 | `theorem` | [closure_replaceClosure](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/closure-replaceclosure--3a334da539c8390160579860.md) | 106 | `result-track:3a334da539c839016057986067268d0ee98d4ffa7384ae5c709822d91a1e7f9b` |
| 21 | `theorem` | [replaceClosure_restore](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/replaceclosure-restore--1602c1485516da9b6bddd3a6.md) | 110 | `result-track:1602c1485516da9b6bddd3a6be45a7c9d7a6673f68c561891c57db2afba0769d` |
| 22 | `theorem` | [replaceClosure_replace](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/replaceclosure-replace--aed9d93334f27848c37c6b75.md) | 114 | `result-track:aed9d93334f27848c37c6b75ac6a95892aba48cb3d1e5849c2af94108332f805` |
| 23 | `theorem` | [map_tree](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/map-tree--35aee122f8e7baf962390401.md) | 119 | `result-track:35aee122f8e7baf9623904015daaee2c70b269baa4ddce0c7bc193eda0db8d0f` |
| 24 | `theorem` | [map_common](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/map-common--f612a77226e1b5d9bfd38ce0.md) | 124 | `result-track:f612a77226e1b5d9bfd38ce0d5d9a5ea1608f4e470262d29ff942ac69eb9a867` |
| 25 | `theorem` | [map_closure](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/map-closure--f27565cfca1522a1bcd4bd42.md) | 129 | `result-track:f27565cfca1522a1bcd4bd42cbc9c04acfa64632b512405dfc14a1961f09d282` |
| 26 | `theorem` | [map_replaceClosure](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/map-replaceclosure--2157b9a8675221f6d6a081a8.md) | 132 | `result-track:2157b9a8675221f6d6a081a8552f1f22c364be00edbd55a60c543d25835e7904` |
| 27 | `theorem` | [face_smul](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/face-smul--560c5cdf864289188af81d3b.md) | 140 | `result-track:560c5cdf864289188af81d3bf35d6d7ae1ed4bc60ed4307b99e334d9339bdad2` |
| 28 | `def` | [phaseEncode](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/phaseencode--aa7b419820b7e66d8958df6a.md) | 145 | `declaration-track:aa7b419820b7e66d8958df6a43c4befe947b14171bcaebe880092428a7bd0e6e` |
| 29 | `def` | [phaseDecode](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/phasedecode--9f570b09e0303fdcead212ef.md) | 148 | `declaration-track:9f570b09e0303fdcead212ef14c76c56901ff4569a451b0eca8f376d00ea49ba` |
| 30 | `theorem` | [phaseDecode_encode](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/phasedecode-encode--aff44c9ac7305bad87987b4a.md) | 151 | `result-track:aff44c9ac7305bad87987b4a6c61952e2dd21c3439af6d22541b152461d28457` |
| 31 | `theorem` | [phaseEncode_decode](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/declarations/phaseencode-decode--cb4ef146b4ed823ef8136b28.md) | 156 | `result-track:cb4ef146b4ed823ef8136b28ccb0e51cc50e7503d9a7fc62b61d1de32b56808e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
