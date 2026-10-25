# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variant647cc0dc904766bbb726cff0649e10e62cb4402abcb4bbf268bf1b2448b52b04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42bf983b4612758b35b2dca20dccbb4f3c139a49",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant647cc0dc904766bbb726cff0649e10e62cb4402abcb4bbf268bf1b2448b52b04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant647cc0dc904766bbb726cff0649e10e62cb4402abcb4bbf268bf1b2448b52b04.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant647cc0dc904766bbb726cff0649e10e62cb4402abcb4bbf268bf1b2448b52b04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42bf983b4612758b35b2dca20dccbb4f3c139a49`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant647cc0dc904766bbb726cff0649e10e62cb4402abcb4bbf268bf1b2448b52b04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant647cc0dc904766bbb726cff0649e10e62cb4402abcb4bbf268bf1b2448b52b04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Grind.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Rewrite` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Replace` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.SyntheticMVars` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rwTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant647cc0dc904766bbb726cff0649e10e62cb4402abcb4bbf268bf1b2448b52b04.lean/declarations/rwtarget--887b24ee9f1685e6b8c9ced8.md) | 29 | `declaration-track:887b24ee9f1685e6b8c9ced818d26de368be5a278519f364e1dc45d6abb96482` |
| 2 | `def` | [tryTrivialClose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant647cc0dc904766bbb726cff0649e10e62cb4402abcb4bbf268bf1b2448b52b04.lean/declarations/trytrivialclose--354d2c976df8ecb7f2b510a7.md) | 73 | `declaration-track:354d2c976df8ecb7f2b510a745edba389771c98c4016fb01ac0cc1c51e6b1f08` |
| 3 | `def` | [evalSymRw](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant647cc0dc904766bbb726cff0649e10e62cb4402abcb4bbf268bf1b2448b52b04.lean/declarations/evalsymrw--1ccc2ae67d1529d15330a6c0.md) | 96 | `declaration-track:1ccc2ae67d1529d15330a6c01fae89728cc906898731bed69368ec4142af9a64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
