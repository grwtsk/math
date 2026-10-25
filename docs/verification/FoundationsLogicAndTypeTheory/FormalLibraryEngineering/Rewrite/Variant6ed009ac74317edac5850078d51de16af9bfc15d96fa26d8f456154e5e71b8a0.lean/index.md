# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variant6ed009ac74317edac5850078d51de16af9bfc15d96fa26d8f456154e5e71b8a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27952e6e7c40fbe5e62216f76b13436cc0a488cc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant6ed009ac74317edac5850078d51de16af9bfc15d96fa26d8f456154e5e71b8a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant6ed009ac74317edac5850078d51de16af9bfc15d96fa26d8f456154e5e71b8a0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant6ed009ac74317edac5850078d51de16af9bfc15d96fa26d8f456154e5e71b8a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27952e6e7c40fbe5e62216f76b13436cc0a488cc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant6ed009ac74317edac5850078d51de16af9bfc15d96fa26d8f456154e5e71b8a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant6ed009ac74317edac5850078d51de16af9bfc15d96fa26d8f456154e5e71b8a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Eqns` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabRewrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant6ed009ac74317edac5850078d51de16af9bfc15d96fa26d8f456154e5e71b8a0.lean/declarations/elabrewrite--bfbac2757349bf42dce8ceac.md) | 33 | `declaration-track:bfbac2757349bf42dce8ceac6dc8c5b502f26addc590fad417764826fd49e36a` |
| 2 | `def` | [finishElabRewrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant6ed009ac74317edac5850078d51de16af9bfc15d96fa26d8f456154e5e71b8a0.lean/declarations/finishelabrewrite--3574ada30be11e4d6acc56f0.md) | 54 | `declaration-track:3574ada30be11e4d6acc56f0a3c6e95ea6d83434388df4278983361c4a411f49` |
| 3 | `def` | [rewriteTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant6ed009ac74317edac5850078d51de16af9bfc15d96fa26d8f456154e5e71b8a0.lean/declarations/rewritetarget--7366c971d3a68d9b2eea40f3.md) | 61 | `declaration-track:7366c971d3a68d9b2eea40f3a520c21f62bfab772257416b5f8b7575c9235aa0` |
| 4 | `def` | [rewriteLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant6ed009ac74317edac5850078d51de16af9bfc15d96fa26d8f456154e5e71b8a0.lean/declarations/rewritelocaldecl--d0236bb2680951c38b3686b1.md) | 68 | `declaration-track:d0236bb2680951c38b3686b1df049b64b674d74c04df130702f8e10374dc47d5` |
| 5 | `def` | [withRWRulesSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant6ed009ac74317edac5850078d51de16af9bfc15d96fa26d8f456154e5e71b8a0.lean/declarations/withrwrulesseq--58183b572c275e5450c22c72.md) | 79 | `declaration-track:58183b572c275e5450c22c7214c15f8f8645a3dc8f8dc4a8e45a42356c8dc52d` |
| 6 | `def` | [evalRewriteSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant6ed009ac74317edac5850078d51de16af9bfc15d96fa26d8f456154e5e71b8a0.lean/declarations/evalrewriteseq--7cb8afb466a367e6a92f0da2.md) | 117 | `declaration-track:7cb8afb466a367e6a92f0da2f335b1a302282a76974768a1c46fd2e518f11fa1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
