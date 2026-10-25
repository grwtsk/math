# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ReducedProduct.Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be17842a5111e1e9682fe943a3230d092ef2e93d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be17842a5111e1e9682fe943a3230d092ef2e93d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.CountableInter` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ReducedOrdinalLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean/declarations/reducedordinallt--18e997d60f6751464f2ebdbc.md) | 29 | `declaration-track:18e997d60f6751464f2ebdbc8ecf738d420d5c8dbd9ac24cb66de5a8da67a4d6` |
| 2 | `theorem` | [reducedOrdinalLT_wellFounded](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean/declarations/reducedordinallt-wellfounded--a844ad633c8ad39a0bdb767e.md) | 33 | `result-track:a844ad633c8ad39a0bdb767e79ff62d4cb23d9b9ec19867f5628e67e62969e51` |
| 3 | `theorem` | [reducedOrdinalLT_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean/declarations/reducedordinallt-congr--ecc5e8592b220ee74e1b32a0.md) | 44 | `result-track:ecc5e8592b220ee74e1b32a0dce59f3328710d94edac23694d41bd12124267a7` |
| 4 | `def` | [reducedOrdinalSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean/declarations/reducedordinalsetoid--0e13e2e8eb886376fb27f89d.md) | 56 | `declaration-track:0e13e2e8eb886376fb27f89d0d331a4714590f3978712c6746bec1d0ac99c369` |
| 5 | `abbrev` | [ReducedOrdinalProduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean/declarations/reducedordinalproduct--fc6345a7c26667c2d4fb4be0.md) | 62 | `declaration-track:fc6345a7c26667c2d4fb4be09722d881c3f2f4491bf3bfb0cc47863126da173d` |
| 6 | `def` | [ReducedProductLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean/declarations/reducedproductlt--a7aaac56918b72f2a8d8710a.md) | 66 | `declaration-track:a7aaac56918b72f2a8d8710a776a27e5911f89889219e1053b2bf95f21629408` |
| 7 | `theorem` | [reducedProductLT_wellFounded](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean/declarations/reducedproductlt-wellfounded--338cf002870da7bf0d443451.md) | 73 | `result-track:338cf002870da7bf0d443451b0a59bac2597757baf8fae26078709793dad4fec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
