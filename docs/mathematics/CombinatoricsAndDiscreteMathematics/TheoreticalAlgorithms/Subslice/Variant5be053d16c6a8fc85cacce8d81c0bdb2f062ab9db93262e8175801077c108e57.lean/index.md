# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subslice.Variant5be053d16c6a8fc85cacce8d81c0bdb2f062ab9db93262e8175801077c108e57

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variant5be053d16c6a8fc85cacce8d81c0bdb2f062ab9db93262e8175801077c108e57.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `649c9a7df2be15285a818fcd51d4bccd978709d7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variant5be053d16c6a8fc85cacce8d81c0bdb2f062ab9db93262e8175801077c108e57.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Subslice](declarations/subslice--9f86a7a92d2ee4a05f8227df.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance--02d97008f3f0dd72e9b13db1.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toSlice](declarations/toslice--497aa2bd81bb1ce2414dce1e.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [str_toSlice](declarations/str-toslice--90bb5a31865b03fd8aa3b832.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [startInclusive_toSlice](declarations/startinclusive-toslice--17078f0bbc75c0aed5be7500.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [endExclusive_toSlice](declarations/endexclusive-toslice--8baa1700fc06fd47723bfa52.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isEmpty_toSlice_iff](declarations/isempty-toslice-iff--5c97c89133f3babb4527ea7b.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance--477dfd6346ce4e2620625f93.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [copy](declarations/copy--7a9dfcf735f2dfb0a7d98c0a.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [toString](declarations/tostring--c14aae917d2565a7248976a5.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance--fb5d63172a4031b13a8ed0ec.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [copy_eq](declarations/copy-eq--e939550d4edbbaf1885386d0.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toString_eq](declarations/tostring-eq--3ed380f96cdd55b0f8a4f034.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toStringToString_eq](declarations/tostringtostring-eq--8857d8dd16ef7c6ef6930860.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [subslice](declarations/subslice--cec54d3bcabe3a0e00f9f077.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toSlice_subslice](declarations/toslice-subslice--ca1e2ea90b56a4e2c1b29077.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [startInclusive_subslice](declarations/startinclusive-subslice--8a7e1fd8a9ed79dc992da461.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [endExclusive_subslice](declarations/endexclusive-subslice--532ad490b94f4dc51a285276.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [subslice!](declarations/subslice--823c4416409512d2f5aca86c.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [subslice!_eq_subslice](declarations/subslice-eq-subslice--6e5f48bdb4f6d2dc3e1f1e11.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [subsliceFrom](declarations/subslicefrom--893c012818e590cd1c809d63.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [startInclusive_subsliceFrom](declarations/startinclusive-subslicefrom--6b8318bf462b359e31f6b6b4.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [endExclusive_subsliceFrom](declarations/endexclusive-subslicefrom--077824667d6fc48ceb3baaff.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [subslice_endPos](declarations/subslice-endpos--798e73d78f669456823cac61.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toSlice_subsliceFrom](declarations/toslice-subslicefrom--05f82faa41abe761bb8d9e91.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toSubslice](declarations/tosubslice--b143b97030462e5c3bdf4b37.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [startInclusive_toSubslice](declarations/startinclusive-tosubslice--d14584ae1441adda7d3738ea.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [endExclusive_toSubslice](declarations/endexclusive-tosubslice--d2de72f2bdafa2b53ba8cbf6.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ofSliceFrom](declarations/ofslicefrom--e45d34a0797797437b31ae2c.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [startInclusive_ofSliceFrom](declarations/startinclusive-ofslicefrom--68c5a9794ca3d3843b5ff05a.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [endExclusive_ofSliceFrom](declarations/endexclusive-ofslicefrom--57da391a658c97d340bc3071.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [extendLeft](declarations/extendleft--1c778438e708ae49dcdf21ab.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [startInclusive_extendLeft](declarations/startinclusive-extendleft--41613ea386689c54f8dc2c8b.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [endExclusive_extendLeft](declarations/endexclusive-extendleft--e4b16057eeab788051e22771.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [extendLeft_extendLeft](declarations/extendleft-extendleft--b5ccbdfb86bbfaa85f40a56f.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [extendLeft_self](declarations/extendleft-self--4cb9c8272486c498b823fae5.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [cast](declarations/cast--6b5adc0ff61040f080e8bdf3.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [startInclusive_cast](declarations/startinclusive-cast--ea83d45b0a146f79001ec1d1.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [endExclusive_cast](declarations/endexclusive-cast--9988df2b395bfc399534af8b.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cast_rfl](declarations/cast-rfl--797694cb422d89b2fb669ed1.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
