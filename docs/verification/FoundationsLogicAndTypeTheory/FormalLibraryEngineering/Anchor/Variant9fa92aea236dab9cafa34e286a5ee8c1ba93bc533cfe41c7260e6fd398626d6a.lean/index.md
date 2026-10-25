# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Anchor.Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cee02ee798d669f74a9c4ba7a6cf77442dfb2e3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cee02ee798d669f74a9c4ba7a6cf77442dfb2e3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.MarkNestedSubsingletons` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hashName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/declarations/hashname--6a9ed7597660e1810cb9cd60.md) | 29 | `declaration-track:6a9ed7597660e1810cb9cd60e5672a9187f3a67b28bde61a50e538130af43b64` |
| 2 | `def` | [mix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/declarations/mix--99fdb613b33d25d44bf8aea5.md) | 45 | `declaration-track:99fdb613b33d25d44bf8aea53f29ceb4e8ab2e1028c30afcb1ef4559c77106c2` |
| 3 | `def` | [getAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/declarations/getanchor--9e94b851cf41e09b11282b72.md) | 50 | `declaration-track:9e94b851cf41e09b11282b724b4d30c10634694882cd3d51525cdb31e82d6908` |
| 4 | `def` | [AnchorRef.matches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/declarations/anchorref-matches--26cca065ff979729b865f52d.md) | 100 | `declaration-track:26cca065ff979729b865f52dc7b7d4efbe09df7360ca1fe6088544149afc8489` |
| 5 | `class` | [HasAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/declarations/hasanchor--3fa9b900d2cb5a193fd03ab1.md) | 104 | `declaration-track:3fa9b900d2cb5a193fd03ab1946d61f83aa45618b1858af9231e4ff3157416f6` |
| 6 | `def` | [getNumDigitsForAnchors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/declarations/getnumdigitsforanchors--8b3f7409e8496bd03b610136.md) | 114 | `declaration-track:8b3f7409e8496bd03b610136298c1c7b6d7eae439c072af72b76f00e1e4bbdca` |
| 7 | `structure` | [ExprWithAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/declarations/exprwithanchor--b5f3f8663b20a1eaa56099c1.md) | 135 | `declaration-track:b5f3f8663b20a1eaa56099c1c394b9f61291518534bb44ac9f561b08ce87bb91` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/declarations/instance--dc9bf6d589833586ee00b50c.md) | 139 | `declaration-track:dc9bf6d589833586ee00b50caba37f478baffb1a96e7b899082d0b9f9f753f0d` |
| 9 | `def` | [mkAnchorSyntaxFromPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/declarations/mkanchorsyntaxfromprefix--1882548b77a1e69334d7dfd2.md) | 142 | `declaration-track:1882548b77a1e69334d7dfd22446eab23875439789769e5ad26c05abf12527ed` |
| 10 | `def` | [mkAnchorSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/declarations/mkanchorsyntax--38dc490fb7e4f3c1527ca89c.md) | 146 | `declaration-track:38dc490fb7e4f3c1527ca89c2f793873d7f1bff74d2cc9e4d3f6a03144847e59` |
| 11 | `def` | [SplitInfo.getAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a.lean/declarations/splitinfo-getanchor--0b62ca1a56dace66ccd4e128.md) | 150 | `declaration-track:0b62ca1a56dace66ccd4e12844326a3da79b1689d60cd74cd29001da0e2d1d20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
