# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SynthesizeUsing.Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e65203680e8451683c6acfd66ea1a1b00206c88",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e65203680e8451683c6acfd66ea1a1b00206c88`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Qq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [synthesizeUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00.lean/declarations/synthesizeusing--62d67b10e3aff35c3cc87fd6.md) | 27 | `declaration-track:62d67b10e3aff35c3cc87fd61fd561953c2f8b2d69cd571113dc98ac32967cfa` |
| 2 | `def` | [synthesizeUsing'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00.lean/declarations/synthesizeusing--88841ff8a306cdb932115c63.md) | 38 | `declaration-track:88841ff8a306cdb932115c630cc32972cf9c050486c64551ebde1eda1836c3ef` |
| 3 | `def` | [synthesizeUsingTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00.lean/declarations/synthesizeusingtactic--002cbd2b2473fb5a56f6be6b.md) | 58 | `declaration-track:002cbd2b2473fb5a56f6be6ba8a1db647b3fb14d51c4395a795430c08aacdfff` |
| 4 | `def` | [synthesizeUsingTactic'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant44c6b4380d58c6fcf26d5b47bc2efb9cb43e63c3ef68c8bdfc2f229b1f1d1c00.lean/declarations/synthesizeusingtactic--c2b28b65306a0c887d0eca7b.md) | 89 | `declaration-track:c2b28b65306a0c887d0eca7bfdcfb8f6788d03c672c8941e05735e6445b634d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
