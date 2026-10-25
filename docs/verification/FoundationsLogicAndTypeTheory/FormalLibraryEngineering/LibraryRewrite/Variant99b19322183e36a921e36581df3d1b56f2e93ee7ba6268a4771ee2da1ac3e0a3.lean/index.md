# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LibraryRewrite.Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fbd1ea39c1944d0b63c18e8dd99e1a875052a9b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fbd1ea39c1944d0b63c18e8dd99e1a875052a9b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Widget.LibraryRewrite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean/declarations/atzero--9003de18d164005522371841.md) | 193 | `declaration-track:9003de18d164005522371841cb55fb687b4edcbf32f9825449fd07f0c1cdeedd` |
| 2 | `theorem` | [atZero_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean/declarations/atzero-neg--90222fe99cc940d3d3bad372.md) | 195 | `result-track:90222fe99cc940d3d3bad372dc96f034afcd0761638409d9e7d9d82aeee6bc2a` |
| 3 | `theorem` | [neg_atZero_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean/declarations/neg-atzero-neg--03a140d1e71c3aa0f5ecb225.md) | 196 | `result-track:03a140d1e71c3aa0f5ecb2253b388bead0a14a7986efbcb81a7db2f9a1d55c6a` |
| 4 | `theorem` | [atZero_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean/declarations/atzero-add--2e8d49adcf862777a9b1d2d5.md) | 198 | `result-track:2e8d49adcf862777a9b1d2d5c82dfb465a7f3c208806cdd0bbbd25b1f02e5ad1` |
| 5 | `theorem` | [atZero_add_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean/declarations/atzero-add-const--428a60e42e9a38db0e0a1dca.md) | 199 | `result-track:428a60e42e9a38db0e0a1dcab39bd9146cf7248e3416a56653ec1e6b1bbe90bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
