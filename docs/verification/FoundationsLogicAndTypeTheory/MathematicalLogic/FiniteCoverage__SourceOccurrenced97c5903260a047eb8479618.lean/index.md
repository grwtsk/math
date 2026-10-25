# Verification target: GRWTSK.Logic.FiniteCoverage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "580dc548a11900d4884595bdcdd66bd38f364523",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/FiniteCoverage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrenced97c5903260a047eb8479618.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrenced97c5903260a047eb8479618.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `580dc548a11900d4884595bdcdd66bd38f364523`.

Source path: `GRWTSK/Logic/FiniteCoverage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/FiniteCoverage.lean.json)

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
| 1 | `theorem` | [forall_on_of_finite_cover](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrenced97c5903260a047eb8479618.lean/declarations/forall-on-of-finite-cover--d03b43192a31e6efdfb97e59.md) | 30 | `result-track:d03b43192a31e6efdfb97e5955f68e567877da0af7dd967dbca55590997f4078` |
| 2 | `theorem` | [forall_on_of_finite_cover_and_tail](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrenced97c5903260a047eb8479618.lean/declarations/forall-on-of-finite-cover-and-tail--984de041fe17fa2c450c59af.md) | 43 | `result-track:984de041fe17fa2c450c59af02fe49c230127d7c3635d7272291e8a86c9f8818` |
| 3 | `theorem` | [finite_range_does_not_imply_ray](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrenced97c5903260a047eb8479618.lean/declarations/finite-range-does-not-imply-ray--55651e804fa93cbed11066dc.md) | 58 | `result-track:55651e804fa93cbed11066dc96417b06ce17cab7c11d93c6278069f4563be45b` |
| 4 | `theorem` | [endpoints_do_not_cover_interval](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrenced97c5903260a047eb8479618.lean/declarations/endpoints-do-not-cover-interval--93e051b9b2acae676a51a236.md) | 72 | `result-track:93e051b9b2acae676a51a236c8d38a769d27a27d70a8d3ec0f77583a7d106cc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
