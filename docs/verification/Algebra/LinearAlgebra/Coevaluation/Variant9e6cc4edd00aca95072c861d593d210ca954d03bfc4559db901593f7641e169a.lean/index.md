# Verification target: GRWTSK.Algebra.LinearAlgebra.Coevaluation.Variant9e6cc4edd00aca95072c861d593d210ca954d03bfc4559db901593f7641e169a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff12d882a35b4fbff2e40eeafa15fba5a78bf499",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Coevaluation/Variant9e6cc4edd00aca95072c861d593d210ca954d03bfc4559db901593f7641e169a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant9e6cc4edd00aca95072c861d593d210ca954d03bfc4559db901593f7641e169a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant9e6cc4edd00aca95072c861d593d210ca954d03bfc4559db901593f7641e169a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff12d882a35b4fbff2e40eeafa15fba5a78bf499`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Coevaluation/Variant9e6cc4edd00aca95072c861d593d210ca954d03bfc4559db901593f7641e169a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Coevaluation/Variant9e6cc4edd00aca95072c861d593d210ca954d03bfc4559db901593f7641e169a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Contraction` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant9e6cc4edd00aca95072c861d593d210ca954d03bfc4559db901593f7641e169a.lean/declarations/coevaluation--599c756d255891ee58be40f3.md) | 50 | `declaration-track:599c756d255891ee58be40f3054af4eac2d2fca928a6ec0e2266ac8bd32d733e` |
| 2 | `theorem` | [coevaluation_apply_one](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant9e6cc4edd00aca95072c861d593d210ca954d03bfc4559db901593f7641e169a.lean/declarations/coevaluation-apply-one--eb51bd8331f2d5f021fcd0e0.md) | 56 | `result-track:eb51bd8331f2d5f021fcd0e0e73f7ad25c45e039b241c01c991b0f4923c5ec5f` |
| 3 | `theorem` | [contractLeft_assoc_coevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant9e6cc4edd00aca95072c861d593d210ca954d03bfc4559db901593f7641e169a.lean/declarations/contractleft-assoc-coevaluation--64dae427c85ebc7846e73889.md) | 70 | `result-track:64dae427c85ebc7846e738893072bf723bffd075a955e1a74d3fb5c5b3b583ca` |
| 4 | `theorem` | [contractLeft_assoc_coevaluation'](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant9e6cc4edd00aca95072c861d593d210ca954d03bfc4559db901593f7641e169a.lean/declarations/contractleft-assoc-coevaluation--8757965fc629012917e86954.md) | 90 | `result-track:8757965fc629012917e8695470b11795387f3b7709a5c5991c0b09ae3d148de6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
