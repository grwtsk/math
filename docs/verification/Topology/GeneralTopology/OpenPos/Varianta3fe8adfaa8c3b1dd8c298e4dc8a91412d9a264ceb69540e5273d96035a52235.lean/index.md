# Verification target: GRWTSK.Topology.GeneralTopology.OpenPos.Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1d27d3f33d7ae9edb3221dcefed453cf6d6da35",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1d27d3f33d7ae9edb3221dcefed453cf6d6da35`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.NoAtoms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsOpenPosMeasure](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/isopenposmeasure--e7fe911f54b1cea8065e35d3.md) | 43 | `declaration-track:e7fe911f54b1cea8065e35d3a4a0e571048fb7fb748c68855b3ba48ddf64ce84` |
| 2 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.IsOpen.measure_ne_zero](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--0c6a095f42f041b65ebe8ae3.md) | 48 | `result-track:0c6a095f42f041b65ebe8ae3c148e237b3a8f9ab2feecaa00ac21e8c451d74ec` |
| 3 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.IsOpen.measure_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--763cb842d5b8777072178841.md) | 51 | `result-track:763cb842d5b877707217884100a58dd62fd5e60207be1eef16998e6474681542` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/instance--6173777720df2a949704d1b3.md) | 54 | `declaration-track:6173777720df2a949704d1b3df102a68f1cfb405aed183163127890108ac4f62` |
| 5 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.IsOpen.measure_pos_iff](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--b56737bcb304baa4143765e9.md) | 57 | `result-track:b56737bcb304baa4143765e9480d4b6fc0472dc0a0d11b026f722a4c41002380` |
| 6 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.IsOpen.measure_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--25b363a9962421a31fe99b6a.md) | 60 | `result-track:25b363a9962421a31fe99b6ad9603631ef9d3d19f51b6b25b31502a1c018f045` |
| 7 | `theorem` | [measure_pos_of_nonempty_interior](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/measure-pos-of-nonempty-interior--53ee11f74ddc095689374d04.md) | 64 | `result-track:53ee11f74ddc095689374d04d2f879c3af5a9caeeaaf832479b3ffc6379d8ecc` |
| 8 | `theorem` | [measure_pos_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/measure-pos-of-mem-nhds--7e60270e705a26432664c111.md) | 67 | `result-track:7e60270e705a26432664c1110ac90379e15c4ab7f63f09eba081a8e3aed438d0` |
| 9 | `theorem` | [isOpenPosMeasure_smul](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/isopenposmeasure-smul--897dbb0728f47dd86aeb1f57.md) | 70 | `result-track:897dbb0728f47dd86aeb1f57a2c858473a8fc75c82fff0dfbbac479af099d129` |
| 10 | `theorem` | [AbsolutelyContinuous.isOpenPosMeasure](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/absolutelycontinuous-isopenposmeasure--70ea1e96bb0991cd0fab503e.md) | 75 | `result-track:70ea1e96bb0991cd0fab503ecc61210c4184d771edc705c205c108d303bdc7db` |
| 11 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.LE.le.isOpenPosMeasure](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--018fa6472c0ff54f18f4f777.md) | 78 | `result-track:018fa6472c0ff54f18f4f77718b19bcbfad33b5a4c36c15630e47a48271fd1af` |
| 12 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.IsOpen.measure_zero_iff_eq_empty](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--5ff9d408df3a0bc0797c3b4a.md) | 81 | `result-track:5ff9d408df3a0bc0797c3b4a621fd2b91489248ea92f321c355a94eb31b84f17` |
| 13 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.IsOpen.ae_eq_empty_iff_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--2e3ff9025d279645166e2cc2.md) | 85 | `result-track:2e3ff9025d279645166e2cc2e125aa2156b8ec94196acd08fb6a346fad617495` |
| 14 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.IsOpen.eq_empty_of_measure_zero](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--7880b2a6675c8c66fb0ef8a5.md) | 90 | `result-track:7880b2a6675c8c66fb0ef8a52d238f9fc8dd680986d68b51dd2656f350605579` |
| 15 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.IsClosed.ae_eq_univ_iff_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--ce341878ae43c56c60ffdad4.md) | 93 | `result-track:ce341878ae43c56c60ffdad41a480aa59c8ddb4f3945db8f49bb9b6d729ed0ce` |
| 16 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.IsClosed.measure_eq_univ_iff_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--8f3396e03c72abe1ea753fa3.md) | 98 | `result-track:8f3396e03c72abe1ea753fa3094dd429180a082e53a6f8cf3b0ee268954d1e1a` |
| 17 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.IsClosed.measure_eq_one_iff_eq_univ](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--420721f644cb05cc6a0815ac.md) | 103 | `result-track:420721f644cb05cc6a0815ac8737f0d013fab57ef0703b7831a3728df62e4593` |
| 18 | `theorem` | [interior_eq_empty_of_null](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/interior-eq-empty-of-null--6891b911b4ea0f7dfcad3aa6.md) | 109 | `result-track:6891b911b4ea0f7dfcad3aa695139462ce49f4d6b2c4a9632442e268bf6c7d4a` |
| 19 | `theorem` | [dense_of_ae](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/dense-of-ae--43a9ae10c4d54d90fd3adaff.md) | 113 | `result-track:43a9ae10c4d54d90fd3adaff4e8b1b7fe455227008a64e7228ab8a78e57a7210` |
| 20 | `theorem` | [eqOn_open_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/eqon-open-of-ae-eq--c877df2e2fbdda6e56260d2a.md) | 119 | `result-track:c877df2e2fbdda6e56260d2a5072762fdd3c80f8f6a00e7c2fce0e2b3f6d7188` |
| 21 | `theorem` | [eq_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/eq-of-ae-eq--029cf765e6d88aea687c9451.md) | 133 | `result-track:029cf765e6d88aea687c9451f5cf26f63bbc9310e0f21c47ee8768485b23de98` |
| 22 | `theorem` | [eqOn_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/eqon-of-ae-eq--4e6814be51f52d334eb1bec3.md) | 137 | `result-track:4e6814be51f52d334eb1bec3d18b703b9b528bf9bd63f03796c680f2751f24df` |
| 23 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.Continuous.ae_eq_iff_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--7ecc8e46246d5592831469e1.md) | 145 | `result-track:7ecc8e46246d5592831469e1f61647937fb2d17d2134909e2368426454793e8f` |
| 24 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.Continuous.isOpenPosMeasure_map](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--1f2a52a954d5c1606c84a695.md) | 149 | `result-track:1f2a52a954d5c1606c84a6953d243b8694001bda5fe54ba182325b1d3dda9643` |
| 25 | `theorem` | [measure_Ioi_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/measure-ioi-pos--733bb2f4b07cbdb22050439b.md) | 164 | `result-track:733bb2f4b07cbdb22050439b1efd8edd17962b81205642ba990b6e284f6a4449` |
| 26 | `theorem` | [measure_Iio_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/measure-iio-pos--8942ee7c45c852d7f93191a1.md) | 167 | `result-track:8942ee7c45c852d7f93191a1b220707cf144cbf0fae5793c5522cf903877bd5b` |
| 27 | `theorem` | [measure_Ioo_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/measure-ioo-pos--65b14922194b8cc090e22062.md) | 170 | `result-track:65b14922194b8cc090e22062a4541a91bc7d320bfcd6466699622787eed2f62d` |
| 28 | `theorem` | [measure_Ioo_eq_zero](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/measure-ioo-eq-zero--6f778d26b3e7ff4539e616dc.md) | 173 | `result-track:6f778d26b3e7ff4539e616dcf543f3ebfa0143d29202f1c7ebd0060500aa1e0a` |
| 29 | `theorem` | [eqOn_Ioo_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/eqon-ioo-of-ae-eq--8428e8515761f4a7ba2faa40.md) | 176 | `result-track:8428e8515761f4a7ba2faa40c247ea5f3ca35eb194ae9244a2eb6e474a81c1a9` |
| 30 | `theorem` | [eqOn_Ioc_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/eqon-ioc-of-ae-eq--e1ae13f263aa73e1fec1d6ee.md) | 180 | `result-track:e1ae13f263aa73e1fec1d6eece230e9631c00225b39f2a6f58d6902aa7fe6819` |
| 31 | `theorem` | [eqOn_Ico_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/eqon-ico-of-ae-eq--3b69de0afbd1cad8ba6987f4.md) | 185 | `result-track:3b69de0afbd1cad8ba6987f4573d0ec37e3054791aeded28c085980c505a0d82` |
| 32 | `theorem` | [eqOn_Icc_of_ae_eq](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/eqon-icc-of-ae-eq--0d5ff763c999dc9765f6dd5a.md) | 190 | `result-track:0d5ff763c999dc9765f6dd5a835828398c4a884cda1c5b084922194b0d5fc03b` |
| 33 | `theorem` | [measure_ball_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/measure-ball-pos--1bdd3b32f51a24b562c3df6f.md) | 208 | `result-track:1bdd3b32f51a24b562c3df6f94f140db6ded9baa8bac6603325742dc63418c85` |
| 34 | `theorem` | [measure_closedBall_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/measure-closedball-pos--63298101bb560c8ad1ede6c3.md) | 212 | `result-track:63298101bb560c8ad1ede6c3e2642d4c4fe891f8ebb9a27fb92cf930e5696f3f` |
| 35 | `lemma` | [measure_closedBall_pos_iff](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/measure-closedball-pos-iff--0b5078843d0566f76adbff85.md) | 215 | `result-track:0b5078843d0566f76adbff85fb2ad5a25ddbc595e684b5001ddf0e04a726871f` |
| 36 | `theorem` | [measure_ball_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/measure-ball-pos--c949a44edd6505ef0371e874.md) | 229 | `result-track:c949a44edd6505ef0371e8748d3322a0cdf107e764794d5865f1906423ffd660` |
| 37 | `theorem` | [measure_closedBall_pos](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/measure-closedball-pos--5a25344d36f69a36a5181017.md) | 232 | `result-track:5a25344d36f69a36a5181017829fc979baf45b02b2269e0db7b66bbeb2ca0b2e` |
| 38 | `lemma` | [IsNowhereDense.of_isClosed_null](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/isnowheredense-of-isclosed-null--e4f64692f98397a3de0fa089.md) | 257 | `result-track:e4f64692f98397a3de0fa089b760651286501b402a632073e59a57f8cb5913a4` |
| 39 | `lemma` | [IsMeagre.of_isSigmaCompact_null](../../../../../mathematics/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/declarations/ismeagre-of-issigmacompact-null--bd141176dd755ad4f4bf11f8.md) | 262 | `result-track:bd141176dd755ad4f4bf11f89c1063c5c134081228534d254f6a15e45b0824c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
