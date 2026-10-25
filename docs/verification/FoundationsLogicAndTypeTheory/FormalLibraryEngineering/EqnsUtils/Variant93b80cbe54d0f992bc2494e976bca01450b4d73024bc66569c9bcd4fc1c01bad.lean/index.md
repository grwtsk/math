# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqnsUtils.Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "675d677d56430a37fe395b3b12264e4e8ca317b7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `675d677d56430a37fe395b3b12264e4e8ca317b7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Split` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Refl` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.SplitIf` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Contradiction` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [simpMatch?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean/declarations/simpmatch--1a88885428720134f18bcf71.md) | 24 | `declaration-track:1a88885428720134f18bcf7166e370dd2c294e491ccde54df567e35bdac78868` |
| 2 | `def` | [simpIf?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean/declarations/simpif--02c06e72c6d1f0d425807db6.md) | 32 | `declaration-track:02c06e72c6d1f0d425807db69b704fb0c2d1ce507b52dbac545e1c716724cf9f` |
| 3 | `def` | [tryURefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean/declarations/tryurefl--3cc60e375b97f20755f012b2.md) | 37 | `declaration-track:3cc60e375b97f20755f012b2a9ab207939283fb37393632ce3a70dac13bcdabf` |
| 4 | `def` | [deltaLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean/declarations/deltalhs--e41d7c5aca4a2e6768c6bbad.md) | 42 | `declaration-track:e41d7c5aca4a2e6768c6bbad0bc783fa12d2bcd45787a09d4cce973796928343` |
| 5 | `def` | [tryContradiction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean/declarations/trycontradiction--a1c4975a5b990432e57a4e0c.md) | 48 | `declaration-track:a1c4975a5b990432e57a4e0cb9a4338ef3328a4848518557247f2f55e4e14eaa` |
| 6 | `def` | [whnfAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean/declarations/whnfaux--4d4cd1c9eeb8a8c8ccf80bca.md) | 51 | `declaration-track:4d4cd1c9eeb8a8c8ccf80bca1a04d6f32d5d6d9f6e079f7bdeca20fdde7c7872` |
| 7 | `def` | [whnfReducibleLHS?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean/declarations/whnfreduciblelhs--41cde6d67e485ffd6aa717fe.md) | 59 | `declaration-track:41cde6d67e485ffd6aa717feca11c26243b313a1be33740e6eee0773d7665878` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
