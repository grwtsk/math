# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NthRewrite.Variantd408b9f2fca5d91c4fc4d53f2e4978ee488bdadbb02b941bbe80ec6cc0abb038

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16da418fc156007cd50b5b9b993856b98126f9b0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variantd408b9f2fca5d91c4fc4d53f2e4978ee488bdadbb02b941bbe80ec6cc0abb038.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variantd408b9f2fca5d91c4fc4d53f2e4978ee488bdadbb02b941bbe80ec6cc0abb038.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variantd408b9f2fca5d91c4fc4d53f2e4978ee488bdadbb02b941bbe80ec6cc0abb038.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16da418fc156007cd50b5b9b993856b98126f9b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variantd408b9f2fca5d91c4fc4d53f2e4978ee488bdadbb02b941bbe80ec6cc0abb038.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variantd408b9f2fca5d91c4fc4d53f2e4978ee488bdadbb02b941bbe80ec6cc0abb038.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Rewrite` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.BuiltinTerm` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rewriteTarget'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variantd408b9f2fca5d91c4fc4d53f2e4978ee488bdadbb02b941bbe80ec6cc0abb038.lean/declarations/rewritetarget--a73232d28de19f372d9b2239.md) | 24 | `declaration-track:a73232d28de19f372d9b22398cd1bc4844e07255db8fcfd934b7b5ea66d6fffb` |
| 2 | `def` | [rewriteLocalDecl'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variantd408b9f2fca5d91c4fc4d53f2e4978ee488bdadbb02b941bbe80ec6cc0abb038.lean/declarations/rewritelocaldecl--3318bb7224431072e65f2fde.md) | 35 | `declaration-track:3318bb7224431072e65f2fde0c26c1d0dea791c686e0b7756fc119373e529ecf` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variantd408b9f2fca5d91c4fc4d53f2e4978ee488bdadbb02b941bbe80ec6cc0abb038.lean/declarations/syntax--30c7046752aebaedcdee62b2.md) | 50 | `declaration-track:30c7046752aebaedcdee62b20f37593c2f3906967b9151c7f91f96e55d06ecd3` |
| 4 | `def` | [evalNthRewriteSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variantd408b9f2fca5d91c4fc4d53f2e4978ee488bdadbb02b941bbe80ec6cc0abb038.lean/declarations/evalnthrewriteseq--b1b7285f232905ce492ea470.md) | 52 | `declaration-track:b1b7285f232905ce492ea470ff146d8cdb5b6c86b3c9de9b223cf2346f4766a6` |
| 5 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variantd408b9f2fca5d91c4fc4d53f2e4978ee488bdadbb02b941bbe80ec6cc0abb038.lean/declarations/macro--dc941acb42d7337af7ae9ba2.md) | 70 | `declaration-track:dc941acb42d7337af7ae9ba2712742a3f24a38c2b25110fcdd7a56768f4088fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
