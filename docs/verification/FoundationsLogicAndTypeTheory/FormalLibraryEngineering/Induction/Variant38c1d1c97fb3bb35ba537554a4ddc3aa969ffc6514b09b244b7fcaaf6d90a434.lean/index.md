# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Induction.Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b456021f7f29d5374f54d0cb3ed60dc853a0957",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b456021f7f29d5374f54d0cb3ed60dc853a0957`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Injective` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.PreDefinition.PartialFixpoint.Eqns` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Internal.Order.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.PProdN` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkAdmAnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/mkadmand--11af862250004b82134ac144.md) | 29 | `declaration-track:11af862250004b82134ac14412be2ed6904cd1b02d8fcbc4104e94a9dff2334c` |
| 2 | `def` | [mkAdmProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/mkadmproj--7f2f4b4027222c5b0e7ed462.md) | 32 | `declaration-track:7f2f4b4027222c5b0e7ed4623b2c4f7d758694247868611bc986e49766bdd81f` |
| 3 | `def` | [CCPOProdProjs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/ccpoprodprojs--0220a7e349f3b7d5ee0cefd4.md) | 44 | `declaration-track:0220a7e349f3b7d5ee0cefd4102d02202754c4784501606740461784a845f4d2` |
| 4 | `def` | [unfoldPredRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/unfoldpredrel--e657d17149496c4ebc07dc26.md) | 62 | `declaration-track:e657d17149496c4ebc07dc2645b9276e671666beaa37760b502ed9a836084167` |
| 5 | `def` | [unfoldPredRelMutual](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/unfoldpredrelmutual--5d0b5dcf3d2ef158d77d5210.md) | 88 | `declaration-track:5d0b5dcf3d2ef158d77d5210c1409fd464c6389d43f971779017fa2dbceea016` |
| 6 | `def` | [maskArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/maskarray--8125bb534bb0b4e5c7b903ea.md) | 102 | `declaration-track:8125bb534bb0b4e5c7b903eab60b72d2f126b6e7595f5b94e601d91abaacc638` |
| 7 | `def` | [numberNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/numbernames--96c24e6815b231bbfb310009.md) | 109 | `declaration-track:96c24e6815b231bbfb3100099043304400ea05d33a8bbc181efeb5d838e7efd1` |
| 8 | `def` | [getInductionPrinciplePostfix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/getinductionprinciplepostfix--23e6df18427ce5f1577d308b.md) | 113 | `declaration-track:23e6df18427ce5f1577d308bdb29c6c89e16e9ffdf2d52530d744d548090dc4b` |
| 9 | `def` | [deriveInduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/deriveinduction--5d7c22939ec767c1b4f92480.md) | 124 | `declaration-track:5d7c22939ec767c1b4f92480e6e8e406004d55e3e5d1cf3ad19ca730dadd146d` |
| 10 | `def` | [isInductName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/isinductname--d058df74e1766b97ba756774.md) | 286 | `declaration-track:d058df74e1766b97ba7567741926e252e89a711041d011954f56fde390e93bab` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/builtin-initialize--0f14448c80623a7e32aaece0.md) | 313 | `declaration-track:0f14448c80623a7e32aaece0c733626492d417089608cf18696c8f770ac8b63a` |
| 12 | `def` | [isOptionFixpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/isoptionfixpoint--469de4e71a9e372dcab3062b.md) | 328 | `declaration-track:469de4e71a9e372dcab3062bbc404751ef82f69da50abadc48606c4f85d48e2a` |
| 13 | `def` | [isPartialCorrectnessName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/ispartialcorrectnessname--375828968ddce39e1da5d66b.md) | 344 | `declaration-track:375828968ddce39e1da5d66b41060c776ec8fec0fdb6fd1a03d17cfacf9d0f9c` |
| 14 | `def` | [mkOptionAdm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/mkoptionadm--88a151dce9ae6f2023bc42ef.md) | 358 | `declaration-track:88a151dce9ae6f2023bc42eff212870fb10ff9a4f6248b6f5f7b7b19a62c3efd` |
| 15 | `def` | [derivePartialCorrectness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/derivepartialcorrectness--51dcf834b870775459a25a79.md) | 372 | `declaration-track:51dcf834b870775459a25a79794a0abe640dcf8617d2c5b21b5760c437e3aba3` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/builtin-initialize--882c5ad21dc9cbceb0f4e3c5.md) | 433 | `declaration-track:882c5ad21dc9cbceb0f4e3c561a27011abc6b237e232f67181161b45562f3fa0` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/declarations/builtin-initialize--5798c0cfc149a29f69328dbb.md) | 445 | `declaration-track:5798c0cfc149a29f69328dbb66d1444218ea7fd9b304f5b29ab10880addfa12b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
