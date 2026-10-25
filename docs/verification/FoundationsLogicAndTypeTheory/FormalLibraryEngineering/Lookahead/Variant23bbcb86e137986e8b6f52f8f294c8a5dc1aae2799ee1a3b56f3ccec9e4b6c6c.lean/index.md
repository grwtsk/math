# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lookahead.Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cd6aae83aa1599728d161dbe5a010abe9c37a13",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cd6aae83aa1599728d161dbe5a010abe9c37a13`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Split` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatchAction` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [maxIterations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean/declarations/maxiterations--f69b8821962ac7122274292a.md) | 27 | `declaration-track:f69b8821962ac7122274292acee22d86edb32dd310247461f09b490be578a604` |
| 2 | `def` | [solve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean/declarations/solve--b5f98f550015ae8667bce3be.md) | 29 | `declaration-track:b5f98f550015ae8667bce3beb03ef2c68259ba5c470b19019d2fe9cf24785b3e` |
| 3 | `def` | [tryLookahead](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean/declarations/trylookahead--e5c358ddf0d5da9be0448371.md) | 39 | `declaration-track:e5c358ddf0d5da9be0448371ebafd613dacf7b66383313d0119dd4119d80b71d` |
| 4 | `def` | [lookahead](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant23bbcb86e137986e8b6f52f8f294c8a5dc1aae2799ee1a3b56f3ccec9e4b6c6c.lean/declarations/lookahead--5896bffa61f3f65596a30c8f.md) | 65 | `declaration-track:5896bffa61f3f65596a30c8f35ea6b9620b413b77aa10fc90a5315ace76d7e5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
