# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToInt.Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cff66090cce4a1ea057e08ff7e0d29c09138b0c",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cff66090cce4a1ea057e08ff7e0d29c09138b0c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.String.ToNat` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.TakeDrop.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.TakeDrop.Char` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Int.ToString` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toInt?_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-eq-some-iff--e1b29c0282908d74d23432ec.md) | 24 | `result-track:e1b29c0282908d74d23432ecc2d7b3459bd16fcd154f8980cd3f9e691623f8d7` |
| 2 | `theorem` | [isSome_toInt?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/issome-toint--b1d558a3ebd24a22eb522c8a.md) | 44 | `result-track:b1d558a3ebd24a22eb522c8ad128f18650fb9bf4f7c8a4666b6c541d36a8aaab` |
| 3 | `theorem` | [isInt_of_toInt?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/isint-of-toint-eq-some--5b9ff89fc45ab8a0ec0e1a12.md) | 48 | `result-track:5b9ff89fc45ab8a0ec0e1a125dad3fe36ea51ec3c03404318590bed5374b00b5` |
| 4 | `theorem` | [toInt?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-eq-none-iff--830449e64b74d58ef0643f11.md) | 52 | `result-track:830449e64b74d58ef0643f11d065330b87929d5e7e4c8e310df8c0e04a554a5a` |
| 5 | `theorem` | [toInt?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-eq-none--0fa0a93896826679bf43e008.md) | 55 | `result-track:0fa0a93896826679bf43e0086eedaaba0418be9eef409262020164512b191d6e` |
| 6 | `theorem` | [isInt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/isint-iff--f779fdefa54688b837349f77.md) | 58 | `result-track:f779fdefa54688b837349f776468499b2e99b913d5eb0eb3f24da69993b24d64` |
| 7 | `theorem` | [isInt_of_isNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/isint-of-isnat--4706f82c9e8da4b9284b7451.md) | 70 | `result-track:4706f82c9e8da4b9284b745140cb9caa2fce9c886ca632d29958668f1f299be4` |
| 8 | `theorem` | [toInt?_eq_toNat?_of_startsWith_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-eq-tonat-of-startswith-eq-false--ee59d0940663add6475eb760.md) | 73 | `result-track:ee59d0940663add6475eb760e11c998df647be92ad8339b6754dc34f1ecfa8d4` |
| 9 | `theorem` | [toInt?_eq_of_eq_minus_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-eq-of-eq-minus-append--054d8629accbe323171c4582.md) | 78 | `result-track:054d8629accbe323171c45824ae1ee70a069d19629516c024d1d3e53103a8c78` |
| 10 | `theorem` | [toInt?_eq_some_of_toNat?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-eq-some-of-tonat-eq-some--f6af7f1ecc29cf17967992b0.md) | 85 | `result-track:f6af7f1ecc29cf17967992b0059da39c21eff9ce51d468e9c02c33113bd475bd` |
| 11 | `theorem` | [toInt?_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-congr--e5ec08759b9572d7aaed3bd6.md) | 89 | `result-track:e5ec08759b9572d7aaed3bd66d55ee536dcfded9a36ddc52e97ddd6b973c4509` |
| 12 | `theorem` | [isInt_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/isint-congr--a7bc24b05e171bfe06dd91e5.md) | 92 | `result-track:a7bc24b05e171bfe06dd91e572651eb424414c93e63900cfd7f7a14ee4ec35e4` |
| 13 | `theorem` | [isInt_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/isint-toslice--e1fffeac5cae6cc39c3e1c73.md) | 98 | `result-track:e1fffeac5cae6cc39c3e1c730c55ff20fa90be53e131eaea71fc5da264b5e9b9` |
| 14 | `theorem` | [isInt_comp_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/isint-comp-toslice--3479f433fc6750982be55f3d.md) | 102 | `result-track:3479f433fc6750982be55f3db96e1e97d7b00bdbb8ac6a6345a9e510dc69b580` |
| 15 | `theorem` | [toInt?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-toslice--9f4135e24d74b95d9eb7a6b8.md) | 106 | `result-track:9f4135e24d74b95d9eb7a6b8e2a4a2285422b0a3c277a8c8b958035579a59bb6` |
| 16 | `theorem` | [toInt?_comp_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-comp-toslice--5308a98d1dc6f89390e6e34b.md) | 110 | `result-track:5308a98d1dc6f89390e6e34b78df5cb427e149d8e1ffaf26dace26e09be1d3af` |
| 17 | `theorem` | [Slice.isInt_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/slice-isint-copy--319fd372bf5240b245d9247e.md) | 114 | `result-track:319fd372bf5240b245d9247e8470b02a816b9c00d9d4a5ac0f9572992eaad705` |
| 18 | `theorem` | [Slice.isInt_comp_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/slice-isint-comp-copy--aed3aad1bea1dacf79176870.md) | 118 | `result-track:aed3aad1bea1dacf7917687005d75d9b6267412a081dc78406dc85b07ccc60a9` |
| 19 | `theorem` | [Slice.toInt?_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/slice-toint-copy--846f6ed6cb0ed4e8ef4f8813.md) | 122 | `result-track:846f6ed6cb0ed4e8ef4f8813af22d8b7ade9f17d229fb2e07cf2e30d69db23ba` |
| 20 | `theorem` | [Slice.toInt?_comp_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/slice-toint-comp-copy--a452e35960bf47873832acb0.md) | 126 | `result-track:a452e35960bf47873832acb0c889274ef975f2ab8cc5104e226737c84f7c4390` |
| 21 | `theorem` | [toInt?_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-eq-some-iff--e6e4557d218c8fde7001997b.md) | 129 | `result-track:e6e4557d218c8fde7001997be71f65482eeb3f4063829736a6b93dc3c003ac58` |
| 22 | `theorem` | [isSome_toInt?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/issome-toint--7fa74d2e28b11befb9b889ae.md) | 134 | `result-track:7fa74d2e28b11befb9b889ae8feee7d2f96d1ff86cb4bc5e2095119a7d5dd755` |
| 23 | `theorem` | [isInt_of_toInt?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/isint-of-toint-eq-some--72ede67e383fd55c2f8ec8c9.md) | 137 | `result-track:72ede67e383fd55c2f8ec8c9b978a63691b646537897e07cd9f67902a6cff935` |
| 24 | `theorem` | [toInt?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-eq-none-iff--61b06ac43e2e05b3782b369f.md) | 141 | `result-track:61b06ac43e2e05b3782b369fd2ba41f99d7e2a5aff869b18cdc2a0be221a050d` |
| 25 | `theorem` | [toInt?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-eq-none--01ec5fc46de2756c69451c8a.md) | 144 | `result-track:01ec5fc46de2756c69451c8a5758eafe3d76b9fa32a6d8ffb97be5022cd23d08` |
| 26 | `theorem` | [isInt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/isint-iff--995079ab9f8a06a822266586.md) | 147 | `result-track:995079ab9f8a06a822266586a8466cffcd673b725aef94073be427f25c9f1d71` |
| 27 | `theorem` | [isInt_of_isNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/isint-of-isnat--3a00e034bc7e77b2dc74de16.md) | 151 | `result-track:3a00e034bc7e77b2dc74de16a99979389b30171b91beef012e0e6f35e21dc282` |
| 28 | `theorem` | [toInt?_eq_toNat?_of_startsWith_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-eq-tonat-of-startswith-eq-false--2ae0744ed1795a3c483a3e6c.md) | 154 | `result-track:2ae0744ed1795a3c483a3e6c4e9e7296af10e77b634c3298b2f6b85afd2a5945` |
| 29 | `theorem` | [toInt?_minus_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-minus-append--4a1e671f236855a4003a22c8.md) | 160 | `result-track:4a1e671f236855a4003a22c8618c00d3700681741b65684915fe512a4a7d54c2` |
| 30 | `theorem` | [toInt?_eq_some_of_toNat?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-eq-some-of-tonat-eq-some--bdf399807c81616627efefc2.md) | 165 | `result-track:bdf399807c81616627efefc21fdf1a4a52c746c5040510978f7f51940604f3a9` |
| 31 | `theorem` | [Nat.toInt?_repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/nat-toint-repr--b6eca89ce9eb3c7914433a9f.md) | 172 | `result-track:b6eca89ce9eb3c7914433a9fb50d6ee55173a397a805dd24bfac57b2ed9ab06d` |
| 32 | `theorem` | [Nat.isInt_repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/nat-isint-repr--6a55c780a6e874cc80607d1a.md) | 176 | `result-track:6a55c780a6e874cc80607d1a0cd23de482bbb4fadf826fd344a4492f45250077` |
| 33 | `theorem` | [toInt?_repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/toint-repr--daa0060e6b921aec3e6f3a29.md) | 182 | `result-track:daa0060e6b921aec3e6f3a29ce12caeaa4e7179efd61b3a3b51fd01d5e1d3974` |
| 34 | `theorem` | [isInt_repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/isint-repr--7cdb6344cd60611482b1bef3.md) | 187 | `result-track:7cdb6344cd60611482b1bef33ed2bf41053fa843a46cf78ccc39493b426f5e6a` |
| 35 | `theorem` | [repr_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/repr-injective--80ccdedeed08a90696d23576.md) | 190 | `result-track:80ccdedeed08a90696d235762490f9e3eebe8223780086787b9637bd5a941f33` |
| 36 | `theorem` | [repr_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/declarations/repr-inj--f40ad9e5c82ca015743254d6.md) | 194 | `result-track:f40ad9e5c82ca015743254d61add27c65a4ddf70c4edad8409ef15b329268858` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
