# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "580dc548a11900d4884595bdcdd66bd38f364523",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrence345d897f828e3bad83d08964.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrence345d897f828e3bad83d08964.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `580dc548a11900d4884595bdcdd66bd38f364523`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_on_of_finite_cover](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrence345d897f828e3bad83d08964.lean/declarations/forall-on-of-finite-cover--7c042832201d10ad140c0a41.md) | 30 | `result-track:7c042832201d10ad140c0a41a43bd3bd5967809f11ccec64bd82683a6a3be03e` |
| 2 | `theorem` | [forall_on_of_finite_cover_and_tail](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrence345d897f828e3bad83d08964.lean/declarations/forall-on-of-finite-cover-and-tail--8600e17490a5986403c2808c.md) | 43 | `result-track:8600e17490a5986403c2808cf770fe58c4dff34bf2f5d3714ad2153388f5a2b6` |
| 3 | `theorem` | [finite_range_does_not_imply_ray](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrence345d897f828e3bad83d08964.lean/declarations/finite-range-does-not-imply-ray--fae63f415849c400396ec638.md) | 58 | `result-track:fae63f415849c400396ec6386dd891686928441801213fe82b929163aa8811b4` |
| 4 | `theorem` | [endpoints_do_not_cover_interval](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrence345d897f828e3bad83d08964.lean/declarations/endpoints-do-not-cover-interval--8bb4413cc8baac0402141af7.md) | 72 | `result-track:8bb4413cc8baac0402141af750baf0986fb71874fb1371672c4323e3d99dfb4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
