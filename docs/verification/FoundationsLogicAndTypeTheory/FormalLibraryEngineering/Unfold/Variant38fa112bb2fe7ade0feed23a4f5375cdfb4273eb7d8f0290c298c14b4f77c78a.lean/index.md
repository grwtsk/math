# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec17eac003e0e6beceda2b6fc015df3e496c060c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec17eac003e0e6beceda2b6fc015df3e496c060c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Delta` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.WHNF` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkUnfoldSimpContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean/declarations/mkunfoldsimpcontext--847e89443407add8d6feec12.md) | 21 | `declaration-track:847e89443407add8d6feec1220fca9dd54a0fe5be4c626e9fe9b1bece27c5b65` |
| 2 | `def` | [unfoldManyCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean/declarations/unfoldmanycore--d8b5e03516eee448901ef507.md) | 25 | `declaration-track:d8b5e03516eee448901ef5078126583c448ff922ead32f73d9283133d1ca40e1` |
| 3 | `def` | [unfoldMany](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean/declarations/unfoldmany--a676980d0699c692515cd4a5.md) | 67 | `declaration-track:a676980d0699c692515cd4a5ffc9f6a57614809de595231c38ef979f78657cbf` |
| 4 | `def` | [unfoldManyTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean/declarations/unfoldmanytarget--12a1d0e2611dd016509a48d1.md) | 76 | `declaration-track:12a1d0e2611dd016509a48d1fa905099e57cf71f3e896b51a7acf3a4b5cbd430` |
| 5 | `def` | [unfoldManyAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean/declarations/unfoldmanyat--1bfc4ee8d6627aab978074d0.md) | 86 | `declaration-track:1bfc4ee8d6627aab978074d0f1d854ee36b3ae01cab4c6c53844f7fb1d178aa3` |
| 6 | `def` | [unfoldManyStar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean/declarations/unfoldmanystar--aa736debae78d1ee9df2b7aa.md) | 99 | `declaration-track:aa736debae78d1ee9df2b7aa8c9cb8ba3300324626daf0a006af6c48e0adeffc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
