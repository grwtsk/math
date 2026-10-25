# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReifiedBVExpr.Variant00472b1509a2ed02c8f8ea16b74c454ce0baaab68813410c7eaa38c28f0b6d42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c169cebc0db2cf70d0489b06bb7d179cbd68065",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variant00472b1509a2ed02c8f8ea16b74c454ce0baaab68813410c7eaa38c28f0b6d42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variant00472b1509a2ed02c8f8ea16b74c454ce0baaab68813410c7eaa38c28f0b6d42.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variant00472b1509a2ed02c8f8ea16b74c454ce0baaab68813410c7eaa38c28f0b6d42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c169cebc0db2cf70d0489b06bb7d179cbd68065`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variant00472b1509a2ed02c8f8ea16b74c454ce0baaab68813410c7eaa38c28f0b6d42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variant00472b1509a2ed02c8f8ea16b74c454ce0baaab68813410c7eaa38c28f0b6d42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.LitValues` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkEvalExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variant00472b1509a2ed02c8f8ea16b74c454ce0baaab68813410c7eaa38c28f0b6d42.lean/declarations/mkevalexpr--f164ad4b96a0a1b83a7088fc.md) | 34 | `declaration-track:f164ad4b96a0a1b83a7088fc251a7df9980dd42e297fa10ec7ffc360c69b256a` |
| 2 | `def` | [mkBVRefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variant00472b1509a2ed02c8f8ea16b74c454ce0baaab68813410c7eaa38c28f0b6d42.lean/declarations/mkbvrefl--c5637b9e01af8d30a5f4e4b1.md) | 37 | `declaration-track:c5637b9e01af8d30a5f4e4b19ba93d92688f42c0b13e03924d80fd44564cc7a6` |
| 3 | `def` | [mkAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variant00472b1509a2ed02c8f8ea16b74c454ce0baaab68813410c7eaa38c28f0b6d42.lean/declarations/mkatom--1e624384c681b0507e26244c.md) | 46 | `declaration-track:1e624384c681b0507e26244cb266a00dc5bb991dc6a75c4f6573392dc93c5794` |
| 4 | `def` | [getNatOrBvValue?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variant00472b1509a2ed02c8f8ea16b74c454ce0baaab68813410c7eaa38c28f0b6d42.lean/declarations/getnatorbvvalue--4909b51cbefb609f6a76c881.md) | 56 | `declaration-track:4909b51cbefb609f6a76c881fed1f544ea3e16dc3f61c3015cc5dd4efc2051cb` |
| 5 | `def` | [bitVecAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variant00472b1509a2ed02c8f8ea16b74c454ce0baaab68813410c7eaa38c28f0b6d42.lean/declarations/bitvecatom--e71840b7374d6e6b257031e0.md) | 68 | `declaration-track:e71840b7374d6e6b257031e05ff36fd75ca6c8ae3af0ad9126b8e2793e5c01f3` |
| 6 | `def` | [mkBVConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variant00472b1509a2ed02c8f8ea16b74c454ce0baaab68813410c7eaa38c28f0b6d42.lean/declarations/mkbvconst--6196e897b8923de98d31017c.md) | 78 | `declaration-track:6196e897b8923de98d31017c1f49678f67c33d2775251ef60dc66c9cb5c3b1d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
