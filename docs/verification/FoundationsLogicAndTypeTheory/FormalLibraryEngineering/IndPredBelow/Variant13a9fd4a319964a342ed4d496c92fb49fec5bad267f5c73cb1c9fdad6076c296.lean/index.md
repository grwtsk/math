# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndPredBelow.Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7b0240e5c7d53163b28ee2991edb0d61b70eaef",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7b0240e5c7d53163b28ee2991edb0d61b70eaef`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Constructions.CasesOn` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.Match` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/context--f2d69387383e22c2dba80fe8.md) | 40 | `declaration-track:f2d69387383e22c2dba80fe8887585ba0dd5d871e1bfe2fb32bba5b02b7701b1` |
| 2 | `def` | [isIH](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/isih--35855be8fcd190da0cd9f939.md) | 61 | `declaration-track:35855be8fcd190da0cd9f9393b8d1479d6272e9c2a3ed46500d93c583b0e1435` |
| 3 | `def` | [mkBelowAppOfIdx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/mkbelowappofidx--52b3f8bf11644bf12ece9f9b.md) | 66 | `declaration-track:52b3f8bf11644bf12ece9f9b91a702f0f6d64da5d8d979963651b33d96c6b050` |
| 4 | `def` | [ihTypeToBelowType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/ihtypetobelowtype--b4f513186ab38b58696b7589.md) | 79 | `declaration-track:b4f513186ab38b58696b7589cd407988976058a768cf5a748fbe630906176c08` |
| 5 | `def` | [toImplicit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/toimplicit--12ec9847a29c3685b942c695.md) | 85 | `declaration-track:12ec9847a29c3685b942c69567ea7b897b58d5de17fc5a6622d2c56b6f09c5ed` |
| 6 | `def` | [mkBelowInductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/mkbelowinductive--d47683562e801518d2f8d068.md) | 91 | `declaration-track:d47683562e801518d2f8d06858f67dd30892f89a1509b7b26cd1c250d8a09a17` |
| 7 | `def` | [mkBelowInductives](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/mkbelowinductives--6d260d074d67d3485715edec.md) | 130 | `declaration-track:6d260d074d67d3485715edecf59858a13e481f2bc339dbb0274ad2483116ef0b` |
| 8 | `def` | [withBRecOnArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/withbreconargs--28531c50068d8a18b93d513f.md) | 143 | `declaration-track:28531c50068d8a18b93d513f1391303da975afbddb1c7801ad0bf871b0f32fa7` |
| 9 | `def` | [mkBRecOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/mkbrecon--48d96ce8d2e2f647187cf5c3.md) | 193 | `declaration-track:48d96ce8d2e2f647187cf5c360183032b7764efbfaaece4c1b6c33331f4c0a0c` |
| 10 | `def` | [mkBelow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/mkbelow--41a411694f2bf7f9745d3f7f.md) | 219 | `declaration-track:41a411694f2bf7f9745d3f7f89624b28008406ea16bf58568cd99507a5335726` |
| 11 | `def` | [belowRecIndices](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/belowrecindices--0f18d3d914769a22faa98a4a.md) | 249 | `declaration-track:0f18d3d914769a22faa98a4a67b00a159d616978a218f9e9622af37d3b0a27ca` |
| 12 | `structure` | [RecursionContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/recursioncontext--956cfe5c44bb68dec2679791.md) | 266 | `declaration-track:956cfe5c44bb68dec26797914e4b52d3df27391f8fa25537b684b131e70c82b9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/instance--90f6cdfbd1d0549b8c3ad102.md) | 279 | `declaration-track:90f6cdfbd1d0549b8c3ad102dbca9b77670673b5cf85e7e217d2fc883f58d261` |
| 14 | `inductive` | [NewDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/newdecl--0db6b009b323fd7a236c0640.md) | 290 | `declaration-track:0db6b009b323fd7a236c064080ff04e7b618f68791d0018179f6a8b2dff5eff1` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/instance--7fce8fe58d023193c880a3a4.md) | 296 | `declaration-track:7fce8fe58d023193c880a3a4e250d908ca6e3b9453f29ed31237788cb9fa8c3d` |
| 16 | `def` | [NewDecl.getDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/newdecl-getdecl--e7631edbf953d832a3807c3e.md) | 303 | `declaration-track:e7631edbf953d832a3807c3e20249588ecf875fd679ff9dc5a4a3c6f7887bda2` |
| 17 | `def` | [collectDirectVarsInPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/collectdirectvarsinpattern--a56fc5109b5d06206e8a6ab2.md) | 311 | `declaration-track:a56fc5109b5d06206e8a6ab213b488a46670685d3f628c79ed744d19ed2f82a6` |
| 18 | `def` | [mkBelowMatcher](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/mkbelowmatcher--50b0f129eae1ff0e5f44570c.md) | 327 | `declaration-track:50b0f129eae1ff0e5f44570c6acd99c743be9fca3130d2f2434bece4dd20f58e` |
| 19 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/declarations/builtin-initialize--3930fbd66ebefbd605646e9f.md) | 512 | `declaration-track:3930fbd66ebefbd605646e9ff3e0422abdf17fc599bd6a64b3f42566dd8fb578` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
