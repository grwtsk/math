# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hypercube.Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c3ea41f605e630f110291ca996c991b60d54bdd",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c3ea41f605e630f110291ca996c991b60d54bdd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ListTools` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Hypercube.Point](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-point--8abd11a1c0d3c4dadace18d1.md) | 9 | `declaration-track:8abd11a1c0d3c4dadace18d1beb9a48435d6af10f18e7d7bf1e53f434257e764` |
| 2 | `abbrev` | [Hypercube.Function](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-function--53f28c6e5dcd63430bb9a75e.md) | 13 | `declaration-track:53f28c6e5dcd63430bb9a75ef90f14a93e85d64fed5ee337984a8147380e9818` |
| 3 | `abbrev` | [Hypercube.ScalarFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-scalarfunction--49c88299dfe7bfa0eaa0b583.md) | 21 | `declaration-track:49c88299dfe7bfa0eaa0b5831ceb6656f0e37b7382a0552dec3d77764b108adb` |
| 4 | `def` | [Hypercube.bxor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-bxor--c9364a819b683625bd3fb48d.md) | 25 | `declaration-track:c9364a819b683625bd3fb48d392d522d3e4d3761e2485b81876c2ad3977a2ba4` |
| 5 | `def` | [Hypercube.boolDiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-booldiff--d63fdad495e54224a697f209.md) | 32 | `declaration-track:d63fdad495e54224a697f2091717cf1103038091d86d17a144a1659fd70a7de5` |
| 6 | `def` | [Hypercube.bitAtNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-bitatnat--768713427bba80acdd1a1586.md) | 36 | `declaration-track:768713427bba80acdd1a15865fa6484ae73775d160c4842720d6cc760efdd318` |
| 7 | `def` | [Hypercube.tableBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-tablebit--622aa07d85a38b8a43b29364.md) | 45 | `declaration-track:622aa07d85a38b8a43b293643c0dd7b84871e4e36e1ada593279be04ebb46229` |
| 8 | `def` | [Hypercube.pointOfIndex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-pointofindex--94dfbc3217b925a8315f4bbc.md) | 49 | `declaration-track:94dfbc3217b925a8315f4bbc8a2072e704c03688f691efae617a13e001414794` |
| 9 | `def` | [Hypercube.dropLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-droplast--7bcbef5d327df4d1441187a7.md) | 53 | `declaration-track:7bcbef5d327df4d1441187a7c58b54202a0f027c8a530d35aab718e199de9020` |
| 10 | `def` | [Hypercube.last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-last--c100c50e7a69a2745f9b6ad1.md) | 59 | `declaration-track:c100c50e7a69a2745f9b6ad1fac37184adb3b4823119fa9d4c894297be7d393b` |
| 11 | `def` | [Hypercube.extend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-extend--1c696f2fb7a64cf191057dad.md) | 65 | `declaration-track:1c696f2fb7a64cf191057dad6ca8438342cc2c78160d7207a4fcde6461fcb834` |
| 12 | `theorem` | [Hypercube.dropLast_extend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-droplast-extend--ae0e2ccf57d2b804f9544757.md) | 75 | `result-track:ae0e2ccf57d2b804f95447577c8f34aed1531ffd57a584e0899ab4b187995301` |
| 13 | `theorem` | [Hypercube.last_extend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-last-extend--925c304a2f0ff654b0155ed6.md) | 82 | `result-track:925c304a2f0ff654b0155ed6a52099c3d8799e4a512bb583965483fe813c6989` |
| 14 | `def` | [Hypercube.vertices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-vertices--49ede11041e46cab00e7a87d.md) | 91 | `declaration-track:49ede11041e46cab00e7a87dfb1279694a7aecd0f5f0348f06754ff30a9f3333` |
| 15 | `theorem` | [Hypercube.vertices_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-vertices-length--13fae0349ac08ead72545ee0.md) | 97 | `result-track:13fae0349ac08ead72545ee0f950452bd658f3a6e1ec23572afff30993af6f89` |
| 16 | `theorem` | [Hypercube.bitAtNat_two_mul_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-bitatnat-two-mul-succ--0bf64955efee506f5016feb8.md) | 116 | `result-track:0bf64955efee506f5016feb803d13e1cc1995c097ccc62429f407fe1fdac7e2d` |
| 17 | `theorem` | [Hypercube.bitAtNat_two_mul_add_one_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-bitatnat-two-mul-add-one-succ--f49b8f14e409c0de968185f3.md) | 122 | `result-track:f49b8f14e409c0de968185f3a6c63789ff05a30e3d551bc41602de2178bd660e` |
| 18 | `theorem` | [Hypercube.bitAtNat_two_mul_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-bitatnat-two-mul-zero--82584365e146fc407c015c5a.md) | 128 | `result-track:82584365e146fc407c015c5ad509df2f3a32269ddf769819a7282c5b19999a3b` |
| 19 | `theorem` | [Hypercube.bitAtNat_two_mul_add_one_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-bitatnat-two-mul-add-one-zero--d9d71bd6fa6153cb2a8f810a.md) | 132 | `result-track:d9d71bd6fa6153cb2a8f810abf9951a0687d83458582b216ed0990c65a704179` |
| 20 | `theorem` | [Hypercube.pointOfIndex_two_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-pointofindex-two-mul--d2d480d7dfe46b53f06f2a32.md) | 136 | `result-track:d2d480d7dfe46b53f06f2a32019765a55128688e0a91b2c9cfd20b3e5e4e94f7` |
| 21 | `theorem` | [Hypercube.pointOfIndex_two_mul_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-pointofindex-two-mul-add-one--2247791a576319e30fca7a06.md) | 151 | `result-track:2247791a576319e30fca7a06b7472e0d247f50f8dec89d385d931ad416b6f700` |
| 22 | `theorem` | [Hypercube.range_two_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-range-two-mul--473004357c0851c8db3a5282.md) | 166 | `result-track:473004357c0851c8db3a5282dc7332cd44f1078c03d66069f0e300e471aa5bda` |
| 23 | `theorem` | [Hypercube.vertices_eq_range_map_pointOfIndex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-vertices-eq-range-map-pointofindex--34b51cbe33c47525298390ff.md) | 180 | `result-track:34b51cbe33c47525298390ff739639dcd50d8099e4da4b7666f9c1a6042dedf3` |
| 24 | `def` | [Hypercube.coordinates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-coordinates--49a2b29a81b4e4d9406ed7e1.md) | 199 | `declaration-track:49a2b29a81b4e4d9406ed7e110359493476cf8b70d7a4d411845e1a4d305c7f7` |
| 25 | `def` | [Hypercube.spinOfBool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-spinofbool--8ae01df1e3f4eda2ca070450.md) | 203 | `declaration-track:8ae01df1e3f4eda2ca0704501628799c540d4a8c006870665e9e1286de25fb2d` |
| 26 | `def` | [Hypercube.intOfBool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-intofbool--8bc714a3eb665f39b78ab52e.md) | 208 | `declaration-track:8bc714a3eb665f39b78ab52e66e1c890990fa9a63946a07cecca4014f55cf0aa` |
| 27 | `def` | [Hypercube.spinCoordinates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-spincoordinates--13e3ac0a420d0921b7fcac18.md) | 213 | `declaration-track:13e3ac0a420d0921b7fcac18700932e299989a4d8f9d70a898e117db7f95d310` |
| 28 | `def` | [Hypercube.zeroOneCoordinates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-zeroonecoordinates--3105f2287d4de95b6b343cc2.md) | 217 | `declaration-track:3105f2287d4de95b6b343cc292a0e0626b4358f660c1a877a95c29d2eef332f5` |
| 29 | `def` | [Hypercube.flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-flip--1ef51f3d1c9d769a1a2ead1b.md) | 221 | `declaration-track:1ef51f3d1c9d769a1a2ead1b66ffbda8f6373d4f131f46f3e288a03fa0ecccdc` |
| 30 | `theorem` | [Hypercube.flip_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-flip-same--57a5d3752aa0c7824dbbe416.md) | 229 | `result-track:57a5d3752aa0c7824dbbe41672ed40a007a000599fc01957add0e5008815a9e9` |
| 31 | `theorem` | [Hypercube.flip_other](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-flip-other--00cee03e637e74fbff0e7171.md) | 233 | `result-track:00cee03e637e74fbff0e71715fa9cccdc3681fbe09d19a682bff9e03d0ad3030` |
| 32 | `theorem` | [Hypercube.eq_of_dropLast_eq_last_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-eq-of-droplast-eq-last-eq--b237770d3e058169c49468cf.md) | 238 | `result-track:b237770d3e058169c49468cfcd707a0aee501fd578685ada8505cc4479a2ce52` |
| 33 | `def` | [Hypercube.pointEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-pointeq--3f83960024ff97e0c6ef361a.md) | 255 | `declaration-track:3f83960024ff97e0c6ef361a3bbdc3107c5843fa09efecad40e6977747cca53f` |
| 34 | `def` | [Hypercube.hammingDistance](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-hammingdistance--d36e5d7dd3bd6dd5fd0edc9d.md) | 261 | `declaration-track:d36e5d7dd3bd6dd5fd0edc9df7705b6f42fe4a9ce2f8efbf76de6cb48aa3dabe` |
| 35 | `def` | [Hypercube.adjacencyMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-adjacencymatrix--ed0c7d0b5d3a11f05f1fd6c5.md) | 268 | `declaration-track:ed0c7d0b5d3a11f05f1fd6c5f114105d68a99444edd8eec595b81961a2bed5fc` |
| 36 | `def` | [Hypercube.boundaryEdgeMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-boundaryedgematrix--5236f7a90e74305b5ed88785.md) | 281 | `declaration-track:5236f7a90e74305b5ed887857f947984d7af4f70be9cc7757e76fe820373542d` |
| 37 | `def` | [Hypercube.edgeChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-edgechange--d802489326bdb2b5cb096e4d.md) | 290 | `declaration-track:d802489326bdb2b5cb096e4d925d5c3cc20ff8835be92570fd6961acaf3b416b` |
| 38 | `def` | [Hypercube.influenceCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-influencecount--d6ac40311837058c16fb0a25.md) | 301 | `declaration-track:d6ac40311837058c16fb0a25715b7af0454176b4a2aa332dfa7005929b808e03` |
| 39 | `def` | [Hypercube.influenceVector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-influencevector--1bba8c8c900fc921f9de21c1.md) | 308 | `declaration-track:1bba8c8c900fc921f9de21c19a4ede430f2a373afae6e38020edaa3b8dfbfc3d` |
| 40 | `def` | [Hypercube.directedBoundaryCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-directedboundarycount--ea050adcf22934f2d2ca5ff4.md) | 313 | `declaration-track:ea050adcf22934f2d2ca5ff4faeec5025597aacbcd166bd8fab6840c167912c9` |
| 41 | `def` | [Hypercube.grayBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-graybit--6c3b869c6e313214e77a16f5.md) | 320 | `declaration-track:6c3b869c6e313214e77a16f59c994eb016f289af1f56c7c79f9197935eb53528` |
| 42 | `def` | [Hypercube.grayPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-graypoint--553a8dd7aa676e69dcaf49c0.md) | 330 | `declaration-track:553a8dd7aa676e69dcaf49c0b35428e124c8210bbaf669868ef6f1eca3f64efd` |
| 43 | `def` | [Hypercube.grayAxis](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a.lean/declarations/hypercube-grayaxis--014eb1c7957379c7b43e7923.md) | 334 | `declaration-track:014eb1c7957379c7b43e7923779d10bb53114fea1e8c53d0cc9078f167dc37f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
