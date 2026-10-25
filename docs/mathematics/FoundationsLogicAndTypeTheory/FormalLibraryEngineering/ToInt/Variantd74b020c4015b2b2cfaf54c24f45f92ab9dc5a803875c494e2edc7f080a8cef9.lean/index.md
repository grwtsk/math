# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToInt.Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a266a720e1382a16d4c2fde72b19fad17fde4aca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [IntInterval](declarations/intinterval--076e94038dc936926878c7ea.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [uint](declarations/uint--f06e41e9f7216dddc44d8c08.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [sint](declarations/sint--61a4742c5d300ab9180f1e5f.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [lo?](declarations/lo--2f3d43bf8c293c6f35ccffce.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [hi?](declarations/hi--6becad9ba9b5430920154b65.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [nonEmpty](declarations/nonempty--a5c21613fb2b151a0cc67471.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [isFinite](declarations/isfinite--52b32d1d98f16206f35fb84a.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mem](declarations/mem--fa9fa2449d1166b188b89181.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance--b15fdbd76de6465012bce0ef.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_co](declarations/mem-co--3aeedf6394121ebb8112dbb2.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_ci](declarations/mem-ci--7616ff69d6bdfa3ce614d95a.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_io](declarations/mem-io--a9c22ff2d6c20422c3794bc7.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_ii](declarations/mem-ii--b08fe7109059f01ee330b696.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nonEmpty_of_mem](declarations/nonempty-of-mem--ffd2a00c6ac34eac50331024.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [wrap](declarations/wrap--573a60f85c5d9c5e5d1bbeff.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [wrap_wrap](declarations/wrap-wrap--f09ed2524933ec5722ec1081.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [wrap_mem](declarations/wrap-mem--339d4a94b63c88dc2eb3fb40.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [wrap_eq_self_iff](declarations/wrap-eq-self-iff--87f85f4609617f3ae0f9a96a.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [wrap_add](declarations/wrap-add--dc544b92527c711c33dd47bd.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [wrap_mul](declarations/wrap-mul--290aa84790026eb3f0ceb7cf.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [wrap_eq_bmod](declarations/wrap-eq-bmod--eb48d74ad66c4419bc16970b.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [wrap_eq_wrap_iff](declarations/wrap-eq-wrap-iff--ab6512dc6bf149b4162f41db.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `class` | [ToInt](declarations/toint--763b92cc78cfcaabc896e335.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `class` | [ToInt.Zero](declarations/toint-zero--d71c2160005d484db80eec7a.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `class` | [ToInt.OfNat](declarations/toint-ofnat--0488a6534df6d5ae42141b99.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `class` | [ToInt.Add](declarations/toint-add--b18b9c6389aa613bd364dfda.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `class` | [ToInt.Neg](declarations/toint-neg--9f90847da6c717b083668762.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `class` | [ToInt.Sub](declarations/toint-sub--81bb68615bf3899e9b8c599d.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `class` | [ToInt.Mul](declarations/toint-mul--92d473666487a7140c20cf60.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `class` | [ToInt.Pow](declarations/toint-pow--e8205f04f8f70d9f667c9121.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `class` | [ToInt.Mod](declarations/toint-mod--f6dd59629bd4f0dc07dd6fd5.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `class` | [ToInt.Div](declarations/toint-div--afd6e5afeaa8900e127d4b08.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `class` | [ToInt.LE](declarations/toint-le--776faec838200736f8a0aa45.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `class` | [ToInt.LT](declarations/toint-lt--97579d4cdc9076bab39ccb34.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Zero.wrap_zero](declarations/zero-wrap-zero--5c4ff3d8fb37898f58597d75.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [wrap_toInt](declarations/wrap-toint--d7e0519bce0969eeb5da8000.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Sub.of_sub_eq_add_neg](declarations/sub-of-sub-eq-add-neg--891539c6ce66980700ee69f9.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [toIntUnexpander](declarations/tointunexpander--0f2020dbc8caa269b4b1f7a6.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
