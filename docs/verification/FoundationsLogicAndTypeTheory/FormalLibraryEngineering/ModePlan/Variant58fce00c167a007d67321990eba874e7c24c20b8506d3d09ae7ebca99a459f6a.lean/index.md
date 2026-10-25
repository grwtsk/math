# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModePlan.Variant58fce00c167a007d67321990eba874e7c24c20b8506d3d09ae7ebca99a459f6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0312a9ab7be9c10b47a3d45efbb84c18b077ea24",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant58fce00c167a007d67321990eba874e7c24c20b8506d3d09ae7ebca99a459f6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant58fce00c167a007d67321990eba874e7c24c20b8506d3d09ae7ebca99a459f6a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant58fce00c167a007d67321990eba874e7c24c20b8506d3d09ae7ebca99a459f6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0312a9ab7be9c10b47a3d45efbb84c18b077ea24`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant58fce00c167a007d67321990eba874e7c24c20b8506d3d09ae7ebca99a459f6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant58fce00c167a007d67321990eba874e7c24c20b8506d3d09ae7ebca99a459f6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Mode` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TieBreaker](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant58fce00c167a007d67321990eba874e7c24c20b8506d3d09ae7ebca99a459f6a.lean/declarations/tiebreaker--7dff45a626090f8d75aacf43.md) | 20 | `declaration-track:7dff45a626090f8d75aacf43f2213428d0d8babd747abfcda4bbed6b10670ff1` |
| 2 | `inductive` | [TieBreakerAllowed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant58fce00c167a007d67321990eba874e7c24c20b8506d3d09ae7ebca99a459f6a.lean/declarations/tiebreakerallowed--80999425765c74b02c73b344.md) | 25 | `declaration-track:80999425765c74b02c73b344dc5cd2d0ced82a0eb3e9507abe359ba8ab35877e` |
| 3 | `structure` | [ModePlan](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant58fce00c167a007d67321990eba874e7c24c20b8506d3d09ae7ebca99a459f6a.lean/declarations/modeplan--17c58f365063e6b43f95c05c.md) | 36 | `declaration-track:17c58f365063e6b43f95c05c330d73f0a4cb5cfe7e3eae8bc71cd28da3a48ac2` |
| 4 | `def` | [canonicalPrimaryMode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant58fce00c167a007d67321990eba874e7c24c20b8506d3d09ae7ebca99a459f6a.lean/declarations/canonicalprimarymode--25ca97aaefa13cbc0e71b622.md) | 45 | `declaration-track:25ca97aaefa13cbc0e71b62277c05b6cf1305121ca0e9dcdeeff081542d902d8` |
| 5 | `theorem` | [canonicalPrimaryMode_supports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant58fce00c167a007d67321990eba874e7c24c20b8506d3d09ae7ebca99a459f6a.lean/declarations/canonicalprimarymode-supports--a126042b799af5bd4163375b.md) | 58 | `result-track:a126042b799af5bd4163375bf38b13725dfa9bc1273142b0d93f02160fb41b8e` |
| 6 | `structure` | [ModeProfileFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant58fce00c167a007d67321990eba874e7c24c20b8506d3d09ae7ebca99a459f6a.lean/declarations/modeprofilefamily--3b3425bb85aa4340cc637a20.md) | 63 | `declaration-track:3b3425bb85aa4340cc637a205d1a7c0c2f5e96ea05ef1d9b7420fc88fde3bac4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
