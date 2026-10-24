# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monadic.Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd029dd01854faf705c05956242818f4f1e070d0",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd029dd01854faf705c05956242818f4f1e070d0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Monadic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_toArray_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/map-toarray-inj--b0ae21fb38ea8e4569da92d7.md) | 36 | `result-track:b0ae21fb38ea8e4569da92d7cdb43ffe1cf32a0eb5ef9d0db5897e38ae818871` |
| 2 | `theorem` | [mapM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/mapm-pure--db95d5b04fd03f4d4ae1eb95.md) | 44 | `result-track:db95d5b04fd03f4d4ae1eb95f55b1d3749a4997b4749c6ce05021fbf3607e5ea` |
| 3 | `theorem` | [mapM_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/mapm-map--24e9d26789bcc0f398f71c8e.md) | 49 | `result-track:24e9d26789bcc0f398f71c8ef12f72de5f11eeff048d1efb7f94e0dacb3cb1a9` |
| 4 | `theorem` | [mapM_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/mapm-congr--e1c3b7720eea7dc59e05e940.md) | 54 | `result-track:e1c3b7720eea7dc59e05e940a5a15cbdb5b5227721040a5b58d05cb6ffe71ed2` |
| 5 | `theorem` | [mapM_mk_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/mapm-mk-empty--13df0cd7ae6ccd1a38bfbddd.md) | 60 | `result-track:13df0cd7ae6ccd1a38bfbddd0715d7497ca332e167c26a572914dd2e891e3ed8` |
| 6 | `theorem` | [mapM_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/mapm-append--1644f8c29289934462b418b6.md) | 66 | `result-track:1644f8c29289934462b418b6f63a6a3aef8d69e7300fe8d3e04b0262af17aca2` |
| 7 | `theorem` | [foldlM_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/foldlm-map--18f39455635d7b6d4e6c0763.md) | 77 | `result-track:18f39455635d7b6d4e6c07636ac5d7e26e077c6d73461bc22a75096484fa695f` |
| 8 | `theorem` | [foldrM_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/foldrm-map--8e3fbacf9ea77da738a2cdc1.md) | 82 | `result-track:8e3fbacf9ea77da738a2cdc1c81f00fcb354ceab3b8e769a94351ad0d97f230a` |
| 9 | `theorem` | [foldlM_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/foldlm-attachwith--3686179ed585a412dd42658d.md) | 87 | `result-track:3686179ed585a412dd42658d862d34f26f585f2d4470d5ad91234aa0792e0917` |
| 10 | `theorem` | [foldrM_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/foldrm-attachwith--a185a1044fde9a3a85584e1b.md) | 93 | `result-track:a185a1044fde9a3a85584e1b354fd4131ecae3903f6d7095f129cacb8477b660` |
| 11 | `theorem` | [forM_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/form-congr--ffe752f725860abf3d3f7d71.md) | 101 | `result-track:ffe752f725860abf3d3f7d713cf17551e8cb202065c7351b7a229cc9d3dc2c00` |
| 12 | `theorem` | [forM_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/form-append--90c94406a9461504febe5e64.md) | 107 | `result-track:90c94406a9461504febe5e646eac38b8373232916c4e0cefc43b74556ef79206` |
| 13 | `theorem` | [forM_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/form-map--ba5eef6cb6a6fdd1307fcc73.md) | 113 | `result-track:ba5eef6cb6a6fdd1307fcc73791111689f8436b653486d81867b88960bfebcc0` |
| 14 | `theorem` | [forIn'_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/forin-congr--9651507a1f6a41d4e0c100bb.md) | 120 | `result-track:9651507a1f6a41d4e0c100bbdd5d236ab38ec1e7b4bd1016e8951272d57bd928` |
| 15 | `theorem` | [forIn'_eq_foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/forin-eq-foldlm--517b466636184a288ffc1d86.md) | 134 | `result-track:517b466636184a288ffc1d86c2fd4c28f151b661df5d256529cc4a9cef86413b` |
| 16 | `theorem` | [forIn'_yield_eq_foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/forin-yield-eq-foldlm--e8cf74376ee3795d2cd6e7fa.md) | 145 | `result-track:e8cf74376ee3795d2cd6e7fa4c098b570f329f49ef8bebc7be1ed710b7cc1595` |
| 17 | `theorem` | [forIn'_pure_yield_eq_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/forin-pure-yield-eq-foldl--1c7bf0077caf8365a30d0073.md) | 152 | `result-track:1c7bf0077caf8365a30d007373ba01206deced05bc3465aeb887e9d6d878f663` |
| 18 | `theorem` | [idRun_forIn'_yield_eq_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/idrun-forin-yield-eq-foldl--7312aa5b853efc43754ad360.md) | 159 | `result-track:7312aa5b853efc43754ad360dcff683d5c996140f0b05cd9d800a7c524de5ea5` |
| 19 | `theorem` | [forIn'_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/forin-map--4f49a5585a0af3ad1bdb4e3b.md) | 165 | `result-track:4f49a5585a0af3ad1bdb4e3b9d399e72ccf8582333806b8e3706f869766eb677` |
| 20 | `theorem` | [forIn_eq_foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/forin-eq-foldlm--7c69bad7e5f595355f2eef9a.md) | 175 | `result-track:7c69bad7e5f595355f2eef9a5c00b5d11e2aaeb40a8409c008076a1fd225c1f6` |
| 21 | `theorem` | [forIn_yield_eq_foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/forin-yield-eq-foldlm--28b099b87fb2051913f44406.md) | 186 | `result-track:28b099b87fb2051913f44406f045c03214ceb6806cf6f8652d3416d6fea37b15` |
| 22 | `theorem` | [forIn_pure_yield_eq_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/forin-pure-yield-eq-foldl--2b17145d8221371b0ea6151c.md) | 193 | `result-track:2b17145d8221371b0ea6151c4d0424f806ea70fefe63c430df53d7c3550c19b2` |
| 23 | `theorem` | [idRun_forIn_yield_eq_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/idrun-forin-yield-eq-foldl--c87ab5995e833c4526e402ea.md) | 200 | `result-track:c87ab5995e833c4526e402eac0fa54354fa48c8b633765d1b95815ccb256cd23` |
| 24 | `theorem` | [forIn_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/forin-map--eb691eecb8c58654b03de855.md) | 206 | `result-track:eb691eecb8c58654b03de85562edb143c45bccc53320a72952cb6ae1e722b2d2` |
| 25 | `theorem` | [anyM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/anym-pure--bdbc9d6cda366ca168c4b5ad.md) | 215 | `result-track:bdbc9d6cda366ca168c4b5ad32168e933a2f457b0d969e43a691ade915194327` |
| 26 | `theorem` | [allM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/allm-pure--af0b66f6fb98518447e2a42b.md) | 220 | `result-track:af0b66f6fb98518447e2a42b42a406a44a254979f05200a63e5453efde0b5ec7` |
| 27 | `theorem` | [findM?_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/findm-pure--127f2029d14ef78576cff7b5.md) | 227 | `result-track:127f2029d14ef78576cff7b50afaa96fe25387a1248c6ce174ff27868a2797ab` |
| 28 | `theorem` | [findSomeM?_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant6acce4807fcc6d8945f87525ad75968f06d95dd5b98353fa0ff296d45ab8b777.lean/declarations/findsomem-pure--ab58b07b49123a9ffea64ab6.md) | 233 | `result-track:ab58b07b49123a9ffea64ab6d5eb0cfaab7e4dbc60c78ee75744cab23a3a4790` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
