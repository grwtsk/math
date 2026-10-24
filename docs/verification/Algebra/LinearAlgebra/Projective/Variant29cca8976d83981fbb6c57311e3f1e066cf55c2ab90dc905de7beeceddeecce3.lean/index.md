# Verification target: GRWTSK.Algebra.LinearAlgebra.Projective.Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6210e72122ac0dc223666ef218461098ba595469",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6210e72122ac0dc223666ef218461098ba595469`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean.json)

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
| 1 | `def` | [ProjGenLinGroup](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/projgenlingroup--d61a43fb08cccbfbd7433086.md) | 41 | `declaration-track:d61a43fb08cccbfbd7433086b54749bd90f184ac4f9cd5232f405184542aee39` |
| 2 | `def` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/mk--9860dbd59b2e46a8561beff8.md) | 55 | `declaration-track:9860dbd59b2e46a8561beff81a6148441670ee5a8fac47695442f7ff1b24b782` |
| 3 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/mk-surjective--43fbc6d012ba3b9b4fc9e5cc.md) | 57 | `result-track:43fbc6d012ba3b9b4fc9e5cc346ae531d52909f8efe3441085f28a852ea45096` |
| 4 | `lemma` | [mk_eq_mk_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/mk-eq-mk-iff--e61d071e1a1b09bec82f22a0.md) | 60 | `result-track:e61d071e1a1b09bec82f22a008290a5b6c149936433ac6a26ab15adeb081cbf6` |
| 5 | `lemma` | [mk_eq_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/mk-eq-mk-iff--172e9038e8d5c7989d26737e.md) | 64 | `result-track:172e9038e8d5c7989d26737e80dbc4a6fc02f727808b3bb930257e47c5d1a1a2` |
| 6 | `theorem` | [ker_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/ker-mk--6b74a2965ca2b79137c0240d.md) | 69 | `result-track:6b74a2965ca2b79137c0240dfadb08a8abb14fef5749779adfcd53dffabd0f67` |
| 7 | `theorem` | [mk_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/mk-eq-one--41931c3dd03a2b4f54149100.md) | 72 | `result-track:41931c3dd03a2b4f541491003bb85f9fb7fd55d25ce34bdb434ce84b41efc9d7` |
| 8 | `lemma` | [mk_one](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/mk-one--615c17714d0e4e90f8d651df.md) | 76 | `result-track:615c17714d0e4e90f8d651df7b624b968e9420e771e7a18a0a02f136017b53f1` |
| 9 | `theorem` | [mk_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/mk-scalar--096c4ccef545175d33e44bf9.md) | 79 | `result-track:096c4ccef545175d33e44bf925d83bc50721408720bab264db9c57c61a74b828` |
| 10 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/induction-on--0d53864dfb36ddfc9b3a6359.md) | 84 | `result-track:0d53864dfb36ddfc9b3a6359ed883117b462bf24713b45d428f90687a615f1ef` |
| 11 | `abbrev` | [toPGL](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/topgl--f4e95bd6ecfa6f968c0cc216.md) | 100 | `declaration-track:f4e95bd6ecfa6f968c0cc2165c43bffd3ce98ae5272b20c650b97ff9952d1d99` |
| 12 | `lemma` | [toPGL_ker](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/topgl-ker--1a5684dce2acc3fa4e7638a2.md) | 102 | `result-track:1a5684dce2acc3fa4e7638a2b2bec91ed158dc3df3cee3d3d703e0e9ba3979b6` |
| 13 | `def` | [toPGL](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/topgl--3e5f46466a1e7f54e56d008d.md) | 113 | `declaration-track:3e5f46466a1e7f54e56d008d28a1c3715c78d66fcc84e7181023093db74addbe` |
| 14 | `lemma` | [toPGL_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/topgl-mk--ee21e788daed4028b53544a3.md) | 117 | `result-track:ee21e788daed4028b53544a30fbae1aa49848dc5c980d9c40a309ef0f6277373` |
| 15 | `lemma` | [toPGL_injective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/topgl-injective--b14ff0d63061b089c60028f8.md) | 120 | `result-track:b14ff0d63061b089c60028f883f3a15d95fe31c53d275f80190222402ce41b60` |
| 16 | `lemma` | [toPGL_surj_of_roots](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/topgl-surj-of-roots--75ce35a7a027bb8a1476b012.md) | 125 | `result-track:75ce35a7a027bb8a1476b01256946f691c3ec457c6a127c575a8164ea34a2e85` |
| 17 | `lemma` | [toPGL_surj_iff](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/topgl-surj-iff--35002913db1786646a4b32c2.md) | 140 | `result-track:35002913db1786646a4b32c2e0f40b19f4f59508b629249c69f7bac2dbbe27af` |
| 18 | `def` | [isoPSLOfAlgClosedOfNonempty](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/isopslofalgclosedofnonempty--feaa06925c682753f915fdb7.md) | 154 | `declaration-track:feaa06925c682753f915fdb7993c2236ac1569ae1f8e9593d9d5cc86066eb8f9` |
| 19 | `def` | [isoPSLOfAlgClosed](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/isopslofalgclosed--5926f12995c6fc80a4cc3ab9.md) | 167 | `declaration-track:5926f12995c6fc80a4cc3ab99f86262747f9cdf38748888ea1de75e0f69457a4` |
| 20 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/lift--40b86dd0b5eb88c7925b4761.md) | 186 | `declaration-track:40b86dd0b5eb88c7925b4761e63b4b35ef47274829feea845ee87aa9a81f995c` |
| 21 | `theorem` | [lift_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/lift-mk--fd8cab39e0e480a715ec9baf.md) | 192 | `result-track:fd8cab39e0e480a715ec9bafdc5912b9e4d8d2c2cdb7f1f52249de6fec07ad7a` |
| 22 | `theorem` | [lift_comp_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/lift-comp-mk--a41319957be9a2eccdc30a6c.md) | 196 | `result-track:a41319957be9a2eccdc30a6ce4214a9a68217eb43529115708cd7b5d602f7795` |
| 23 | `def` | [mulActionOfGL](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/mulactionofgl--8637dc9f84a58c8978bdb395.md) | 202 | `declaration-track:8637dc9f84a58c8978bdb395af50bd8cd9202ac43bb3b2d6d93c30d666d900d1` |
| 24 | `theorem` | [mk_smul](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/mk-smul--f7f0fb2e851145f0493303d8.md) | 210 | `result-track:f7f0fb2e851145f0493303d862c3bda5045457ec1a7ebef2bf334a2f1beb181a` |
| 25 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/map--2e8a65e281e698299b81fc4b.md) | 217 | `declaration-track:2e8a65e281e698299b81fc4b599d05846c05a52a54843df6fdb9374f72bc04de` |
| 26 | `lemma` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/map-id--4ac16966f5d26c3a36606ec4.md) | 221 | `result-track:4ac16966f5d26c3a36606ec4d8573a90dbf8f7860fd2109419dc292c27aff90c` |
| 27 | `lemma` | [map_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/map-mk--57840d7fdf21d25b7057c370.md) | 224 | `result-track:57840d7fdf21d25b7057c3705d0bca53243fe5659a426edab382ac8401fa8333` |
| 28 | `lemma` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/map-comp--6bb4896f30c9d09bc1f4912e.md) | 227 | `result-track:6bb4896f30c9d09bc1f4912e0b0300cafff2392add1d9b9064af4a21c3591f27` |
| 29 | `def` | [signDet](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/signdet--c6ead783e88fe75ff06f8f0a.md) | 235 | `declaration-track:c6ead783e88fe75ff06f8f0a1f95f9cb6bb04248c4f3e212247e27d6bed690c1` |
| 30 | `theorem` | [signDet_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/signdet-mk--b2f4f4b9bcf80e7f22c63c46.md) | 240 | `result-track:b2f4f4b9bcf80e7f22c63c460673bd814cf76f0302bde3d64e1cde1f8a9fef38` |
| 31 | `theorem` | [val_signDet_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/declarations/val-signdet-mk--a5a2e801eecbaada11d42b08.md) | 244 | `result-track:a5a2e801eecbaada11d42b08eb9bb724af32ad2f2c026f54bf6b96d641805c6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
