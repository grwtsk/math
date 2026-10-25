# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CbvEvalExt.Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8eab48d4d296b61fbd0a654fa039acf08ad5e9e9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8eab48d4d296b61fbd0a654fa039acf08ad5e9e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.AuxLemma` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Theorem.declName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/declarations/theorem-declname--cc24fdce35c2247ff59423b2.md) | 37 | `declaration-track:cc24fdce35c2247ff59423b23587fed5a4b0e6d7fc38ac3adce07294ec07826b` |
| 2 | `structure` | [CbvEvalEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/declarations/cbvevalentry--53e13594cb4dd6bb604f1a80.md) | 49 | `declaration-track:53e13594cb4dd6bb604f1a802cf12b57b6b61a99c88a154b2304b27854b586d5` |
| 3 | `def` | [mkCbvTheoremFromConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/declarations/mkcbvtheoremfromconst--c8918eba4bf277b6473ef1dc.md) | 57 | `declaration-track:c8918eba4bf277b6473ef1dc01ee4ae59bd7e19f5d16b199ce50d680185e9399` |
| 4 | `structure` | [CbvEvalState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/declarations/cbvevalstate--cbc8d32a680cee844d162c11.md) | 77 | `declaration-track:cbc8d32a680cee844d162c1148517892cfdc8eab3eb7b5f1a9819415d185278a` |
| 5 | `def` | [CbvEvalState.addEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/declarations/cbvevalstate-addentry--9c930d2d7e015bba8caa3898.md) | 82 | `declaration-track:9c930d2d7e015bba8caa389803e524e27502e2446907ea8611788118e8c62b65` |
| 6 | `def` | [CbvEvalState.rebuildLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/declarations/cbvevalstate-rebuildlemmas--45f5eee528e7d412f2de075a.md) | 90 | `declaration-track:45f5eee528e7d412f2de075ac074814205090b72ae45ef8aa029f5c1296e27ad` |
| 7 | `def` | [CbvEvalState.erase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/declarations/cbvevalstate-erase--0ffbae94b9c9416c43ec5108.md) | 98 | `declaration-track:0ffbae94b9c9416c43ec51081098a8de9fb7816f3679dbfc1fbd3d10762a9548` |
| 8 | `abbrev` | [CbvEvalExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/declarations/cbvevalextension--c9ba1fe1e51dccb921311927.md) | 108 | `declaration-track:c9ba1fe1e51dccb921311927b8d80c652f859845a8dc686b02ac875333708ea2` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/declarations/builtin-initialize--8f07f651f1d5e3a246993fdf.md) | 110 | `declaration-track:8f07f651f1d5e3a246993fdf687ae6d9f38af66ac8ced4f1cf32b81a385eb0af` |
| 10 | `def` | [getCbvEvalLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/declarations/getcbvevallemmas--7e73cd058a0a8ffb5665fa86.md) | 123 | `declaration-track:7e73cd058a0a8ffb5665fa86b72c40fc367ce5b0f349f4eca1424011b3cb891f` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/declarations/builtin-initialize--e34c117fb59161270c4a7abd.md) | 127 | `declaration-track:e34c117fb59161270c4a7abd8d1812ae3e320677934e34932557374da07578d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
