# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variantd9af8c98bb6d74e526bb3a1e185ce576675018ff41e0a000d02e16955ae8692a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfc48659f694d6fb978f06e44a23861865aa284f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd9af8c98bb6d74e526bb3a1e185ce576675018ff41e0a000d02e16955ae8692a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd9af8c98bb6d74e526bb3a1e185ce576675018ff41e0a000d02e16955ae8692a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd9af8c98bb6d74e526bb3a1e185ce576675018ff41e0a000d02e16955ae8692a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfc48659f694d6fb978f06e44a23861865aa284f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd9af8c98bb6d74e526bb3a1e185ce576675018ff41e0a000d02e16955ae8692a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd9af8c98bb6d74e526bb3a1e185ce576675018ff41e0a000d02e16955ae8692a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.AlphaShareBuilder` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Simproc` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.App` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Have` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Forall` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd9af8c98bb6d74e526bb3a1e185ce576675018ff41e0a000d02e16955ae8692a.lean/declarations/builtin-initialize--f2ff4c3ab6f5f6e8ebdf4418.md) | 24 | `declaration-track:f2ff4c3ab6f5f6e8ebdf441817d9679c8c4a5b60372c50bf6df8c1d566507a61` |
| 2 | `def` | [simpStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd9af8c98bb6d74e526bb3a1e185ce576675018ff41e0a000d02e16955ae8692a.lean/declarations/simpstep--dee566d894067a8427273460.md) | 28 | `declaration-track:dee566d894067a8427273460e5cfaaa22acca66b8944b72fbcadfd31656bc19d` |
| 3 | `abbrev` | [cacheResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd9af8c98bb6d74e526bb3a1e185ce576675018ff41e0a000d02e16955ae8692a.lean/declarations/cacheresult--342555226cd0e02a8679503b.md) | 44 | `declaration-track:342555226cd0e02a8679503b8285b8bad272b113d21b4b179fad7d0e19ba21ad` |
| 4 | `def` | [simpImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd9af8c98bb6d74e526bb3a1e185ce576675018ff41e0a000d02e16955ae8692a.lean/declarations/simpimpl--46f723195ecbef5bc81ba511.md) | 53 | `declaration-track:46f723195ecbef5bc81ba511d0852709d7c0f5686150d051c551e8693de4ba58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
