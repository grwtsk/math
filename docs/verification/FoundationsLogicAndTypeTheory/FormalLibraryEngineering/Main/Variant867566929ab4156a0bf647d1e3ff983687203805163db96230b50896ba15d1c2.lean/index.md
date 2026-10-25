# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddc84b05d39bfd0b2612cc38ae38493dfbf9a4d8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddc84b05d39bfd0b2612cc38ae38493dfbf9a4d8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.Options` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Compiler.IR` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Passes` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.ToDecl` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.ToImpureType` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Check` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.MatcherInfo` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.SplitSCC` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shouldGenerateCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean/declarations/shouldgeneratecode--49a442abe5ca96b671752e60.md) | 39 | `declaration-track:49a442abe5ca96b671752e60538bacf61eaf772868af5c7aaff870821b324780` |
| 2 | `def` | [checkpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean/declarations/checkpoint--f492c7ab3d936a35ca4f2a14.md) | 64 | `declaration-track:f492c7ab3d936a35ca4f2a147ecb93915e76b48716588541e012209d5d0d7b31` |
| 3 | `def` | [isValidMainType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean/declarations/isvalidmaintype--6f73d0793820cc63876f9b5a.md) | 77 | `declaration-track:6f73d0793820cc63876f9b5a06c5b60dafc725efc49bffd5ac4717c0e8e847ba` |
| 4 | `structure` | [PostponedCompileDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean/declarations/postponedcompiledecls--de67eafba775c28052909617.md) | 91 | `declaration-track:de67eafba775c2805290961742dab2bf13931107d586f2ef4ee43d3a2113e8de` |
| 5 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean/declarations/builtin-initialize--e182de9397a281eaf988ea6f.md) | 104 | `declaration-track:e182de9397a281eaf988ea6f03f7c259d0e7497eaf0ad6fb7a1dc126e81fcb69` |
| 6 | `def` | [resumeCompilation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean/declarations/resumecompilation--68bfb76277f4bf3ee726ac7e.md) | 117 | `declaration-track:68bfb76277f4bf3ee726ac7ed861de56f6b211982ba0a2d28def4f58b2b4028b` |
| 7 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean/declarations/run--3f3abc8581fdd161c09905e7.md) | 130 | `declaration-track:3f3abc8581fdd161c09905e7e1327121e5a9f81688b0c8bf6dedc75f09face84` |
| 8 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean/declarations/main--2c26552ca7c71c8e3a1a4dd9.md) | 240 | `declaration-track:2c26552ca7c71c8e3a1a4dd95d2e5ef1a85ed8bd5d3e557f371fd249a8f38edc` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean/declarations/builtin-initialize--0023c26d1c59f54c336606d1.md) | 244 | `declaration-track:0023c26d1c59f54c336606d109671677cb684731c6e9ef1e9a0f2925c2a2d60f` |
| 10 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant867566929ab4156a0bf647d1e3ff983687203805163db96230b50896ba15d1c2.lean/declarations/builtin-initialize--22ff861b59bd3bbddad23912.md) | 247 | `declaration-track:22ff861b59bd3bbddad23912594c817552242a4236d115d8e7eb1a99d2c25c73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
