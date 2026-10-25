# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transform.Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e526c71d75395cac41b2cf2e6bbaddf166cb5eb5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e526c71d75395cac41b2cf2e6bbaddf166cb5eb5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TransformStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/declarations/transformstep--77ede48e4e05032979a8b881.md) | 13 | `declaration-track:77ede48e4e05032979a8b8812eda7c3eaa0500b52082177b26aa03778dcf9056` |
| 2 | `def` | [transform](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/declarations/transform--4d2aa84c80596efa5c1619ae.md) | 44 | `declaration-track:4d2aa84c80596efa5c1619ae2056cc04a82059228cd127e5315d0a76e9da61dc` |
| 3 | `def` | [betaReduce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/declarations/betareduce--a504f5eddfb942307d650bcf.md) | 75 | `declaration-track:a504f5eddfb942307d650bcf31ab847fba01d0fc6db76f65074835d9473315d3` |
| 4 | `def` | [transformWithCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/declarations/transformwithcache--9c1774f41b369ea727f4fa6b.md) | 98 | `declaration-track:9c1774f41b369ea727f4fa6bae830e836b17703e197f621e868fd8c4aa6691bd` |
| 5 | `def` | [transform](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/declarations/transform--221c89c9bd9e3cc8f58f7a8a.md) | 179 | `declaration-track:221c89c9bd9e3cc8f58f7a8af59cebea95aab628cc1aa5a4ef7c75f5b75a4f1a` |
| 6 | `def` | [zetaReduce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/declarations/zetareduce--23c46e5e8107084a4a382f92.md) | 198 | `declaration-track:23c46e5e8107084a4a382f92bc9590a6f0ba926b713ad1cc33ffedf89cbcafce` |
| 7 | `def` | [zetaDeltaFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/declarations/zetadeltafvars--55a8f39f8efb1e2a22845c7a.md) | 220 | `declaration-track:55a8f39f8efb1e2a22845c7a7e681ad0867f19393d0dc24b7589fcb85069d9cf` |
| 8 | `def` | [unfoldDeclsFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/declarations/unfolddeclsfrom--cd62fe5b09d397fc2793baee.md) | 233 | `declaration-track:cd62fe5b09d397fc2793baee8eef232be7fc485f09028cf55883458ffe5798ef` |
| 9 | `def` | [unfoldIfArgIsAppOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/declarations/unfoldifargisappof--7e8d9e3f2be676555838cb6a.md) | 266 | `declaration-track:7e8d9e3f2be676555838cb6a2a736e48f3a69df0d1f63fd2c2de3220c73be023` |
| 10 | `def` | [eraseInaccessibleAnnotations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/declarations/eraseinaccessibleannotations--74abc0a05ea36efe21da9679.md) | 295 | `declaration-track:74abc0a05ea36efe21da96798b25b61afada68e961a159182558708bf059b8c5` |
| 11 | `def` | [erasePatternRefAnnotations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/declarations/erasepatternrefannotations--c8be9dc4cd1bd1c7c6225394.md) | 299 | `declaration-track:c8be9dc4cd1bd1c7c62253940bf5f42ba06c135daab45bae4c6d402036f0e066` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
