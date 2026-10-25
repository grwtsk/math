# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71d36a1cdcc996ff89d77fe8641cb96592b7d8c0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71d36a1cdcc996ff89d77fe8641cb96592b7d8c0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Meta.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.Meta.preservingMCtx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566.lean/declarations/lean-meta-preservingmctx--6de802db08b2dd77c584084c.md) | 19 | `declaration-track:6de802db08b2dd77c584084c6cb7dee730926b0296622d5faf7b487cce9c0018` |
| 2 | `def` | [Lean.Meta.forallMetaTelescopeReducingUntilDefEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566.lean/declarations/lean-meta-forallmetatelescopereducinguntildefeq--29ff759e451e6d4c137eeb51.md) | 37 | `declaration-track:29ff759e451e6d4c137eeb511526524c93d6b77adca1cf06490ad98746ca61da` |
| 3 | `def` | [Lean.Meta.pureIsDefEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566.lean/declarations/lean-meta-pureisdefeq--6c3881726257661f9702c2ac.md) | 60 | `declaration-track:6c3881726257661f9702c2ac2f52d5b90aed7eaa11459eae9def76ab34eacef7` |
| 4 | `def` | [Lean.Meta.mkRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta76b24260e4a230871a0e2544e82456f6c7b06fd1f81f662134c0aa112de7566.lean/declarations/lean-meta-mkrel--050db716685737c1ec86695a.md) | 64 | `declaration-track:050db716685737c1ec86695a7b2cd6016d2aab647b3bee338c951c119de35bd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
