# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Thunk.Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a314f96db0908c4d47d78cb459da4b6e6d442e1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a314f96db0908c4d47d78cb459da4b6e6d442e1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Mathport.Rename` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787.lean/declarations/ext--eb8cb6f91fef7740058bc30c.md) | 21 | `result-track:eb8cb6f91fef7740058bc30c826017b6d84bf74fbf1aab5eb113c71ff9c10774` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787.lean/declarations/instance--3bf9e07d890429c4c1222f4d.md) | 27 | `declaration-track:3bf9e07d890429c4c1222f4db36497323420b2aecaca9160a1cab6047d859d83` |
| 3 | `def` | [prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787.lean/declarations/prod--90b4b7bf4202f2bc0d87578b.md) | 34 | `declaration-track:90b4b7bf4202f2bc0d87578bbe862e8935921918bc423776aa867923b3b9fc8b` |
| 4 | `theorem` | [prod_get_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787.lean/declarations/prod-get-fst--0dc4fbb9ea3822e83fd2fa58.md) | 36 | `result-track:0dc4fbb9ea3822e83fd2fa58ddce86e0d0463cabaa175c58be5167dd874fe63e` |
| 5 | `theorem` | [prod_get_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787.lean/declarations/prod-get-snd--09f773f015319f0572ce1ddf.md) | 37 | `result-track:09f773f015319f0572ce1ddf0ebf1e256788a18b1c319cdaed5683c578d0450a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
