# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SlimCheck.Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b6619c059e2fa2b302e767b4fb4eca2480aa96b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b6619c059e2fa2b302e767b4fb4eca2480aa96b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Have` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuccessIfFailWithMsg` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Testing.Plausible.Functions` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Testing.Plausible.Sampleable` — import line 14; external provider; requires a separately pinned dependency.
- `Plausible` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/test-sorry--d9a08e73189d31af9924bf23.md) | 20 | `declaration-track:d9a08e73189d31af9924bf235b6c2de622d652455ffbb7d0d285d254c6ea6216` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/example--be107780111320b0e9f2c7c7.md) | 33 | `declaration-track:be107780111320b0e9f2c7c7f75ed6c26d356a0b2899896891859a2dd5db8e2c` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/example--ec6b951349a8d5a0701f2648.md) | 54 | `declaration-track:ec6b951349a8d5a0701f2648ce53ba3a68c4d04469a8bfcd0a3be42b7bfb7b33` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/example--1745cef533a812531bd154c8.md) | 107 | `declaration-track:1745cef533a812531bd154c8be92e2ba6e92cfc001544283599435b31cd75af9` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/example--c01e8288785afe3b20c3c957.md) | 124 | `declaration-track:c01e8288785afe3b20c3c95728f8a8221d92ebfacfc9d25386318ebf18a1c69e` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/example--6a2696ce0efe013e12f34699.md) | 140 | `declaration-track:6a2696ce0efe013e12f346997b153f6f9e4fb2d5ae4aba32f3bdb50cefee5c24` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/example--4ed8ddb424d99ca8551a5ccc.md) | 156 | `declaration-track:4ed8ddb424d99ca8551a5ccc80841826432907e686921cbadbc98382385ca8b0` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/example--04d0713231c9378aaec6bb50.md) | 162 | `declaration-track:04d0713231c9378aaec6bb509093dc77c2212b40a1aa9829e00cb3b5b40d0859` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/example--0c282e40f43d44d32645eac7.md) | 177 | `declaration-track:0c282e40f43d44d32645eac783384ab2ad290ce6b55084cb0408b50780d77323` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/example--caf78a7e64c29a30d960f2df.md) | 192 | `declaration-track:caf78a7e64c29a30d960f2df2728dcd99e59a7c8b116c99d5b66bf9f63902f72` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/example--a6fec61786a8110637e8606b.md) | 213 | `declaration-track:a6fec61786a8110637e8606b5b77ef3b2b8070c3ab8033cf43fa9edd44c8d15f` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/example--1c728843524c8bcd9365f18a.md) | 231 | `declaration-track:1c728843524c8bcd9365f18aa6e84d83dde48bb418b7ef8e2ebafa29994b17b5` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantd2bf973aff5fa2fbbbe6688700eacb79785cdebffe2a4190278b6af3cfcd5ba3.lean/declarations/example--54ca071542ce60f9744cf63c.md) | 244 | `declaration-track:54ca071542ce60f9744cf63cf378442c266b7aa109d43c40e41c3180e08e598c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
