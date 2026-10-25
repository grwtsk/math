# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Anchor.Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3c62c9e1417fd34723792d25f468eed43d98872",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3c62c9e1417fd34723792d25f468eed43d98872`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.MarkNestedSubsingletons` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hashName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/declarations/hashname--b736f0a3e32532ac84313bc4.md) | 21 | `declaration-track:b736f0a3e32532ac84313bc4152b013ebad533be829117dedb486910422b4cf5` |
| 2 | `def` | [mix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/declarations/mix--dd0a16b9345b7a3e12f9b7dc.md) | 37 | `declaration-track:dd0a16b9345b7a3e12f9b7dc18f4d4adaaaf4539062b56c509e124d2428be350` |
| 3 | `def` | [getAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/declarations/getanchor--a27a0dc00e25cfe990f7aa9c.md) | 42 | `declaration-track:a27a0dc00e25cfe990f7aa9ca25241c9a8e8ec55ea1f991368d1779fec007935` |
| 4 | `def` | [AnchorRef.matches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/declarations/anchorref-matches--dc611ccc2e99ef91e5ef2f6b.md) | 92 | `declaration-track:dc611ccc2e99ef91e5ef2f6bd139129f14b80b9f622add96784d05bc2ef6b62f` |
| 5 | `class` | [HasAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/declarations/hasanchor--6ecc3d58347c7755605d3e9b.md) | 96 | `declaration-track:6ecc3d58347c7755605d3e9b5924debddf4a093275add4e6e1a15164d32948c5` |
| 6 | `def` | [getNumDigitsForAnchors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/declarations/getnumdigitsforanchors--761a1bb730f8954131aff345.md) | 106 | `declaration-track:761a1bb730f8954131aff3456840819cb51ac431eb1877d60a089ca50bf61b22` |
| 7 | `structure` | [ExprWithAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/declarations/exprwithanchor--e0580d3e7a2aa9a24c1a776a.md) | 127 | `declaration-track:e0580d3e7a2aa9a24c1a776a3e51ef2916a09cfcdff397fb14d93a5fdec91989` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/declarations/instance--6dbb8b11ff0695b213b56d10.md) | 131 | `declaration-track:6dbb8b11ff0695b213b56d10412d5f57fb5decfbee3e66c90ec265c5bd9232e2` |
| 9 | `def` | [mkAnchorSyntaxFromPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/declarations/mkanchorsyntaxfromprefix--eacb9b5911fd6bdefa206280.md) | 134 | `declaration-track:eacb9b5911fd6bdefa206280d63de559ad0c1c9d7d1820c6052dff42db7ad78b` |
| 10 | `def` | [mkAnchorSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/declarations/mkanchorsyntax--3a5d30e2cba274e634e61663.md) | 138 | `declaration-track:3a5d30e2cba274e634e6166351216781e7a4d7917e4e5743d350622d5e5f9dac` |
| 11 | `def` | [SplitInfo.getAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/declarations/splitinfo-getanchor--41961d2f958bb4fa7a1ea1fa.md) | 142 | `declaration-track:41961d2f958bb4fa7a1ea1fa23619bd5a0d5aa1b9ec440483581a2d31590ed0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
