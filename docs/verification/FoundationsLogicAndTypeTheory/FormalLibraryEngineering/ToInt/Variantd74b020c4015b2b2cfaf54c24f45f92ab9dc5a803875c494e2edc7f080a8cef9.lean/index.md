# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToInt.Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a266a720e1382a16d4c2fde72b19fad17fde4aca",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a266a720e1382a16d4c2fde72b19fad17fde4aca`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.LawfulBEqTactics` — import line 9; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IntInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/intinterval--076e94038dc936926878c7ea.md) | 36 | `declaration-track:076e94038dc936926878c7eab40343ed48914e7f366480f4072bf251473e5d98` |
| 2 | `abbrev` | [uint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/uint--f06e41e9f7216dddc44d8c08.md) | 50 | `declaration-track:f06e41e9f7216dddc44d8c08d60508da6d97e18a38927e7ab3d06ddef4e98bf2` |
| 3 | `abbrev` | [sint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/sint--61a4742c5d300ab9180f1e5f.md) | 52 | `declaration-track:61a4742c5d300ab9180f1e5f2412acdf3aed13a140e37a1b8c9c02fac766ac53` |
| 4 | `def` | [lo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/lo--2f3d43bf8c293c6f35ccffce.md) | 55 | `declaration-track:2f3d43bf8c293c6f35ccffceca6ee2a6c27c6faeac896680393751383fdbdb24` |
| 5 | `def` | [hi?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/hi--6becad9ba9b5430920154b65.md) | 63 | `declaration-track:6becad9ba9b5430920154b65cbf78a1bb1aa2ab997bf2f93016633cb180ad57e` |
| 6 | `def` | [nonEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/nonempty--a5c21613fb2b151a0cc67471.md) | 70 | `declaration-track:a5c21613fb2b151a0cc67471d65b541bfe37866d48773ca3dd3fea79dac1d25b` |
| 7 | `def` | [isFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/isfinite--52b32d1d98f16206f35fb84a.md) | 77 | `declaration-track:52b32d1d98f16206f35fb84abbd9e416e231e45f59a487eb85b62f4e357aab54` |
| 8 | `def` | [mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/mem--fa9fa2449d1166b188b89181.md) | 84 | `declaration-track:fa9fa2449d1166b188b891810923e3def2208348662c286245a541a83f4fc1d5` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/instance--b15fdbd76de6465012bce0ef.md) | 91 | `declaration-track:b15fdbd76de6465012bce0ef0c817cc696cb691078ae85db7d4b419d7c082fc1` |
| 10 | `theorem` | [mem_co](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/mem-co--3aeedf6394121ebb8112dbb2.md) | 94 | `result-track:3aeedf6394121ebb8112dbb288c714a8d3a40bc731fbaf6f6bd657c97bb1ac48` |
| 11 | `theorem` | [mem_ci](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/mem-ci--7616ff69d6bdfa3ce614d95a.md) | 95 | `result-track:7616ff69d6bdfa3ce614d95ae15c5f668e0710570a649454dba38d0ba60b25d8` |
| 12 | `theorem` | [mem_io](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/mem-io--a9c22ff2d6c20422c3794bc7.md) | 96 | `result-track:a9c22ff2d6c20422c3794bc75c71dd16dded73cbdcccaed936bf2e679326cc93` |
| 13 | `theorem` | [mem_ii](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/mem-ii--b08fe7109059f01ee330b696.md) | 97 | `result-track:b08fe7109059f01ee330b696ea2a934116ba6d0b846988f866f9d41bd81027f6` |
| 14 | `theorem` | [nonEmpty_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/nonempty-of-mem--ffd2a00c6ac34eac50331024.md) | 99 | `result-track:ffd2a00c6ac34eac50331024af3acfbe566b730146f9c0806b037407a5c3b244` |
| 15 | `def` | [wrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/wrap--573a60f85c5d9c5e5d1bbeff.md) | 103 | `declaration-track:573a60f85c5d9c5e5d1bbeffa034de4375871418e1678745b826e37746512fb4` |
| 16 | `theorem` | [wrap_wrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/wrap-wrap--f09ed2524933ec5722ec1081.md) | 110 | `result-track:f09ed2524933ec5722ec1081a5231fe392c5a1fb29292c4547a636d32bc0a6f6` |
| 17 | `theorem` | [wrap_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/wrap-mem--339d4a94b63c88dc2eb3fb40.md) | 114 | `result-track:339d4a94b63c88dc2eb3fb4086a78f02316089da4b0009b6015faf1d14ecf588` |
| 18 | `theorem` | [wrap_eq_self_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/wrap-eq-self-iff--87f85f4609617f3ae0f9a96a.md) | 135 | `result-track:87f85f4609617f3ae0f9a96a6bce4956568c8fae4680706340a3c4b3ea4521c5` |
| 19 | `theorem` | [wrap_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/wrap-add--dc544b92527c711c33dd47bd.md) | 156 | `result-track:dc544b92527c711c33dd47bd3154bd9f76a51f864260e508187a6206cf331390` |
| 20 | `theorem` | [wrap_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/wrap-mul--290aa84790026eb3f0ceb7cf.md) | 169 | `result-track:290aa84790026eb3f0ceb7cfb9f91d5a0a63b684637d709c02caaa9309fe89bf` |
| 21 | `theorem` | [wrap_eq_bmod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/wrap-eq-bmod--eb48d74ad66c4419bc16970b.md) | 189 | `result-track:eb48d74ad66c4419bc16970bd08b1e5751eebaa843a06d7a9e0261a17ca5f0ac` |
| 22 | `theorem` | [wrap_eq_wrap_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/wrap-eq-wrap-iff--ab6512dc6bf149b4162f41db.md) | 228 | `result-track:ab6512dc6bf149b4162f41db1676b08af2289b5bb48a52972d0132ba23ec6aa5` |
| 23 | `class` | [ToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/toint--763b92cc78cfcaabc896e335.md) | 241 | `declaration-track:763b92cc78cfcaabc896e335e48ef46bf14041fef45b17ca47c3d776fceba569` |
| 24 | `class` | [ToInt.Zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/toint-zero--d71c2160005d484db80eec7a.md) | 252 | `declaration-track:d71c2160005d484db80eec7a8991839277b748bf84e2897a4cc33e4c45ef19c2` |
| 25 | `class` | [ToInt.OfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/toint-ofnat--0488a6534df6d5ae42141b99.md) | 259 | `declaration-track:0488a6534df6d5ae42141b994171726f89e8900856c85339e46c88923d036f5b` |
| 26 | `class` | [ToInt.Add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/toint-add--b18b9c6389aa613bd364dfda.md) | 266 | `declaration-track:b18b9c6389aa613bd364dfdafe096d5a8bb3651175364e71eb1634baacf25285` |
| 27 | `class` | [ToInt.Neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/toint-neg--9f90847da6c717b083668762.md) | 273 | `declaration-track:9f90847da6c717b083668762342e5000a1fad1a6f849450d1019a261c6eb6a13` |
| 28 | `class` | [ToInt.Sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/toint-sub--81bb68615bf3899e9b8c599d.md) | 280 | `declaration-track:81bb68615bf3899e9b8c599d38e70e4188130ce945507b4999dd22c7c75d96ea` |
| 29 | `class` | [ToInt.Mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/toint-mul--92d473666487a7140c20cf60.md) | 287 | `declaration-track:92d473666487a7140c20cf600750b806cc0811829d9eb029c88e871d1125ed38` |
| 30 | `class` | [ToInt.Pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/toint-pow--e8205f04f8f70d9f667c9121.md) | 294 | `declaration-track:e8205f04f8f70d9f667c9121dc71301785258110902cc75fdbac3a96b5941ab2` |
| 31 | `class` | [ToInt.Mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/toint-mod--f6dd59629bd4f0dc07dd6fd5.md) | 301 | `declaration-track:f6dd59629bd4f0dc07dd6fd50799482d6826ca835f0eca030810cfd9dcc4a9f5` |
| 32 | `class` | [ToInt.Div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/toint-div--afd6e5afeaa8900e127d4b08.md) | 312 | `declaration-track:afd6e5afeaa8900e127d4b088675ec3af52b4e73ae29b7d5fc70e5ae3c92ffd7` |
| 33 | `class` | [ToInt.LE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/toint-le--776faec838200736f8a0aa45.md) | 323 | `declaration-track:776faec838200736f8a0aa45ade7cf8a6c12e127b68ac6ca975627437dee8473` |
| 34 | `class` | [ToInt.LT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/toint-lt--97579d4cdc9076bab39ccb34.md) | 330 | `declaration-track:97579d4cdc9076bab39ccb34480673bdd9ab902225f7ba231cc259e41923b2b3` |
| 35 | `theorem` | [Zero.wrap_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/zero-wrap-zero--5c4ff3d8fb37898f58597d75.md) | 339 | `result-track:5c4ff3d8fb37898f58597d75594e423c6c78a1d4fd0e06b76ff0c31c94abbb42` |
| 36 | `theorem` | [wrap_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/wrap-toint--d7e0519bce0969eeb5da8000.md) | 346 | `result-track:d7e0519bce0969eeb5da8000085ef12b46ccf0fad4530036786603dfe6703161` |
| 37 | `def` | [Sub.of_sub_eq_add_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/sub-of-sub-eq-add-neg--891539c6ce66980700ee69f9.md) | 355 | `declaration-track:891539c6ce66980700ee69f9bd9beefa1f622e638edd7c79660f8e644a1207e9` |
| 38 | `def` | [toIntUnexpander](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/declarations/tointunexpander--0f2020dbc8caa269b4b1f7a6.md) | 370 | `declaration-track:0f2020dbc8caa269b4b1f7a69e0498e3490bcd2df84dc85ce46ed9930a26a440` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
