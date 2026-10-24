# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.QuasiIso.Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99dd8dc74b0430d6395aa960353961b8c0567478",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99dd8dc74b0430d6395aa960353961b8c0567478`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homotopy` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Retract` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiIsoAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat--8e080f04c46ec20e46e166bd.md) | 39 | `declaration-track:8e080f04c46ec20e46e166bdea60c8dbff34fb3e19d1510f7d53a214b26ab9db` |
| 2 | `lemma` | [quasiIsoAt_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-iff--d78c7451f709a9fda8ceea1b.md) | 42 | `result-track:d78c7451f709a9fda8ceea1b7c5f55a6d56e44510c3c12309c3385f953c8dcf2` |
| 3 | `instance` | [quasiIsoAt_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-of-isiso--9557b8545c874419d2e6b3be.md) | 51 | `declaration-track:9557b8545c874419d2e6b3be211356fb3a9197fe80706bb2e3f2252d7ada9651` |
| 4 | `lemma` | [quasiIsoAt_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-iff--91e6e8150abc2031dcb209ec.md) | 56 | `result-track:91e6e8150abc2031dcb209ec7141085df3e57cfb6bbd8fb43ac27b08264ad0fc` |
| 5 | `lemma` | [quasiIsoAt_of_retract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-of-retract--8d0cb8a67c2032569a6f4d66.md) | 64 | `result-track:8d0cb8a67c2032569a6f4d66c449b6cf74426ceb6ddc288693b72425be5d5f0e` |
| 6 | `lemma` | [quasiIsoAt_iff_isIso_homologyMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-iff-isiso-homologymap--c7d727172e32b5ea3473bcb2.md) | 73 | `result-track:c7d727172e32b5ea3473bcb249cebd61c52857f7ded3a18fa503d34e3af6728a` |
| 7 | `lemma` | [quasiIsoAt_iff_exactAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-iff-exactat--bb6e647a3db73cb34b00e769.md) | 79 | `result-track:bb6e647a3db73cb34b00e7699cb4e6d5312c845b01a07c57b5eb3a02191d0948` |
| 8 | `lemma` | [quasiIsoAt_iff_exactAt'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-iff-exactat--0805a49c147d17cb2c115755.md) | 90 | `result-track:0805a49c147d17cb2c115755e588d5d1cd19eeca30abf6c96aca68ca3b77b21f` |
| 9 | `lemma` | [exactAt_iff_of_quasiIsoAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/exactat-iff-of-quasiisoat--dbe7507f35a1469ed3bad4ee.md) | 101 | `result-track:dbe7507f35a1469ed3bad4eef25946147ba108c9b6ecf0dffba7346f92cfd103` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/instance--7ad2353b073f67ba2ba91230.md) | 107 | `declaration-track:7ad2353b073f67ba2ba9123036231a35d8c1b092bc09df924e8edb3fedfa5caf` |
| 11 | `def` | [isoOfQuasiIsoAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/isoofquasiisoat--ddc8ce93ac6849487f5019f6.md) | 114 | `declaration-track:ddc8ce93ac6849487f5019f6f5d956640343e6577a62cbb1546699dc7afdaec6` |
| 12 | `lemma` | [isoOfQuasiIsoAt_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/isoofquasiisoat-hom-inv-id--f8489c1fc44ce87a102bdcfa.md) | 119 | `result-track:f8489c1fc44ce87a102bdcfa01c831cfc55edff494b3bc06f34c000bc497dfa5` |
| 13 | `lemma` | [isoOfQuasiIsoAt_inv_hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/isoofquasiisoat-inv-hom-id--652dfb476593a8695b30e731.md) | 125 | `result-track:652dfb476593a8695b30e7311d0b8195e319547e0a073241846e8bf6e1263c12` |
| 14 | `lemma` | [CochainComplex.quasiIsoAt₀_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/cochaincomplex-quasiisoat-iff--96390d9c77cf153ee38dc9e7.md) | 130 | `result-track:96390d9c77cf153ee38dc9e78cebbb186fa5adb65a180a45f3dd34861d4e812e` |
| 15 | `lemma` | [ChainComplex.quasiIsoAt₀_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/chaincomplex-quasiisoat-iff--ef41b37963d2dd61aef4ff1c.md) | 136 | `result-track:ef41b37963d2dd61aef4ff1c19b02c75c374c4b8b0d28239a3c3b64e8e1e99cb` |
| 16 | `class` | [QuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso--95460e2d2a519deafacc33db.md) | 145 | `declaration-track:95460e2d2a519deafacc33db2ecf1e52e60faa4940a207c69de3b50ee002db72` |
| 17 | `lemma` | [quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso-iff--989949a989169401a8ac46fe.md) | 148 | `result-track:989949a989169401a8ac46fe2d9728c949501f32e18ea6ddd7fbc47916548d66` |
| 18 | `instance` | [quasiIso_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso-of-isiso--4088fe212d256ac7fa86dcb0.md) | 154 | `declaration-track:4088fe212d256ac7fa86dcb000e2a589c64369b35ff60b10b4b4b217d36cb5f6` |
| 19 | `instance` | [quasiIsoAt_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-comp--aea775f7d320ee89a88030f5.md) | 157 | `declaration-track:aea775f7d320ee89a88030f524f8cb28f0dd783367d0e369245beb1ba0695755` |
| 20 | `instance` | [quasiIso_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso-comp--375e5d3df34439f069c4d5fa.md) | 165 | `declaration-track:375e5d3df34439f069c4d5fa6242bd9bc19cfc5da32a3e65212b43c81d60704a` |
| 21 | `lemma` | [quasiIsoAt_of_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-of-comp-left--33d8c1eb9f7815df0be019b2.md) | 170 | `result-track:33d8c1eb9f7815df0be019b233580d69cf079269565978801d3ce2141b085f66` |
| 22 | `lemma` | [quasiIsoAt_iff_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-iff-comp-left--7eed345a342b11e4c219ff4b.md) | 178 | `result-track:7eed345a342b11e4c219ff4bfabf1e00bad6fb4688893792902e81417dbac646` |
| 23 | `lemma` | [quasiIso_iff_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso-iff-comp-left--a6025443299e10042c9e66e7.md) | 188 | `result-track:a6025443299e10042c9e66e7088eb80fc3e41f4db140f7c2e510570fd4d42278` |
| 24 | `lemma` | [quasiIso_of_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso-of-comp-left--d24cdc25c5a7f436b20e5212.md) | 194 | `result-track:d24cdc25c5a7f436b20e521209402af7ab21f7f5b434ccecef8c38c06a731f9f` |
| 25 | `lemma` | [quasiIsoAt_of_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-of-comp-right--d0ad350d7799900f558dc9b9.md) | 201 | `result-track:d0ad350d7799900f558dc9b952b7dac39a541d73e8afebc5365b617885b115c1` |
| 26 | `lemma` | [quasiIsoAt_iff_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-iff-comp-right--f80b609684649bb6acf864e6.md) | 209 | `result-track:f80b609684649bb6acf864e690f6f5833b46b1dfcca9a8aa3c71cc97bd4ab556` |
| 27 | `lemma` | [quasiIso_iff_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso-iff-comp-right--0a72c7575b29e494b7864bf9.md) | 219 | `result-track:0a72c7575b29e494b7864bf9f23afd18d0eb095b2c29e8cc115fd8d33da24a36` |
| 28 | `lemma` | [quasiIso_of_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso-of-comp-right--b488a1e79cee4667fdd33cbb.md) | 225 | `result-track:b488a1e79cee4667fdd33cbb45f6f269cf4263931a917c6313fba9f7fe6c50a6` |
| 29 | `lemma` | [quasiIso_iff_of_arrow_mk_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso-iff-of-arrow-mk-iso--1b0588b6a5a06c574b74a9a5.md) | 232 | `result-track:1b0588b6a5a06c574b74a9a5751ba7fdb3629e2fd6ae19f72e93ce7626d319c3` |
| 30 | `lemma` | [quasiIso_of_arrow_mk_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso-of-arrow-mk-iso--d377a3d190710470af87c91b.md) | 239 | `result-track:d377a3d190710470af87c91b9ddfddc0a10d3973bec4e19e9a4366e111560b25` |
| 31 | `lemma` | [quasiIso_of_retractArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso-of-retractarrow--5754cc9188ee45c6ca63fccd.md) | 245 | `result-track:5754cc9188ee45c6ca63fccdcc04fde40e15bc497c07b85eadd9e046df218e7b` |
| 32 | `instance` | [quasiIsoAt_map_of_preservesHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-map-of-preserveshomology--450942c2a5a1e60d0fab5723.md) | 265 | `declaration-track:450942c2a5a1e60d0fab5723c2226085128928e49df7af775f8da9baaf13fe43` |
| 33 | `lemma` | [quasiIsoAt_map_iff_of_preservesHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiisoat-map-iff-of-preserveshomology--520ce6017f8a7e930a15150c.md) | 271 | `result-track:520ce6017f8a7e930a15150cdf8d1f4b326ce4fcee1b38c96f88ff9b38b0e597` |
| 34 | `instance` | [quasiIso_map_of_preservesHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso-map-of-preserveshomology--b2e4d69cb515a3bcf2555998.md) | 285 | `declaration-track:b2e4d69cb515a3bcf25559989a3a2d155f0834d5352c85443eee94878b86749f` |
| 35 | `lemma` | [quasiIso_map_iff_of_preservesHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso-map-iff-of-preserveshomology--29661e9c28711eefae5e7242.md) | 288 | `result-track:29661e9c28711eefae5e724238e1eccf705316b9e001b4800ae4654a3045e2c6` |
| 36 | `def` | [quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/quasiiso--187b0ebc849fca8b64869fc9.md) | 299 | `declaration-track:187b0ebc849fca8b64869fc919bfa205cc9ccea8855844b8bb5d486f34efcb65` |
| 37 | `lemma` | [mem_quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/mem-quasiiso-iff--e25a5579872170661e42d6dc.md) | 305 | `result-track:e25a5579872170661e42d6dc84d779ee51d03b38f4ccd6c76c419a929ead2221` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/instance--f213d8f0006b9b7cd73bb5d9.md) | 307 | `declaration-track:f213d8f0006b9b7cd73bb5d968510f6ff544cde1bdb1eef617a795cd7624f187` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/instance--ad6f2673aacd9cd15a7d918b.md) | 315 | `declaration-track:ad6f2673aacd9cd15a7d918b0779ebd325438d781f5c41951e07485a720e10d4` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/instance--643e8a1a5a64d624f7ea8251.md) | 323 | `declaration-track:643e8a1a5a64d624f7ea8251bad5f232a1c0afe20cddcd2845d6719326cd4410` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/instance--f4a7bba1b85afa31ff2c88c6.md) | 328 | `declaration-track:f4a7bba1b85afa31ff2c88c64cc614fa567f03f197d33007a24365960863315e` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/instance--5e739dd58a63e69710c665f6.md) | 342 | `declaration-track:5e739dd58a63e69710c665f662e8e09065fab117c317a788198673776f75a263` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/instance--c82a596ebf7cbd8416d050fe.md) | 348 | `declaration-track:c82a596ebf7cbd8416d050fe4f1fb820a5de58fec2d5a9a64ab700c82c965774` |
| 44 | `lemma` | [homotopyEquivalences_le_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/declarations/homotopyequivalences-le-quasiiso--313ad49afad9e248f9f1bbb4.md) | 352 | `result-track:313ad49afad9e248f9f1bbb4dc7b65e258b5c5f52ca94d4cefece06570749839` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
