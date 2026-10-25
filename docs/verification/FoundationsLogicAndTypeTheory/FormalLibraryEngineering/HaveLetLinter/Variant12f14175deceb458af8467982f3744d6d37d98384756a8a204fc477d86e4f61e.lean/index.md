# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HaveLetLinter.Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "670bf62a4bb478165ebf7d15014d32da18c50d0d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `670bf62a4bb478165ebf7d15014d32da18c50d0d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Server.InfoUtils` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeclarationNames` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.haveLet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean/declarations/linter-havelet--e72608ae2f1df0f4ab9bccc0.md) | 42 | `declaration-track:e72608ae2f1df0f4ab9bccc09d1e0d1ca5138e25b20e484e5da114b3fa6c33f0` |
| 2 | `def` | [isHave?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean/declarations/ishave--ffa037b6b06d6b1a3c9ea8e3.md) | 53 | `declaration-track:ffa037b6b06d6b1a3c9ea8e3018cfb512403a08eec961e94b4c6ea58f9ce5649` |
| 3 | `def` | [InfoTree.foldInfoM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean/declarations/infotree-foldinfom--d26b40a0c79a4361fbb7687d.md) | 65 | `declaration-track:d26b40a0c79a4361fbb7687d3b262bf388db44be761869524f36e9c0a60a45e0` |
| 4 | `def` | [toFormat_propTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean/declarations/toformat-proptypes--ccbe89c945c9bed7317df21d.md) | 78 | `declaration-track:ccbe89c945c9bed7317df21d5ff8f8a3d0917fd0497a007cb44d9620bb5f4eec` |
| 5 | `def` | [nonPropHaves](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean/declarations/nonprophaves--5b635a435b2263b427c2058e.md) | 88 | `declaration-track:5b635a435b2263b427c2058e34ffb07f27c748a5879f4bd5a6eb307bcd5f7182` |
| 6 | `def` | [haveLetLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean/declarations/haveletlinter--cffa6d00e5b3b4830fdd50b4.md) | 113 | `declaration-track:cffa6d00e5b3b4830fdd50b4091af9de3ee085426b997d85d9f3645a0236edea` |
| 7 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean/declarations/initialize--a5c211622cc418a165964045.md) | 124 | `declaration-track:a5c211622cc418a1659640453203965b56a0b66899ea9f418945ee91df8b44a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
