# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqnsUtils.Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17e778dff9e1dbdfc0c9ccf261a269c6c20513f9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17e778dff9e1dbdfc0c9ccf261a269c6c20513f9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Split` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Refl` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.SplitIf` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Contradiction` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [simpMatch?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4.lean/declarations/simpmatch--100f70fda71423729c66b713.md) | 32 | `declaration-track:100f70fda71423729c66b713b76d7f62126e20a3588bd629edbf6e42164c398d` |
| 2 | `def` | [simpIf?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4.lean/declarations/simpif--96ee3e0f7d3787458f6d7a9d.md) | 40 | `declaration-track:96ee3e0f7d3787458f6d7a9dd820d7bf820a59d3635ecf79225076a7e42d2df3` |
| 3 | `def` | [tryURefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4.lean/declarations/tryurefl--a67cdea20db9cc1e7d365344.md) | 45 | `declaration-track:a67cdea20db9cc1e7d36534455b83f8731c54af56d65b07765380ff24b4f4d73` |
| 4 | `def` | [deltaLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4.lean/declarations/deltalhs--c7838ca84569a11739f29626.md) | 50 | `declaration-track:c7838ca84569a11739f29626b0001759773d0e01eddc9b30de2be74dc3299920` |
| 5 | `def` | [tryContradiction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4.lean/declarations/trycontradiction--45906aeef1bd989fc8f8fcfa.md) | 56 | `declaration-track:45906aeef1bd989fc8f8fcfaee56d35f18680d01a9262e6852e3122d18f9b5f7` |
| 6 | `def` | [whnfAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4.lean/declarations/whnfaux--ce6f517ba91b4ab4483dd356.md) | 59 | `declaration-track:ce6f517ba91b4ab4483dd356866e6fc5e5fdab1d50c266f07df75eb3fadb57e7` |
| 7 | `def` | [whnfReducibleLHS?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4.lean/declarations/whnfreduciblelhs--d13bedff0d3f80707cb927f3.md) | 67 | `declaration-track:d13bedff0d3f80707cb927f35c0943e9c7a78fd3d5efe0e6257ed0608afe450a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
