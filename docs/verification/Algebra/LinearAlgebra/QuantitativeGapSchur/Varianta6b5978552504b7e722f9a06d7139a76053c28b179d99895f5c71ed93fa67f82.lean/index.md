# Verification target: GRWTSK.Algebra.LinearAlgebra.QuantitativeGapSchur.Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3beac2b8e5bdd4b95e657599d525b6d19f0b48e1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3beac2b8e5bdd4b95e657599d525b6d19f0b48e1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuantitativeGap` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FeshbachHermitian` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [shear_inverse_square](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/declarations/shear-inverse-square--708a3a23c1c4526eedf65c05.md) | 26 | `result-track:708a3a23c1c4526eedf65c05c8a80c4a9accc6f528b67c78425676b6a185b413` |
| 2 | `theorem` | [completion_coercive](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/declarations/completion-coercive--a563b67a06a4d2a5c16d186d.md) | 49 | `result-track:a563b67a06a4d2a5c16d186d6760ab7e315c8fe60b5157819127284c2b183424` |
| 3 | `def` | [hermitianEnergy](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/declarations/hermitianenergy--04859576f33607ec4e646c28.md) | 78 | `declaration-track:04859576f33607ec4e646c28980a45dadb40812c9ea812475856c561c26e37c0` |
| 4 | `theorem` | [hermitianEnergy_congruence](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/declarations/hermitianenergy-congruence--72a5c97ef0ed4012936d273a.md) | 83 | `result-track:72a5c97ef0ed4012936d273ab607b8d35792fc73ec6b76b209d5f461288cb0f7` |
| 5 | `theorem` | [hermitianEnergy_one](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/declarations/hermitianenergy-one--b1578790e79e5d839dfe8164.md) | 91 | `result-track:b1578790e79e5d839dfe8164ac03b7b50b3b39f4be7dd9f2b5f409f9a8641875` |
| 6 | `def` | [normalizedCoupling](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/declarations/normalizedcoupling--f300e3704eb43a705115a9c8.md) | 102 | `declaration-track:f300e3704eb43a705115a9c8e5cf8c2903ce4f895d47859e79e3fae149a7047d` |
| 7 | `theorem` | [coupling_eq_normalized](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/declarations/coupling-eq-normalized--b04c5358c20581be827d27ee.md) | 107 | `result-track:b04c5358c20581be827d27ee26c2736821ab63121f78aabab8edb4bd23d265be` |
| 8 | `theorem` | [normalized_margin](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/declarations/normalized-margin--c5434288082099f03c78e2ed.md) | 117 | `result-track:c5434288082099f03c78e2ed23135aecfc26acaac715f5602a524af5d6e6b9b2` |
| 9 | `theorem` | [schur_margin](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/declarations/schur-margin--347fc1d8fd4cdc48a1ce0b2b.md) | 135 | `result-track:347fc1d8fd4cdc48a1ce0b2b7bb6e3e9103cf71b0b407115274a5aa7dddc5b67` |
| 10 | `theorem` | [feshbach_coercive](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/declarations/feshbach-coercive--d9a482f1fd128bb483d8bd39.md) | 152 | `result-track:d9a482f1fd128bb483d8bd39e0697a1fcde9ee83feeb1a8d9b73df905e6b0c6a` |
| 11 | `theorem` | [normalized_feshbach_coercive](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/declarations/normalized-feshbach-coercive--bde8837c721925d8916cc794.md) | 186 | `result-track:bde8837c721925d8916cc794dc4ed4615ad8213d6532fc8f51ccc2859a98d022` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
