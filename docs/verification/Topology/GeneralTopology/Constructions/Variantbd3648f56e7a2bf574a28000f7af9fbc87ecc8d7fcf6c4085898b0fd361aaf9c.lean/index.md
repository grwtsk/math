# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89faa381448f6efecb8bd58081bb18014a8df7a7",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89faa381448f6efecb8bd58081bb18014a8df7a7`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Monad` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.ULiftable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/map--28f25a06a0c801356dc65823.md) | 48 | `declaration-track:28f25a06a0c801356dc65823f502ab7126949fd2a40d7cbe7166751d9234ca45` |
| 2 | `theorem` | [monad_map_eq_map](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/monad-map-eq-map--48ac78e15ea7f2fd56db9809.md) | 53 | `result-track:48ac78e15ea7f2fd56db980927b6a4041587efd69c474b59b6d33cb3edefce14` |
| 3 | `theorem` | [map_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/map-apply--2e881bff76a26e2b7ff34139.md) | 57 | `result-track:2e881bff76a26e2b7ff3413913725e99b9ff0c17d580f3ffaf2b0606709e9d0f` |
| 4 | `theorem` | [support_map](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/support-map--081aac846853bc211f4ec3b9.md) | 60 | `result-track:081aac846853bc211f4ec3b977c63307015ba9b7232e641c216a35accca611d8` |
| 5 | `theorem` | [mem_support_map_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/mem-support-map-iff--5fd28819d3104168f33181ec.md) | 63 | `result-track:5fd28819d3104168f33181ec7d4c282054c4fec5301fec37ffa3dd4e136d13f8` |
| 6 | `theorem` | [bind_pure_comp](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/bind-pure-comp--68872a23da58b40c208a8ce0.md) | 65 | `result-track:68872a23da58b40c208a8ce04cfe3d9f570bf96c4d3f4f8197771163f90b66e7` |
| 7 | `theorem` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/map-id--cdbd2b8fea713bc521977e4f.md) | 67 | `result-track:cdbd2b8fea713bc521977e4f99476415afe75f13dbc9be2e170e43211e706c03` |
| 8 | `theorem` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/map-comp--70cc8425c2ad399183744cf0.md) | 70 | `result-track:70cc8425c2ad399183744cf0ab4a84e9fb9542be6bc65babb9a01f15aa289a1e` |
| 9 | `theorem` | [pure_map](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/pure-map--0fcbab2115e8e99e61603f53.md) | 72 | `result-track:0fcbab2115e8e99e61603f534f7111f82d4be5f623d0168d559bd288a36b280b` |
| 10 | `theorem` | [map_bind](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/map-bind--ed42eff1c6a292b882e4b0d4.md) | 75 | `result-track:ed42eff1c6a292b882e4b0d41cf0d9dd3ccb35f59b76e35ca2b610f5c6f31c4b` |
| 11 | `theorem` | [bind_map](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/bind-map--f0e7373c3b384eec599da28e.md) | 79 | `result-track:f0e7373c3b384eec599da28e47f78eb07144984c98813866ace346e1b8ac470f` |
| 12 | `theorem` | [map_const](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/map-const--58df2e2d8f97631b836fc2bd.md) | 83 | `result-track:58df2e2d8f97631b836fc2bd5ea6c0f8703a0a5e5b1ba3c9706384a320ff39ab` |
| 13 | `theorem` | [toOuterMeasure_map_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/tooutermeasure-map-apply--5e0b1a4b5dc93fffcc683a3a.md) | 91 | `result-track:5e0b1a4b5dc93fffcc683a3a617fa7b39c760e678ba80e1233b82b95ea857418` |
| 14 | `theorem` | [toMeasure_map_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/tomeasure-map-apply--7719ddcf054294b1402c2706.md) | 98 | `result-track:7719ddcf054294b1402c270614af2ed61228ab1a9c08f3ca975743b0c9dfc0e2` |
| 15 | `lemma` | [toMeasure_map](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/tomeasure-map--2379060e3a97dc8544c73a1c.md) | 105 | `result-track:2379060e3a97dc8544c73a1c0761306b960994bc86c51529080e51d7e2b16ab4` |
| 16 | `def` | [seq](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/seq--a3fac3f272a73b56044a5f29.md) | 115 | `declaration-track:a3fac3f272a73b56044a5f29b8d448692ad2dd9ee8a399389fd4c6430c7c9bfc` |
| 17 | `theorem` | [monad_seq_eq_seq](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/monad-seq-eq-seq--60680da0fdf6c7557819bd63.md) | 120 | `result-track:60680da0fdf6c7557819bd6321fb9ce883d9d2f0436ead6b27d3fb78c3917d6a` |
| 18 | `theorem` | [seq_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/seq-apply--a642daf49ac7237eb3ae6b90.md) | 124 | `result-track:a642daf49ac7237eb3ae6b905c506a17bda982412e6ca9d8cccd8e84397fd83b` |
| 19 | `theorem` | [support_seq](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/support-seq--020d8b48148889b1d08fa3e2.md) | 130 | `result-track:020d8b48148889b1d08fa3e2ec37e88b8e71073f987ac7718f4914b76590bd32` |
| 20 | `theorem` | [mem_support_seq_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/mem-support-seq-iff--0d302da2c2fea53d1e21aa00.md) | 133 | `result-track:0d302da2c2fea53d1e21aa009cd6159d2d970661efe8ee6bc0475e065930566e` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/instance--f712ac26210cbcc784835cea.md) | 137 | `declaration-track:f712ac26210cbcc784835cea4bc6d74832b7e334ff3b03c9ef0398796784556d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/instance--85747ea88573d8a2abcdc4ce.md) | 142 | `declaration-track:85747ea88573d8a2abcdc4cebcdcfa3830fc363ec58ec031269664d8f79f74fe` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/instance--fcfad7a1d6e72c2898fae42f.md) | 157 | `declaration-track:fcfad7a1d6e72c2898fae42f0f08de12d6a5dae74fc252434052e4e15ef04d95` |
| 24 | `def` | [ofFinset](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/offinset--2f009ad6f6b771713dbe02c8.md) | 167 | `declaration-track:2f009ad6f6b771713dbe02c833c8395c40c908f2fce9e4f4917bc5648b27aacb` |
| 25 | `theorem` | [ofFinset_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/offinset-apply--535cb97499c2dd67127a4def.md) | 174 | `result-track:535cb97499c2dd67127a4def5379c665b5aed4053bc83e3502e6e9fefdbdbfe9` |
| 26 | `theorem` | [support_ofFinset](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/support-offinset--98a7f8c19fb69c49baa0e564.md) | 177 | `result-track:98a7f8c19fb69c49baa0e564ad234754f6f57973b36faf9bc1b3da5d90efa09c` |
| 27 | `theorem` | [mem_support_ofFinset_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/mem-support-offinset-iff--7f3a9a5df96d0c7c33902063.md) | 180 | `result-track:7f3a9a5df96d0c7c339020633d30e5a837baca132485f7c3bc729acbb9ded795` |
| 28 | `theorem` | [ofFinset_apply_of_notMem](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/offinset-apply-of-notmem--0f805de02cf06847d9e4d987.md) | 183 | `result-track:0f805de02cf06847d9e4d9874456e555ea27f6efd2e99f71f01bfcbc9758d865` |
| 29 | `theorem` | [toOuterMeasure_ofFinset_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/tooutermeasure-offinset-apply--f3a2a8d47fd4dd0c02cec3be.md) | 193 | `result-track:f3a2a8d47fd4dd0c02cec3be833cd3266ec6a2ca0ae4e531fd619cc8846f34c0` |
| 30 | `theorem` | [toMeasure_ofFinset_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/tomeasure-offinset-apply--5d211273293c445444375d18.md) | 198 | `result-track:5d211273293c445444375d1882472025907ab76ff673666bafa92480140f5071` |
| 31 | `def` | [ofFintype](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/offintype--96739d6d1c72c7c54ccc336c.md) | 209 | `declaration-track:96739d6d1c72c7c54ccc336ca33b4c179f2741d53275375a3f732b034be3b687` |
| 32 | `theorem` | [ofFintype_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/offintype-apply--3bfde808721cc55900031a24.md) | 215 | `result-track:3bfde808721cc55900031a243b213f44c585cc4021b782a724d7806246f6d817` |
| 33 | `theorem` | [support_ofFintype](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/support-offintype--098358c09949f569e6f7965e.md) | 218 | `result-track:098358c09949f569e6f7965ec721fd2fc16a28add95c7af1c7bc1b0551a87f34` |
| 34 | `theorem` | [mem_support_ofFintype_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/mem-support-offintype-iff--7a454ff7ef18eef1389c095d.md) | 220 | `result-track:7a454ff7ef18eef1389c095d73116281440bab081b8e46cb685d77dbcbde84db` |
| 35 | `lemma` | [map_ofFintype](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/map-offintype--54971e1f4196a3e37ef40c38.md) | 224 | `result-track:54971e1f4196a3e37ef40c38645c62b8fbc5d50ac1f946d579bbaf242ee580c9` |
| 36 | `theorem` | [toOuterMeasure_ofFintype_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/tooutermeasure-offintype-apply--06ac5b8014722c10adb2a11f.md) | 236 | `result-track:06ac5b8014722c10adb2a11f4d0cd466d3253b0cc76c8eb94cf7a2480048c772` |
| 37 | `theorem` | [toMeasure_ofFintype_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/tomeasure-offintype-apply--1d108699ebdaa24eb43bb822.md) | 240 | `result-track:1d108699ebdaa24eb43bb82202d3841d7d4dca363e22be487b0712fe80fe62df` |
| 38 | `def` | [normalize](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/normalize--ff27fa7319856f3787963c59.md) | 252 | `declaration-track:ff27fa7319856f3787963c59f201405e786d323525f12dc0d0e66de0048b7e18` |
| 39 | `theorem` | [normalize_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/normalize-apply--8e6f0ac98061579bb30ff221.md) | 259 | `result-track:8e6f0ac98061579bb30ff2210eb8dc944eefeb5200199a2b5ed0261caf92a37c` |
| 40 | `theorem` | [support_normalize](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/support-normalize--a6777d3defa76f807380c37f.md) | 262 | `result-track:a6777d3defa76f807380c37f3fd9f045b4426f053cd8f875fa657c47471ee3e0` |
| 41 | `theorem` | [mem_support_normalize_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/mem-support-normalize-iff--b7931fccdf6b190fc83de193.md) | 265 | `result-track:b7931fccdf6b190fc83de1932de1017c23003f3f48d541a777cb2cb927f0fa65` |
| 42 | `def` | [filter](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/filter--8ae32fb3cbe12e7332d65473.md) | 272 | `declaration-track:8ae32fb3cbe12e7332d654737e9dc8ba79c2e402afddb4ce66f9bf541fc58771` |
| 43 | `theorem` | [filter_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/filter-apply--8728bbb3cc31235a0b2c880a.md) | 278 | `result-track:8728bbb3cc31235a0b2c880aec663a2d676f5ef86cf3953852d5636a74489543` |
| 44 | `theorem` | [filter_apply_eq_zero_of_notMem](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/filter-apply-eq-zero-of-notmem--44b2c8620b192b6f9070ed5e.md) | 282 | `result-track:44b2c8620b192b6f9070ed5e6ef2f1ef0f2c61edbb7540e104cb95be0b9482e6` |
| 45 | `theorem` | [mem_support_filter_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/mem-support-filter-iff--366dccb717d815af051db95d.md) | 288 | `result-track:366dccb717d815af051db95d4fbbe783c6da88c6d3a0cd42a58f00c56b06fa76` |
| 46 | `theorem` | [support_filter](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/support-filter--a513d8ed8d683e778a4dfda6.md) | 292 | `result-track:a513d8ed8d683e778a4dfda69161a957907df2c486a61fb401a0acde9d660fcc` |
| 47 | `theorem` | [filter_apply_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/filter-apply-eq-zero-iff--eed87c03b7a3833651664eb3.md) | 295 | `result-track:eed87c03b7a3833651664eb3a46605e0960545b324d36d30e1f7a6ff615d97be` |
| 48 | `theorem` | [filter_apply_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/filter-apply-ne-zero-iff--3a342f6991fcbf1d94e138d0.md) | 298 | `result-track:3a342f6991fcbf1d94e138d068ea985e469a3db230968ab7cf5fa13250e4edd4` |
| 49 | `def` | [bernoulli](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/bernoulli--5fda0ee781b1f389b5491415.md) | 306 | `declaration-track:5fda0ee781b1f389b549141592a1bcff3c147f6d8447b0406731b4145d5bb429` |
| 50 | `theorem` | [bernoulli_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/bernoulli-apply--7b5efde465c234357a2a016e.md) | 312 | `result-track:7b5efde465c234357a2a016e3ae1a2c477e84ef28acadef41bb3efdfb68c28e8` |
| 51 | `theorem` | [support_bernoulli](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/support-bernoulli--1c9f04f53814562b5fa9dc6c.md) | 315 | `result-track:1c9f04f53814562b5fa9dc6c2c440b0f2ccc3be36fd22fa3e61de267e433199c` |
| 52 | `theorem` | [mem_support_bernoulli_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/declarations/mem-support-bernoulli-iff--b8e813b19774255247681b94.md) | 322 | `result-track:b8e813b19774255247681b947a33ea69d84c2c7936b636b6c31b1b16309b1ba7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
