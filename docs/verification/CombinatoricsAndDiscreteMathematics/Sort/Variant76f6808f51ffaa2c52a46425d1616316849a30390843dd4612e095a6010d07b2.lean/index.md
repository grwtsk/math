# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aa8039dbf5a9e990191d01a644ce73113041193",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aa8039dbf5a9e990191d01a644ce73113041193`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.RelIso.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sort` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.NodupEquivFin` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sort--fff6dfdbdddfa5355691f554.md) | 41 | `declaration-track:fff6dfdbdddfa5355691f5545b8893372d19bd5813bc1170a65de2e4c46ca11e` |
| 2 | `theorem` | [sort_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sort-sorted--d82a9f8271a685788245b996.md) | 46 | `result-track:d82a9f8271a685788245b9965d47931e731a98fee56c4e87bc4b46e03982dc7f` |
| 3 | `theorem` | [sort_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sort-eq--a2d1027547a1fc6bff73d967.md) | 51 | `result-track:a2d1027547a1fc6bff73d9671aa00642a4bbea1fbb5ec4a2e6990edf3c081e3c` |
| 4 | `theorem` | [sort_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sort-nodup--6277ca1f1928e3259486ae87.md) | 56 | `result-track:6277ca1f1928e3259486ae87c89c06abbcce7201e333129a0fb2e8d70e314e67` |
| 5 | `theorem` | [sort_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sort-tofinset--108a6e968dae842a0b9b85fb.md) | 61 | `result-track:108a6e968dae842a0b9b85fb448aa616d7c1f42fe9558b5c5fc5e810048e24ad` |
| 6 | `theorem` | [mem_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/mem-sort--f9b2b410755f0c1c7a2f543a.md) | 66 | `result-track:f9b2b410755f0c1c7a2f543a5c670fb5f4fa7cd5e053b27e305c33b433a9a2ce` |
| 7 | `theorem` | [length_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/length-sort--46467fd9aa473a119741e188.md) | 71 | `result-track:46467fd9aa473a119741e18880460a81abcbfc088ea5089cda9002f886d1744b` |
| 8 | `theorem` | [sort_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sort-empty--2fa1651115449556b54046f4.md) | 76 | `result-track:2fa1651115449556b54046f47679bbe64addb397e26063e221f08aeaa96ec156` |
| 9 | `theorem` | [sort_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sort-singleton--945f7d2d437b781c464aef6f.md) | 81 | `result-track:945f7d2d437b781c464aef6fa3a65f3cc5308f709c5eec30b6c367b25bf0580b` |
| 10 | `theorem` | [sort_perm_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sort-perm-tolist--52fed134fa69fb41d85dda4b.md) | 85 | `result-track:52fed134fa69fb41d85dda4b1811cff98453bf0036188e4f79683b15d4edb111` |
| 11 | `theorem` | [sort_sorted_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sort-sorted-lt--c8ca36be5f88bc792ee1d1f0.md) | 96 | `result-track:c8ca36be5f88bc792ee1d1f05d353e93c386cc7dc41bbb722e118a051e481c8f` |
| 12 | `theorem` | [sorted_zero_eq_min'_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sorted-zero-eq-min-aux--3555f1f658ba4bbb263a333c.md) | 100 | `result-track:3555f1f658ba4bbb263a333ccd3c3946ff3e8038fd8c67e30a9d1f5c61952c3d` |
| 13 | `theorem` | [sorted_zero_eq_min'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sorted-zero-eq-min--c5c8a4c8c149b220f5845df5.md) | 112 | `result-track:c5c8a4c8c149b220f5845df52ef87d8be2834c7506e285d3c9002c736fa5388b` |
| 14 | `theorem` | [min'_eq_sorted_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/min-eq-sorted-zero--e3c3c5e06e2cfe1b2e48ccd3.md) | 117 | `result-track:e3c3c5e06e2cfe1b2e48ccd37675c3dd7ab799d3f64192fb0f8668c3447c7e56` |
| 15 | `theorem` | [sorted_last_eq_max'_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sorted-last-eq-max-aux--b3d5207247d0dae86ff38e92.md) | 122 | `result-track:b3d5207247d0dae86ff38e92c418ad54043ded3243514a3b995fa58a1edc6f73` |
| 16 | `theorem` | [sorted_last_eq_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/sorted-last-eq-max--2611611c5e5954058a66b57e.md) | 136 | `result-track:2611611c5e5954058a66b57eb72d640455983aa9f473d6c4f63c08b7b2d6b1b4` |
| 17 | `theorem` | [max'_eq_sorted_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/max-eq-sorted-last--e02dc04e5ee636d0f6e44111.md) | 143 | `result-track:e02dc04e5ee636d0f6e44111194c3674accab444f1bd1f7ca9713b8a109b8350` |
| 18 | `def` | [orderIsoOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderisooffin--ad7355b0e311bfda77502bd3.md) | 154 | `declaration-track:ad7355b0e311bfda77502bd350b00770e12e292864574c8c72727488ee6bdb06` |
| 19 | `def` | [orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderemboffin--147cfde3463526dc35f17fe3.md) | 163 | `declaration-track:147cfde3463526dc35f17fe3d3f65055b1e224ad8a3d6229321dccb34bf119bb` |
| 20 | `theorem` | [coe_orderIsoOfFin_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/coe-orderisooffin-apply--38961bc0f70054941e3708d6.md) | 168 | `result-track:38961bc0f70054941e3708d6d06e4b06cac019db7dccf674fefc8c566497c0f5` |
| 21 | `theorem` | [orderIsoOfFin_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderisooffin-symm-apply--ee509efd0b50c922672b93da.md) | 173 | `result-track:ee509efd0b50c922672b93da4d9fd5b043ae3fefa159075716d3bbe4c4f965bc` |
| 22 | `theorem` | [orderEmbOfFin_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderemboffin-apply--bf48e9a7b538f5c905a7faba.md) | 178 | `result-track:bf48e9a7b538f5c905a7fabad0e59f9ed097338266c24995cf71a7414955089d` |
| 23 | `theorem` | [orderEmbOfFin_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderemboffin-mem--f9dc00c1d90b46301b566626.md) | 185 | `result-track:f9dc00c1d90b46301b566626cab5ef330ba20c54e85c8190aeebcdf17c4b9463` |
| 24 | `theorem` | [range_orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/range-orderemboffin--9600d5b7e5b86c65401b2ec4.md) | 191 | `result-track:9600d5b7e5b86c65401b2ec46c1504db2c6e616e84bece43c67ae5f0f2601245` |
| 25 | `theorem` | [orderEmbOfFin_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderemboffin-zero--cf2540d65f152fb5b72ecf58.md) | 200 | `result-track:cf2540d65f152fb5b72ecf58cfcfcbd4b195e49455926f4842d26571101a08e8` |
| 26 | `theorem` | [orderEmbOfFin_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderemboffin-last--3ca6b5538e6b7de033a760ff.md) | 206 | `result-track:3ca6b5538e6b7de033a760fff7879562848dec10ff45d960aca2b018caa75d70` |
| 27 | `theorem` | [orderEmbOfFin_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderemboffin-singleton--30244f94a1a902fca8f98cc5.md) | 214 | `result-track:30244f94a1a902fca8f98cc50b249da329ed2676bc030bd76cafba6c4a55b153` |
| 28 | `theorem` | [orderEmbOfFin_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderemboffin-unique--a072395050e4ed9eb20b783a.md) | 221 | `result-track:a072395050e4ed9eb20b783ab895682fbe0a4de6034a3f65834cd94e67b853da` |
| 29 | `theorem` | [orderEmbOfFin_unique'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderemboffin-unique--48d7aaf9384dae3e58a62fb0.md) | 233 | `result-track:48d7aaf9384dae3e58a62fb0bcac54ba23c59c005ed9f4d683f1c21b0c33cff7` |
| 30 | `theorem` | [orderEmbOfFin_eq_orderEmbOfFin_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderemboffin-eq-orderemboffin-iff--0c8fc31d6b4253fe78f77cd8.md) | 242 | `result-track:0c8fc31d6b4253fe78f77cd89119a913078f23171b6bc661db67c852a2a7908d` |
| 31 | `def` | [orderEmbOfCardLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderembofcardle--87b3a71cda50c68190e46091.md) | 252 | `declaration-track:87b3a71cda50c68190e460911640a05fe66472ed46cd5dc8dea042e22ca870d6` |
| 32 | `theorem` | [orderEmbOfCardLe_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/orderembofcardle-mem--b27ac503b7903d2e0f24d346.md) | 256 | `result-track:b27ac503b7903d2e0f24d34615d7eaca96916fe4a8ea28a3549a5068b3a56e6b` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant76f6808f51ffaa2c52a46425d1616316849a30390843dd4612e095a6010d07b2.lean/declarations/instance--62bb2729a3773122a0a3c560.md) | 264 | `declaration-track:62bb2729a3773122a0a3c560ce137cdb3bdeb1e309afdaf0319e92bc28283c7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
