# Verification target: GRWTSK.Algebra.KummerDedekind.Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8465d52f7ad404b9b02559befe9525d01d3a6cb2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/index.md) · [Full source](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8465d52f7ad404b9b02559befe9525d01d3a6cb2`.

Source path: `GRWTSK/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsAdjoinRoot` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductor](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/conductor--5933ab679c83a0d8935635ae.md) | 71 | `declaration-track:5933ab679c83a0d8935635ae3136d5d6fd41da5cf6ce8017cc12722861b33a4a` |
| 2 | `theorem` | [conductor_eq_of_eq](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/conductor-eq-of-eq--5080c52d6975997a11bc3b07.md) | 79 | `result-track:5080c52d6975997a11bc3b07b5ab95198a63349dbeba0d0e4164c00494c2c881` |
| 3 | `theorem` | [conductor_subset_adjoin](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/conductor-subset-adjoin--1444c5fed1749d81a43370c1.md) | 82 | `result-track:1444c5fed1749d81a43370c1debd8613ef494b38c6f1699433844ec5e9f3221c` |
| 4 | `theorem` | [mem_conductor_iff](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/mem-conductor-iff--a0a58f33a0d78a32b68b6571.md) | 85 | `result-track:a0a58f33a0d78a32b68b6571bee85321d5aff9f35eabed0fd2132b8215eff08a` |
| 5 | `theorem` | [conductor_eq_top_of_adjoin_eq_top](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/conductor-eq-top-of-adjoin-eq-top--0ac8748e0ed2c5cf6dbc9180.md) | 88 | `result-track:0ac8748e0ed2c5cf6dbc9180a6c442d377c8107fc1e5990fdb4d54f365151ffa` |
| 6 | `theorem` | [conductor_eq_top_of_powerBasis](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/conductor-eq-top-of-powerbasis--cc183295d6ad1e08b42c7634.md) | 91 | `result-track:cc183295d6ad1e08b42c763484697904260484f69e24cdc88ffecf68fbf0d62d` |
| 7 | `lemma` | [mem_coeSubmodule_conductor](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/mem-coesubmodule-conductor--2d401ce3c1a32372747ae5cd.md) | 95 | `result-track:2d401ce3c1a32372747ae5cdae1fde17f9c7a63e8e70a309140d277cf1c42470` |
| 8 | `theorem` | [prod_mem_ideal_map_of_mem_conductor](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/prod-mem-ideal-map-of-mem-conductor--8ad197220216592ba08995aa.md) | 120 | `result-track:8ad197220216592ba08995aa75c9a20b35f0b330557f060ed0429c9ad8353cac` |
| 9 | `theorem` | [comap_map_eq_map_adjoin_of_coprime_conductor](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/comap-map-eq-map-adjoin-of-coprime-conductor--6e285fbbc6f7f1146490e9c2.md) | 152 | `result-track:6e285fbbc6f7f1146490e9c2624f45e34556aaf409fb70f29e87c2d64e9f9d46` |
| 10 | `def` | [quotAdjoinEquivQuotMap](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/quotadjoinequivquotmap--25f9d48a25b4a87f4b90f1f0.md) | 190 | `declaration-track:25f9d48a25b4a87f4b90f1f0c3063717d517437f20b77c4a00540a8dd5a5c080` |
| 11 | `theorem` | [quotAdjoinEquivQuotMap_apply_mk](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/quotadjoinequivquotmap-apply-mk--ceaa4bd84d7a924ebbadd00b.md) | 226 | `result-track:ceaa4bd84d7a924ebbadd00b2422bb9bcd494ebc18274cdd53f3247a7ce6dcd2` |
| 12 | `def` | [f](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/f--218eab7228bf5f935bfd51e2.md) | 241 | `declaration-track:218eab7228bf5f935bfd51e2ec47715a92a8ee1fb0c50feea0217c54d6f01ea5` |
| 13 | `lemma` | [f_symm_aux](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/f-symm-aux--95c9d27e6a952f53c2e1dcd1.md) | 249 | `result-track:95c9d27e6a952f53c2e1dcd1c72c42f83fb5f5f470db56b6fd8880790b4afaf1` |
| 14 | `def` | [normalizedFactorsMapEquivNormalizedFactorsMinPolyMk](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/normalizedfactorsmapequivnormalizedfactorsminpolymk--8a2802c305211dacd97139d1.md) | 267 | `declaration-track:8a2802c305211dacd97139d17ffa07842b8878fe766a3e43c07b1ae45d069e51` |
| 15 | `theorem` | [emultiplicity_factors_map_eq_emultiplicity](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/emultiplicity-factors-map-eq-emultiplicity--4100269a065d967ddfd322dd.md) | 283 | `result-track:4100269a065d967ddfd322dd3beffe29f7b0eacf1ec3ce616bd4e607b5648a93` |
| 16 | `theorem` | [normalizedFactors_ideal_map_eq_normalizedFactors_min_poly_mk_map](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/normalizedfactors-ideal-map-eq-normalizedfactors-min-poly-mk-map--7c1b7d4f1daba87d259c32df.md) | 296 | `result-track:7c1b7d4f1daba87d259c32df8dd4b076bf7bfa5a9fd54f9e309b27d47eb46bc4` |
| 17 | `theorem` | [Ideal.irreducible_map_of_irreducible_minpoly](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/ideal-irreducible-map-of-irreducible-minpoly--a3646e9aec346cadc3c8fc0a.md) | 339 | `result-track:a3646e9aec346cadc3c8fc0a74d1beb45be199bd2afe63b286c20602669c24c6` |
| 18 | `theorem` | [normalizedFactorsMapEquivNormalizedFactorsMinPolyMk_symm_apply_eq_span](../../../../mathematics/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/declarations/normalizedfactorsmapequivnormalizedfactorsminpolymk-symm-apply-eq-span--bd32e97907be6c1685fae1f5.md) | 373 | `result-track:bd32e97907be6c1685fae1f5c9091b73c269887ae4648e474847bfc669631efe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
