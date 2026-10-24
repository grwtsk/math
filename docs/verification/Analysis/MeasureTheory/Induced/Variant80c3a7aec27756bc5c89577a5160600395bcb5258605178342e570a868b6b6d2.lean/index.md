# Verification target: GRWTSK.Analysis.MeasureTheory.Induced.Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44d662013fa776cdf13b5fbb341c8b5e77d68a53",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44d662013fa776cdf13b5fbb341c8b5e77d68a53`.

Source path: `GRWTSK/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Action` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.Caratheodory` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extend](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend--83adbe3579b3bc0322b4bdae.md) | 45 | `declaration-track:83adbe3579b3bc0322b4bdaeb8b8d7adb2478dc287e98a1ecc7c93a6243d5354` |
| 2 | `theorem` | [extend_eq](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend-eq--72866d24989fc95b23b911a5.md) | 48 | `result-track:72866d24989fc95b23b911a5145554ee2c28b8dd69b96d3009fc806efdc94de4` |
| 3 | `theorem` | [extend_eq_top](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend-eq-top--0760ceaa6901f8756b18be24.md) | 50 | `result-track:0760ceaa6901f8756b18be2442ae83ec189b2c4fc94be4321596280f2c7c544d` |
| 4 | `theorem` | [smul_extend](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/smul-extend--94544be4a017470c3b08173a.md) | 52 | `result-track:94544be4a017470c3b08173ac569c84697660d88d1356388e191da527cdf503e` |
| 5 | `theorem` | [le_extend](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/le-extend--182ac90b7a81c984a9610517.md) | 62 | `result-track:182ac90b7a81c984a9610517e3d8eb18e564d1f00594e85610d2e88d0163ff80` |
| 6 | `theorem` | [extend_congr](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend-congr--818ce5894230b3f488517d22.md) | 68 | `result-track:818ce5894230b3f488517d2221f16598b9ba6693366ee566c3939a825ba4c3be` |
| 7 | `theorem` | [extend_top](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend-top--00ac670cc66b08bf6bc22d3a.md) | 74 | `result-track:00ac670cc66b08bf6bc22d3affea2f58818d951f70a87b6068c605ad4a7664ed` |
| 8 | `theorem` | [extend_iUnion_nat](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend-iunion-nat--b74ab19936164f2cb99880af.md) | 93 | `result-track:b74ab19936164f2cb99880af4128f0761b617791a39ded58fbd74f5a24b5bce1` |
| 9 | `theorem` | [extend_empty](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend-empty--8adeb9486ff72160cff1aa9c.md) | 102 | `result-track:8adeb9486ff72160cff1aa9c945d4ecb72923f18798652af0f1224e5ba2a064c` |
| 10 | `theorem` | [extend_iUnion_le_tsum_nat'](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend-iunion-le-tsum-nat--e0bbf2e51819389e850720b2.md) | 108 | `result-track:e0bbf2e51819389e850720b245c6bda1821be87bcf3eafb8e7eda0e9506d3f87` |
| 11 | `theorem` | [extend_mono'](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend-mono--44074b81d8f0105e883de399.md) | 123 | `result-track:44074b81d8f0105e883de39991ffa63c0b9e522aa1ce706a63696ca140a445c2` |
| 12 | `theorem` | [extend_iUnion](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend-iunion--52d424ec5257677a44d3eaf2.md) | 134 | `result-track:52d424ec5257677a44d3eaf2bc63504b0b8c199d2d34b0c71f232e0d65896cb0` |
| 13 | `theorem` | [extend_union](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend-union--c6f9afdd60e4d494be0cb49a.md) | 144 | `result-track:c6f9afdd60e4d494be0cb49a00c0a7f20ecae28e9a73121cc9c8b3cc562f30ad` |
| 14 | `def` | [inducedOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/inducedoutermeasure--68ca47555f39ab5b532a25aa.md) | 157 | `declaration-track:68ca47555f39ab5b532a25aa8806cbe095edcbae54807c4af8dff7835c980687` |
| 15 | `theorem` | [le_inducedOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/le-inducedoutermeasure--1a767d8d18600382e088c7be.md) | 162 | `result-track:1a767d8d18600382e088c7bec832af2121e41eaa41b330bf4e88b4beab77cd88` |
| 16 | `theorem` | [inducedOuterMeasure_union_of_false_of_nonempty_inter](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/inducedoutermeasure-union-of-false-of-nonempty-inter--27a022e46247a46706cf9e31.md) | 171 | `result-track:27a022e46247a46706cf9e318198985ea21263096a947ab3f8eeb12f835772eb` |
| 17 | `theorem` | [inducedOuterMeasure_eq_extend'](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/inducedoutermeasure-eq-extend--3af4061344ac90ddeb770d4e.md) | 179 | `result-track:3af4061344ac90ddeb770d4e24c883c4b8b83b893143cc9080fbb3e1014cc055` |
| 18 | `theorem` | [inducedOuterMeasure_eq'](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/inducedoutermeasure-eq--e302eee2deab6ee7a5cb5cb3.md) | 183 | `result-track:e302eee2deab6ee7a5cb5cb304780976c4a5e2b50620048f145e0fa569549e4b` |
| 19 | `theorem` | [inducedOuterMeasure_eq_iInf](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/inducedoutermeasure-eq-iinf--0dbf90c7e71ade5e9d3567d8.md) | 186 | `result-track:0dbf90c7e71ade5e9d3567d8fc737100a692f762374e22ce91f33a21b9721709` |
| 20 | `theorem` | [inducedOuterMeasure_preimage](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/inducedoutermeasure-preimage--53369e5fd17fb7db92cdd871.md) | 202 | `result-track:53369e5fd17fb7db92cdd871d96c078101da4c9d1da3f6ff97f8e6634d5c758c` |
| 21 | `theorem` | [inducedOuterMeasure_exists_set](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/inducedoutermeasure-exists-set--d42415368c10fd075b1e31ec.md) | 211 | `result-track:d42415368c10fd075b1e31ecfa84725825c76d64463741d1608e5f5a713b7491` |
| 22 | `theorem` | [inducedOuterMeasure_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/inducedoutermeasure-caratheodory--d0db2eb8c81758f88add6d15.md) | 228 | `result-track:d0db2eb8c81758f88add6d15483adca49cede331f5eac589a7006d7735db03ed` |
| 23 | `theorem` | [extend_mono](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend-mono--2dcefb3a991d264dc4ca1d5a.md) | 266 | `result-track:2dcefb3a991d264dc4ca1d5a8b37e4b98d27bb600ef03444379d4c7edc99e6ba` |
| 24 | `theorem` | [extend_iUnion_le_tsum_nat](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/extend-iunion-le-tsum-nat--608eda8e5d45f634991ada2f.md) | 276 | `result-track:608eda8e5d45f634991ada2f904dbda58ec9238e1758fc35a51105e162c1c1d1` |
| 25 | `theorem` | [inducedOuterMeasure_eq_extend](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/inducedoutermeasure-eq-extend--e6cccfe245b183a6ba4c1238.md) | 285 | `result-track:e6cccfe245b183a6ba4c12384207da85953056d6ec150050e8fc4ac187209c68` |
| 26 | `theorem` | [inducedOuterMeasure_eq](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/inducedoutermeasure-eq--7f73aaee1731df7db4499b44.md) | 289 | `result-track:7f73aaee1731df7db4499b441c878745bbb70dc3e07530556f9e7beddba7def7` |
| 27 | `def` | [trim](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim--94c4281f82fcfc11662f0808.md) | 301 | `declaration-track:94c4281f82fcfc11662f0808233248b330ea56f93ac70c44a779643f04e23853` |
| 28 | `theorem` | [le_trim_iff](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/le-trim-iff--86454eb76e0e18ee11b52885.md) | 304 | `result-track:86454eb76e0e18ee11b5288531db16e0cdb310b5b2445b9fb9ca21ec2226b7c1` |
| 29 | `theorem` | [le_trim](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/le-trim--30617e22c5e101c245d83afb.md) | 308 | `result-track:30617e22c5e101c245d83afbc815399bda7203035b9e68cd2287c34405d8c75e` |
| 30 | `lemma` | [null_of_trim_null](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/null-of-trim-null--5122810507c6a8efbc3bd52d.md) | 310 | `result-track:5122810507c6a8efbc3bd52ddfab48a90f1179e144bbf7efb6345d7978c1ea51` |
| 31 | `theorem` | [trim_eq](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-eq--892aab71ac7435b2daf76a3c.md) | 314 | `result-track:892aab71ac7435b2daf76a3c46d817dd8b83b3d809049d4fbd13e7189c4f337a` |
| 32 | `theorem` | [trim_congr](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-congr--0a51d5bff7979c83466d0a24.md) | 318 | `result-track:0a51d5bff7979c83466d0a24c352962c065202ec2ec43bd082104225fa647aa5` |
| 33 | `theorem` | [trim_mono](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-mono--6158abf7e8ad3febd3bdcb27.md) | 323 | `result-track:6158abf7e8ad3febd3bdcb276892f50c2ad0083e5c0d6a4af43f3ee953488a42` |
| 34 | `theorem` | [trim_anti_measurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-anti-measurablespace--15752cbc0f1099ce4fe7bdc8.md) | 327 | `result-track:15752cbc0f1099ce4fe7bdc8747d1fb2a9eca140ec23da555727cc6c78661026` |
| 35 | `theorem` | [trim_le_trim_iff](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-le-trim-iff--a26e3ec4d947a9ec15895513.md) | 333 | `result-track:a26e3ec4d947a9ec15895513f020882777453bab073e0776f853e69595a5dd94` |
| 36 | `theorem` | [trim_eq_trim_iff](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-eq-trim-iff--308111885614403ab87b419f.md) | 337 | `result-track:308111885614403ab87b419f8fd0496ab14b6b7845430b30d146f96d35713f27` |
| 37 | `theorem` | [trim_eq_iInf](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-eq-iinf--0bc41bc16b43d962480dea8d.md) | 341 | `result-track:0bc41bc16b43d962480dea8d4181ae5cfec68dfd83fb97a8ba4f696452c93026` |
| 38 | `theorem` | [trim_eq_iInf'](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-eq-iinf--95d23475b6052803f12bbc6a.md) | 347 | `result-track:95d23475b6052803f12bbc6ab214c346450ee2e83e6281247da51b3da3c027c6` |
| 39 | `theorem` | [trim_trim](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-trim--838970f7ca14312d779d2efa.md) | 350 | `result-track:838970f7ca14312d779d2efaaa71f03bb7681fb8ca1c13cfb12de380604278e1` |
| 40 | `theorem` | [trim_top](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-top--f7afaabfa86000231e573961.md) | 354 | `result-track:f7afaabfa86000231e57396188341f982ac4bf476ae04ca293823b31b2a37f51` |
| 41 | `theorem` | [trim_zero](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-zero--2880e529ab3e8c4f44cb0df2.md) | 358 | `result-track:2880e529ab3e8c4f44cb0df295cf3209a6a0e00d501e57f2be07ca8952ba593b` |
| 42 | `theorem` | [trim_sum_ge](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-sum-ge--cd44a4139bdab2a325d756a7.md) | 364 | `result-track:cd44a4139bdab2a325d756a73d5486ad0246c583e513e2c03df030f95e3b4d79` |
| 43 | `theorem` | [exists_measurable_superset_eq_trim](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/exists-measurable-superset-eq-trim--3e3efc9aa2796592a8be654b.md) | 370 | `result-track:3e3efc9aa2796592a8be654bcf36f51ced2d7cf127f9fed24252e3961ac62e9e` |
| 44 | `theorem` | [exists_measurable_superset_of_trim_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/exists-measurable-superset-of-trim-eq-zero--4785ab350e85935f02e68312.md) | 397 | `result-track:4785ab350e85935f02e68312da01889c16867aa7e339a06d37c873de78cc229f` |
| 45 | `theorem` | [exists_measurable_superset_forall_eq_trim](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/exists-measurable-superset-forall-eq-trim--8d3c472a3ebe91c327874b18.md) | 404 | `result-track:8d3c472a3ebe91c327874b1801c84621e4ca1c364127f1cf0de5aa65f8aeb306` |
| 46 | `theorem` | [trim_binop](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-binop--32fa6dfcb3b7e8d028d33ddd.md) | 414 | `result-track:32fa6dfcb3b7e8d028d33dddb78400b6750b393fa6fe26986142394eb1867be1` |
| 47 | `theorem` | [trim_op](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-op--90c915191a9b2c5cee6937cd.md) | 421 | `result-track:90c915191a9b2c5cee6937cd8e22a2faff7219ef04beb46b2e96d1f2e399687c` |
| 48 | `theorem` | [trim_add](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-add--3d6f69d6e80908dd82edaf11.md) | 426 | `result-track:3d6f69d6e80908dd82edaf1178b2a90917a7e7509d345382f4be19e1f6351c25` |
| 49 | `theorem` | [trim_smul](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-smul--5d4d61dcc20604b39f6351d2.md) | 430 | `result-track:5d4d61dcc20604b39f6351d21b8a1947dfdfe607cec4b983cf75d567e290dfc0` |
| 50 | `theorem` | [trim_sup](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-sup--09141039c6f5c2d26d00a39d.md) | 435 | `result-track:09141039c6f5c2d26d00a39dc9cfa64f3a374d15ce1ab56d3ac032d90decfc13` |
| 51 | `theorem` | [trim_iSup](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/trim-isup--28ab50cdfe89d877734183e0.md) | 440 | `result-track:28ab50cdfe89d877734183e078702b8cc3c6fd45556096713a7a2be9f3be53eb` |
| 52 | `theorem` | [restrict_trim](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant80c3a7aec27756bc5c89577a5160600395bcb5258605178342e570a868b6b6d2.lean/declarations/restrict-trim--8aafcedf0638b7facaca7c75.md) | 453 | `result-track:8aafcedf0638b7facaca7c75ac4bf87a1f6eb5241bd4520ee20498058ef131b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
