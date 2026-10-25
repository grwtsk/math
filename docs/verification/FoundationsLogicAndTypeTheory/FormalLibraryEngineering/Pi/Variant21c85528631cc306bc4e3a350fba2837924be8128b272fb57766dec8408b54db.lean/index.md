# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pi.Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f150b0e68fbc53fe18e78708b3824414e4b80833",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f150b0e68fbc53fe18e78708b3824414e4b80833`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Notation.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [etaExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean/declarations/etaexpand--b223d7e1a7dac6eb110c68bb.md) | 23 | `declaration-track:b223d7e1a7dac6eb110c68bb537831d6a5d5a7d59a8fb44083676352c6bc293a` |
| 2 | `def` | [reduceHBinOpAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean/declarations/reducehbinopaux--f9b123802099c2446465e1e3.md) | 35 | `declaration-track:f9b123802099c2446465e1e3f3e87b27b7b2a191eb0a538e3fd2116ba87658bc` |
| 3 | `def` | [reduceHBinOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean/declarations/reducehbinop--12872c49e56c6ec135b00b79.md) | 70 | `declaration-track:12872c49e56c6ec135b00b79a2eab1c139210398007fd04cd055bb38aa4ee782` |
| 4 | `def` | [reduceUnOpAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean/declarations/reduceunopaux--1eb1de4db29fcc2c9a758c76.md) | 82 | `declaration-track:1eb1de4db29fcc2c9a758c76f227ba292b0ccb8037ab49023cf51bf103f90f35` |
| 5 | `def` | [reduceUnOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean/declarations/reduceunop--ca0459c83ced747935ef3e0d.md) | 112 | `declaration-track:ca0459c83ced747935ef3e0dd135ec1e3837ebbc6114b73f9dba8a0db8506ec1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
