# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoConfusion.Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3734c340f2c1712fdd0949b08c73acdc8245b613",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3734c340f2c1712fdd0949b08c73acdc8245b613`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.AddDecl` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.CompletionName` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CtorIdx` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CtorElim` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Subst` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkNoConfusionCtorArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/mknoconfusionctorarg--683d4c883447f4070e432c5a.md) | 29 | `declaration-track:683d4c883447f4070e432c5a55f7d8556d3cf6b514c450ade1b027250167f6c0` |
| 2 | `def` | [mkNoConfusionTypeName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/mknoconfusiontypename--75d22f552e03fb54d6e444ae.md) | 53 | `declaration-track:75d22f552e03fb54d6e444ae3acb8967184636afe6a9abee39335087851fa8c2` |
| 3 | `def` | [canUseLinear](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/canuselinear--c60abe4c01223d2904baef7e.md) | 56 | `declaration-track:c60abe4c01223d2904baef7eb6822f48ec84fb70eab4d952f41d9539d663d813` |
| 4 | `def` | [mkIfNatEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/mkifnateq--add0f6dd33100b95d6193e8c.md) | 64 | `declaration-track:add0f6dd33100b95d6193e8cb66dae44cf7561a4059fe57c2037fca070747363` |
| 5 | `def` | [mkNoConfusionType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/mknoconfusiontype--d2e8e7a7d660b8f188de82c9.md) | 72 | `declaration-track:d2e8e7a7d660b8f188de82c94f661da48939a1509528b217d93ce160417d7ed7` |
| 6 | `def` | [withEqTelescope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/witheqtelescope--6dd6eecf5612a22861313bcb.md) | 151 | `declaration-track:6dd6eecf5612a22861313bcb92523fdd7be04dcb9ac7b7012c0ce0858d2374d3` |
| 7 | `def` | [withNeededEqTelescope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/withneededeqtelescope--37c830aba690d9d50775b4db.md) | 167 | `declaration-track:37c830aba690d9d50775b4db4b436c291da9161a3392f03ce8c5d82886ebceb9` |
| 8 | `def` | [mkEqNDRecTelescope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/mkeqndrectelescope--13e124dabac8aa192ca0a2bd.md) | 190 | `declaration-track:13e124dabac8aa192ca0a2bda6569606f9ea955e9f7147d7d8b56262bf3e7494` |
| 9 | `def` | [mkNoConfusionCoreImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/mknoconfusioncoreimp--5e7e5cb6cebbbdf19aefd739.md) | 210 | `declaration-track:5e7e5cb6cebbbdf19aefd7391300b2640ec3bd2cdec98e99be58adb4e70ed7ce` |
| 10 | `def` | [mkNoConfusionCtors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/mknoconfusionctors--69797a567442a83da7812716.md) | 289 | `declaration-track:69797a567442a83da7812716732886f87b41719dba97d4790cc124c157ce0d63` |
| 11 | `def` | [mkNoConfusionCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/mknoconfusioncore--7c91504130844fe401950202.md) | 356 | `declaration-track:7c91504130844fe401950202a0b7b295557145a3f7c3a82d6ad0a56170e2d2e2` |
| 12 | `def` | [mkNoConfusionEnum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/mknoconfusionenum--b16bd866137d3951776a7479.md) | 367 | `declaration-track:b16bd866137d3951776a7479f0fc610ad33f11abe03c6859c0483af56ae1bf21` |
| 13 | `def` | [mkNoConfusion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/mknoconfusion--65b3c7d82f4c9ae9464e7e5e.md) | 432 | `declaration-track:65b3c7d82f4c9ae9464e7e5ef938421a6c60e800b2dde6f33ecaac5fcfae96fb` |
| 14 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/declarations/builtin-initialize--5fde324e3ace26bcb65d084e.md) | 440 | `declaration-track:5fde324e3ace26bcb65d084e2636ea792ec269bad667d526951e18f142149e66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
