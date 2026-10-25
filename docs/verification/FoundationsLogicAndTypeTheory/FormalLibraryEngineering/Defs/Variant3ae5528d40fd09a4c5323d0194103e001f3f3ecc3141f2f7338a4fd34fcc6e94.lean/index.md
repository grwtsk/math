# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defs.Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26eff68cf5955214badc63e01fa07eab4ba2db47",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26eff68cf5955214badc63e01fa07eab4ba2db47`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/declarations/upperbounds--054e1438f7f3aad9aa7b9ed4.md) | 36 | `declaration-track:054e1438f7f3aad9aa7b9ed4637d908da8f461907ba846660a17a55b0bbb886c` |
| 2 | `def` | [lowerBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/declarations/lowerbounds--260eb43d9975a1169bf13ea6.md) | 40 | `declaration-track:260eb43d9975a1169bf13ea6f9486cf4a1a1b4ca72eeac4734c5db50356d618f` |
| 3 | `def` | [BddAbove](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/declarations/bddabove--7cf92eb5092ec013d8354fce.md) | 44 | `declaration-track:7cf92eb5092ec013d8354fcec25235e02204a4d247ee9c141c039ee0f9a3b169` |
| 4 | `def` | [BddBelow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/declarations/bddbelow--1a0f0f4aa43c0ad760757877.md) | 48 | `declaration-track:1a0f0f4aa43c0ad760757877927447ec6f288dcfca6022c83435c9c6eb466e39` |
| 5 | `def` | [IsLeast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/declarations/isleast--cd34ab7ab09270257289afd9.md) | 52 | `declaration-track:cd34ab7ab09270257289afd96a7084b5dd7f52649eacd48cdb2b453f2aaa069e` |
| 6 | `def` | [IsGreatest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/declarations/isgreatest--609f7c8bcf5fb1a8c709e9ea.md) | 56 | `declaration-track:609f7c8bcf5fb1a8c709e9ea44115172c1f2f3a40de75c7e96b5504126674fdb` |
| 7 | `def` | [IsLUB](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/declarations/islub--a5184b3decfdd4c6fb087019.md) | 60 | `declaration-track:a5184b3decfdd4c6fb0870196d7d5cc089aebda340b0d01bbed5fa923780cab2` |
| 8 | `def` | [IsGLB](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/declarations/isglb--8b0b2df45ec950712c21aa90.md) | 64 | `declaration-track:8b0b2df45ec950712c21aa90466c99c49f3b536fecd8a3d933758774950ab54e` |
| 9 | `def` | [IsCofinalFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/declarations/iscofinalfor--e802bffd1b49a0f867c2743e.md) | 69 | `declaration-track:e802bffd1b49a0f867c2743e568937fe32b97b35632c98afd2f0f800aa79541f` |
| 10 | `def` | [IsCoinitialFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/declarations/iscoinitialfor--6199831efd09016593ec7042.md) | 73 | `declaration-track:6199831efd09016593ec7042c57ec17266f6fcdca9a3db52dd7ddf6f2a22be1b` |
| 11 | `def` | [IsCofinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant3ae5528d40fd09a4c5323d0194103e001f3f3ecc3141f2f7338a4fd34fcc6e94.lean/declarations/iscofinal--f452eced9a8633377af1b53a.md) | 76 | `declaration-track:f452eced9a8633377af1b53a21ee20843dfa3f555c4eb3123da17709135db35c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
