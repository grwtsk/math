# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "463b803e00a27d35577a8901b9bf3d0a6dd62128",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `463b803e00a27d35577a8901b9bf3d0a6dd62128`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Lean` — import line 7; external provider; requires a separately pinned dependency.
- `Cli` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outputBaseDir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean/declarations/outputbasedir--c681e3e2a82559dea389ed5b.md) | 20 | `declaration-track:c681e3e2a82559dea389ed5b8f12550815f8728beeec48f263373a77963f3340` |
| 2 | `def` | [runSingleCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean/declarations/runsinglecmd--f81329e27b1ac021bc9f46cb.md) | 23 | `declaration-track:f81329e27b1ac021bc9f46cb8582c2073b9348b392c2df6ab88056b0c0dde6b9` |
| 3 | `def` | [runIndexCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean/declarations/runindexcmd--f8a049208c8b246ac0657011.md) | 41 | `declaration-track:f8a049208c8b246ac06570119d8ab51e2a33939afe03155cd08eea58136bb9fa` |
| 4 | `def` | [singleCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean/declarations/singlecmd--efcc3e3e6bd22f20f8570ce8.md) | 55 | `declaration-track:efcc3e3e6bd22f20f8570ce85c18c9718e8068b6891d1297250a093c479ea160` |
| 5 | `def` | [indexCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean/declarations/indexcmd--0f476c37b80ebcdf92759645.md) | 68 | `declaration-track:0f476c37b80ebcdf927596450be84bcdf430a58b6af58d6ece878ec8b89f90b6` |
| 6 | `def` | [blueprintCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean/declarations/blueprintcmd--07feb5f4cf803e73080c2f61.md) | 81 | `declaration-track:07feb5f4cf803e73080c2f61c3b1e9473b4b23ea2cd2dc4657dfc667c1fd7a78` |
| 7 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean/declarations/main--daa6524c6c0f196bbba814c4.md) | 90 | `declaration-track:daa6524c6c0f196bbba814c472db7d7d88e3db6b28b991f4d9cc92d24c5ed33a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
