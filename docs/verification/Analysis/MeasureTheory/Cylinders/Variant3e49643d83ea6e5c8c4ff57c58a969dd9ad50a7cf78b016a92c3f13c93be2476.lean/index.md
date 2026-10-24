# Verification target: GRWTSK.Analysis.MeasureTheory.Cylinders.Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3db4768a242244f020714b3f090254da00c898f8",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3db4768a242244f020714b3f090254da00c898f8`.

Source path: `GRWTSK/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.PiSystem` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/squarecylinders--16f9bdae07a25ae161c4a4cc.md) | 63 | `declaration-track:16f9bdae07a25ae161c4a4ccfc04c089d627112616f4f17a969082237678ee21` |
| 2 | `theorem` | [squareCylinders_eq_iUnion_image](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/squarecylinders-eq-iunion-image--71ca72e3158fd40cd9488447.md) | 66 | `result-track:71ca72e3158fd40cd94884471f3f8117615b1e7bf4b9f2ee4db702f82524e4d0` |
| 3 | `theorem` | [isPiSystem_squareCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/ispisystem-squarecylinders--63a53984e47a609e051d3052.md) | 72 | `result-track:63a53984e47a609e051d305260d48b2e1c79dc3c77da26bf87d2d55e9c22db64` |
| 4 | `theorem` | [comap_eval_le_generateFrom_squareCylinders_singleton](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/comap-eval-le-generatefrom-squarecylinders-singleton--c6ed246371ea6e16445690ef.md) | 116 | `result-track:c6ed246371ea6e16445690efb5a6f3ca2b4b9f608762242948aaf55a2015eeba` |
| 5 | `theorem` | [generateFrom_squareCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/generatefrom-squarecylinders--352ecfe3dafff02ac6d5f58f.md) | 138 | `result-track:352ecfe3dafff02ac6d5f58f576e31e6608116c5735a411e77e689edb59f2e40` |
| 6 | `def` | [cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/cylinder--6d9279399c0083c59259bc88.md) | 161 | `declaration-track:6d9279399c0083c59259bc88ff41eb4580e4cee3d0aa527633134206463452de` |
| 7 | `theorem` | [mem_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/mem-cylinder--6863e79822cfc9f457b72537.md) | 165 | `result-track:6863e79822cfc9f457b72537f5a387d905800ca43d75c17848547b951f652e4f` |
| 8 | `theorem` | [cylinder_empty](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/cylinder-empty--b9614211931fe8dbc753b9f8.md) | 170 | `result-track:b9614211931fe8dbc753b9f84a22bf58af283cf27fb88e4e1d7a33539ce74e57` |
| 9 | `theorem` | [cylinder_univ](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/cylinder-univ--b92eb7d12c759c15817f8d86.md) | 174 | `result-track:b92eb7d12c759c15817f8d86d8813b4ffe9f94121332851e4da9b232d231d8ce` |
| 10 | `theorem` | [cylinder_eq_empty_iff](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/cylinder-eq-empty-iff--08bda0d6bac8299c09b3f60a.md) | 178 | `result-track:08bda0d6bac8299c09b3f60af421564307d5113e0ecf7239ce2f190344260e48` |
| 11 | `theorem` | [inter_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/inter-cylinder--03d777557a88d71710e898e1.md) | 194 | `result-track:03d777557a88d71710e898e11a1fb006bc5a5e044b8db1e177a04555e3fd8f3f` |
| 12 | `theorem` | [inter_cylinder_same](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/inter-cylinder-same--53d47130cfd9895b3f65f536.md) | 202 | `result-track:53d47130cfd9895b3f65f536bc5ae5889cea2c8729bd687f35d638c323839681` |
| 13 | `theorem` | [union_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/union-cylinder--269da56e49f609820159ff3d.md) | 206 | `result-track:269da56e49f609820159ff3de8bdda6904a61f554b70993041215e1f6cd35676` |
| 14 | `theorem` | [union_cylinder_same](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/union-cylinder-same--1a0e02b98b0ee61fb00d641d.md) | 214 | `result-track:1a0e02b98b0ee61fb00d641d59e1d05de818ff694712a2c85a9461d180f93fc1` |
| 15 | `theorem` | [compl_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/compl-cylinder--39ffd82adff2978bb541357d.md) | 218 | `result-track:39ffd82adff2978bb541357d6695484a50474b724a65e70b09b1d15c688be48a` |
| 16 | `theorem` | [diff_cylinder_same](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/diff-cylinder-same--d27f0cc7ae3d61e6e0449014.md) | 222 | `result-track:d27f0cc7ae3d61e6e04490141b9079305b1bfe2dea13c1b3b3c3f112e528fd7e` |
| 17 | `theorem` | [eq_of_cylinder_eq_of_subset](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/eq-of-cylinder-eq-of-subset--e9607e7c88765ed44be36393.md) | 226 | `result-track:e9607e7c88765ed44be363934e9598cfc4b093d09c00270693ae5bdd918da515` |
| 18 | `theorem` | [cylinder_eq_cylinder_union](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/cylinder-eq-cylinder-union--80608a575ddaf2e1053df49a.md) | 239 | `result-track:80608a575ddaf2e1053df49aa87ffb77fb392c7ef6128fe189ec8466e116853c` |
| 19 | `theorem` | [disjoint_cylinder_iff](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/disjoint-cylinder-iff--e81746715c63aa2536bb957a.md) | 245 | `result-track:e81746715c63aa2536bb957a0166ef2b57c2d958656533795a06e1731fa302f8` |
| 20 | `theorem` | [IsClosed.cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/isclosed-cylinder--9c0c2a4c475ef853e74c7f4b.md) | 253 | `result-track:9c0c2a4c475ef853e74c7f4b2852e7177dec5185c1b181c0486f43adc3b7683c` |
| 21 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.SquareCylinders.Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.MeasurableSet.cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/root-grwtsk-analysis-measuretheory-squarecylinders-variant31cbf5add5c569--be8b5a7f06173c900a444a03.md) | 257 | `result-track:be8b5a7f06173c900a444a03ba7cbe1614514d84fb9be75eaca8554196ba34eb` |
| 22 | `theorem` | [dependsOn_cylinder_indicator_const](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/dependson-cylinder-indicator-const--3abbf7f0abad40ea018ddbc6.md) | 263 | `result-track:3abbf7f0abad40ea018ddbc630be9b4951dfa692a20f6cc2c4d7799bcbdeb893` |
| 23 | `def` | [measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurablecylinders--211aee5deea930b3ff5831f3.md) | 275 | `declaration-track:211aee5deea930b3ff5831f36c08db0c1a199d3f6d8676df2671fb07855af150` |
| 24 | `theorem` | [empty_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/empty-mem-measurablecylinders--c2d635c8db85b056727b4e90.md) | 278 | `result-track:c2d635c8db85b056727b4e90b44a292551ccf5f86f9c81b8e115b34cd0d0644e` |
| 25 | `theorem` | [mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/mem-measurablecylinders--54cf22fb4ee4ab7289768296.md) | 286 | `result-track:54cf22fb4ee4ab7289768296a2fc5ff4b8e047552aaaa8a6aa967e7f74c6ea98` |
| 26 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.SquareCylinders.Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.MeasurableSet.of_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/root-grwtsk-analysis-measuretheory-squarecylinders-variant31cbf5add5c569--ceb62a9ae55beaf9cf1df7cb.md) | 291 | `result-track:ceb62a9ae55beaf9cf1df7cbf3e6450f69b1fded945aecd72a368281e6091fe0` |
| 27 | `def` | [measurableCylinders.finset](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurablecylinders-finset--44edf6d5f46c73451d6ee8b9.md) | 297 | `declaration-track:44edf6d5f46c73451d6ee8b9647655d07b20ecbb3bbd471709dca4f67f8f4fa7` |
| 28 | `def` | [measurableCylinders.set](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurablecylinders-set--556eb322a7644f7ab0934b72.md) | 301 | `declaration-track:556eb322a7644f7ab0934b724e8dba339ccdc5d80892e7e3ffd1347861a470ed` |
| 29 | `theorem` | [measurableCylinders.measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurablecylinders-measurableset--278b6ba5316ee4ec0c863828.md) | 305 | `result-track:278b6ba5316ee4ec0c8638285872cd4c9756224d3b577c7700414d459f99e7f2` |
| 30 | `theorem` | [measurableCylinders.eq_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurablecylinders-eq-cylinder--4ee49dc22f36f7bd8f073aa0.md) | 309 | `result-track:4ee49dc22f36f7bd8f073aa09cfac410858cf1242c816a96e856f896036a39fa` |
| 31 | `theorem` | [cylinder_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/cylinder-mem-measurablecylinders--c8310dbe13334430702686c7.md) | 313 | `result-track:c8310dbe13334430702686c76aa1dff9a9a9b8867da309ba96871b283876913b` |
| 32 | `theorem` | [inter_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/inter-mem-measurablecylinders--2f986bb6c6125b36444b060c.md) | 318 | `result-track:2f986bb6c6125b36444b060c70cab106e051e4cf1d2c22f685aa2d1749458751` |
| 33 | `theorem` | [isPiSystem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/ispisystem-measurablecylinders--f9d54bfaf5f8021ecd3d07f4.md) | 333 | `result-track:f9d54bfaf5f8021ecd3d07f4fd3bed0b9b2e18d9ff96eadf1b0d61a3c2da84a3` |
| 34 | `theorem` | [compl_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/compl-mem-measurablecylinders--722a91b309f1ac7c0d1e1f97.md) | 336 | `result-track:722a91b309f1ac7c0d1e1f976a8162193ccc66c8d1cd2c494cc6d6c4388a324d` |
| 35 | `theorem` | [univ_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/univ-mem-measurablecylinders--59bfe16291f6973e99168e26.md) | 343 | `result-track:59bfe16291f6973e99168e263a7d83dc808bb6be13fab7e97d0c2eae3f148330` |
| 36 | `theorem` | [union_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/union-mem-measurablecylinders--b3db37135ef6da1254f1ded0.md) | 347 | `result-track:b3db37135ef6da1254f1ded09ca69654ac52a095263208cfa81d99f5dd353b71` |
| 37 | `theorem` | [diff_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/diff-mem-measurablecylinders--18f6c6d6825f4dd281eb8a3d.md) | 354 | `result-track:18f6c6d6825f4dd281eb8a3dccc2f521595a9fc4054f0e4c8f26122ab87f236f` |
| 38 | `theorem` | [generateFrom_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/generatefrom-measurablecylinders--49c281126d454585bc5cd4fb.md) | 361 | `result-track:49c281126d454585bc5cd4fb1d646c04200f00916007d278d73009e8fec4bfba` |
| 39 | `theorem` | [measurableCylinders_nat](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurablecylinders-nat--3bb5c9f4fa86025e9fae8e4f.md) | 379 | `result-track:3bb5c9f4fa86025e9fae8e4f38206fd401befa7d7ce37ba2fb21dbe6a91bcc05` |
| 40 | `def` | [cylinderEvents](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/cylinderevents--69893b9250551ff6772063b4.md) | 402 | `declaration-track:69893b9250551ff6772063b4cda4c5ae9bfc36eb149c9b56ae9e570b67dfc915` |
| 41 | `lemma` | [cylinderEvents_univ](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/cylinderevents-univ--679665b0374ecabe1beb5e0d.md) | 404 | `result-track:679665b0374ecabe1beb5e0d47524789791f9af0e463f3ec4faddba6434c4adf` |
| 42 | `lemma` | [cylinderEvents_mono](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/cylinderevents-mono--fc7b824d869588eb74505516.md) | 408 | `result-track:fc7b824d869588eb74505516ff6b89039ba672adc1ba3846b77e54e4e6460ff3` |
| 43 | `lemma` | [cylinderEvents_le_pi](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/cylinderevents-le-pi--07a4e9f26ae7f3607b8af229.md) | 411 | `result-track:07a4e9f26ae7f3607b8af2295df77e428b11c2d6c17ff25faa372da0e52d8c47` |
| 44 | `lemma` | [measurable_cylinderEvents_iff](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurable-cylinderevents-iff--8d58be979050043acb0a358d.md) | 414 | `result-track:8d58be979050043acb0a358dcbdf1fb6fcd3a20e71949f95eb717f7bd1171dfd` |
| 45 | `lemma` | [measurable_cylinderEvent_apply](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurable-cylinderevent-apply--6156c72372617ce427e22aee.md) | 420 | `result-track:6156c72372617ce427e22aee11c6f5ba0ddf71f404a59225213285716cf18d2f` |
| 46 | `lemma` | [Measurable.eval_cylinderEvents](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurable-eval-cylinderevents--5295d402354fdbc566a3741e.md) | 425 | `result-track:5295d402354fdbc566a3741e6ff5fea5f2f86e4edfe993578bfe371b1cb5f67e` |
| 47 | `lemma` | [measurable_cylinderEvents_lambda](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurable-cylinderevents-lambda--29ed95c54ad0d779858155de.md) | 430 | `result-track:29ed95c54ad0d779858155deecdb979683effb56f7c32a8725424a36e12e8208` |
| 48 | `lemma` | [measurable_update_cylinderEvents'](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurable-update-cylinderevents--46467a6c44cffb35c5686ced.md) | 435 | `result-track:46467a6c44cffb35c5686ced43e085ef8e2dac968eed4a80d04eed98eec1b367` |
| 49 | `lemma` | [measurable_uniqueElim_cylinderEvents](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurable-uniqueelim-cylinderevents--fde847515543ccccce941691.md) | 447 | `result-track:fde847515543ccccce941691cb9ccaf2aaa9352b349f04184ea87375921d2190` |
| 50 | `lemma` | [measurable_update_cylinderEvents](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurable-update-cylinderevents--54c6263ddc653f5185142ae5.md) | 455 | `result-track:54c6263ddc653f5185142ae53e5519e6b74e2a52255de39b60c0fadf091353df` |
| 51 | `lemma` | [measurable_update_cylinderEvents_left](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurable-update-cylinderevents-left--b5d7c067b6a23b1fd842d44d.md) | 459 | `result-track:b5d7c067b6a23b1fd842d44da79406022c6ee9f964e610e6fbed52488dcecaaa` |
| 52 | `lemma` | [measurable_restrict_cylinderEvents](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/declarations/measurable-restrict-cylinderevents--bdfce187ea9ee1bcb0d3a3d6.md) | 463 | `result-track:bdfce187ea9ee1bcb0d3a3d6602615c7afed5e251b7f6d4f54f6663373a19eb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
