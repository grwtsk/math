# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogSquareQuadratureStatements.Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "014984177d7fca9e2103a74882e4ac852a07c9bb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `014984177d7fca9e2103a74882e4ac852a07c9bb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSquareQuadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean/declarations/logsquarequadrature--887aac2eb71d9a8255c43d2d.md) | 16 | `declaration-track:887aac2eb71d9a8255c43d2daa6ca46a0ccb3dbd5eeef56bfc8f45f4e942c990` |
| 2 | `theorem` | [logSquare_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean/declarations/logsquare-monotoneon--31a06ee93fcc581ae12dd965.md) | 20 | `result-track:31a06ee93fcc581ae12dd9657dde4e5371be977ee8740fc8de7133ce68ccf1ad` |
| 3 | `theorem` | [logSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean/declarations/logsquare-intervalintegrable--8896a58f61f22f7fa782a4c2.md) | 25 | `result-track:8896a58f61f22f7fa782a4c207a6e34dc371b452cac2cfc193763a5bfdf595d1` |
| 4 | `theorem` | [logSquare_integer_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean/declarations/logsquare-integer-bounds--6e44ad89cb9777a2866c5e71.md) | 32 | `result-track:6e44ad89cb9777a2866c5e7147edffb4f6cc526d5fbc0737dcd443c0011226b2` |
| 5 | `theorem` | [logSquareQuadrature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean/declarations/logsquarequadrature-abs-le--c91b8732633651f4be862433.md) | 65 | `result-track:c91b8732633651f4be86243323eaf889ca1c4c30cc7c4eed3cf0cdcca145cc5c` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean/declarations/example--6b4800ee7e30fe7244cb7f8e.md) | 99 | `declaration-track:6b4800ee7e30fe7244cb7f8e320ef3102e51c3d2f8579dfae81e043600714405` |
| 7 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean/declarations/example--c2e4ce2539da87b6922d7117.md) | 103 | `declaration-track:c2e4ce2539da87b6922d7117b25f82532a50a0ba6dd8b65f3ad8e26b9722f548` |
| 8 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean/declarations/example--e052d303e04419ffc509537a.md) | 106 | `declaration-track:e052d303e04419ffc509537a99b861aace8f77b3b4f4b5ca35f9875cb7d9e264` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean/declarations/example--520b31396954f28045dfb8b2.md) | 110 | `declaration-track:520b31396954f28045dfb8b295a2b642327666106d97851b076b7d5978216428` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant6b3625812f90e006fb39d436bae9cb2450e065c4c752fbb975226cb245a7f78f.lean/declarations/example--4771c672a65002de25edf37a.md) | 117 | `declaration-track:4771c672a65002de25edf37a26fb36dc666d795e7a7dfdeb1bc43f6970a125d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
