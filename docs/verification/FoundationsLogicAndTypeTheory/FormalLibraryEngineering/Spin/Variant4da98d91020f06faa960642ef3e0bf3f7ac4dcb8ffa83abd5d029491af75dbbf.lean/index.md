# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Spin.Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed54c57d5828bc751b01abd86bbefe9a7a6f790a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed54c57d5828bc751b01abd86bbefe9a7a6f790a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RectSpin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf.lean/declarations/rectspin--2315025388e6ce6ffbb0a036.md) | 18 | `declaration-track:2315025388e6ce6ffbb0a0363ef47cd0dbd04b96acba61f5754baae190d58309` |
| 2 | `def` | [render](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf.lean/declarations/render--347878dcf9f175a9f5a588cc.md) | 27 | `declaration-track:347878dcf9f175a9f5a588ccd4312d7c3cb65597bd6b5c342389d89c88a87e27` |
| 3 | `def` | [parse?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf.lean/declarations/parse--312e5f7416aaacd826dfd33f.md) | 33 | `declaration-track:312e5f7416aaacd826dfd33f5eb389b8524b58f813a0d0f9c72fad117dba0a81` |
| 4 | `theorem` | [parse?_render](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf.lean/declarations/parse-render--a15d7dce3cf8fbc3bad9a732.md) | 40 | `result-track:a15d7dce3cf8fbc3bad9a7328016cd9d7cd251976c79e88e1411abb4e3efafeb` |
| 5 | `theorem` | [render_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf.lean/declarations/render-injective--10a892c2a9c12bdf38a255dc.md) | 45 | `result-track:10a892c2a9c12bdf38a255dc6628340aa94852099fd6a7e1a8058547ada6652c` |
| 6 | `def` | [inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf.lean/declarations/inverse--ffc86f1b14fb11d879b25d98.md) | 51 | `declaration-track:ffc86f1b14fb11d879b25d9893af73453aa16b7dcbf900aba093a53dc7e3cf94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
