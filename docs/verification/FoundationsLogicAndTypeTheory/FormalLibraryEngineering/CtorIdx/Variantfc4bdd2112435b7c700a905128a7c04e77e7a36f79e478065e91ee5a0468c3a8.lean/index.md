# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CtorIdx.Variantfc4bdd2112435b7c700a905128a7c04e77e7a36f79e478065e91ee5a0468c3a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04969c7dbfa44730ab5573ab06b7a8d46c0cfef7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantfc4bdd2112435b7c700a905128a7c04e77e7a36f79e478065e91ee5a0468c3a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantfc4bdd2112435b7c700a905128a7c04e77e7a36f79e478065e91ee5a0468c3a8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantfc4bdd2112435b7c700a905128a7c04e77e7a36f79e478065e91ee5a0468c3a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04969c7dbfa44730ab5573ab06b7a8d46c0cfef7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantfc4bdd2112435b7c700a905128a7c04e77e7a36f79e478065e91ee5a0468c3a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantfc4bdd2112435b7c700a905128a7c04e77e7a36f79e478065e91ee5a0468c3a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.AddDecl` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.CompletionName` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Linter.Deprecated` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkToCtorIdxName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantfc4bdd2112435b7c700a905128a7c04e77e7a36f79e478065e91ee5a0468c3a8.lean/declarations/mktoctoridxname--037c6448e8bd884d87c07403.md) | 32 | `declaration-track:037c6448e8bd884d87c07403200c00767bfd4fed0e92fda602cbca0a3a3a3aca` |
| 2 | `def` | [mkCtorIdxName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantfc4bdd2112435b7c700a905128a7c04e77e7a36f79e478065e91ee5a0468c3a8.lean/declarations/mkctoridxname--ddd30386dee1233916ffa9f9.md) | 35 | `declaration-track:ddd30386dee1233916ffa9f9fbf0ca4c80e0f5c2dd6a6816894b739ae6f732a2` |
| 3 | `def` | [isCtorIdxCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantfc4bdd2112435b7c700a905128a7c04e77e7a36f79e478065e91ee5a0468c3a8.lean/declarations/isctoridxcore--6801f369b8644f8243232242.md) | 38 | `declaration-track:6801f369b8644f8243232242b07415ca86ad45af18c67b84ee79da719c05ebd6` |
| 4 | `def` | [isCtorIdx?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantfc4bdd2112435b7c700a905128a7c04e77e7a36f79e478065e91ee5a0468c3a8.lean/declarations/isctoridx--b03a5fcb61023fbb03714fd1.md) | 43 | `declaration-track:b03a5fcb61023fbb03714fd1f99a53cd56af184953f848871b788c7795e15683` |
| 5 | `def` | [mkCtorIdx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantfc4bdd2112435b7c700a905128a7c04e77e7a36f79e478065e91ee5a0468c3a8.lean/declarations/mkctoridx--493620261961a6a2296c0d31.md) | 52 | `declaration-track:493620261961a6a2296c0d316eedb99b5f664bde654b300dc27018a3e29b6b9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
