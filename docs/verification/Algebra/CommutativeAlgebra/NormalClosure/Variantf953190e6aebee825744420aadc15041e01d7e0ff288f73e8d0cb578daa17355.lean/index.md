# Verification target: GRWTSK.Algebra.CommutativeAlgebra.NormalClosure.Variantf953190e6aebee825744420aadc15041e01d7e0ff288f73e8d0cb578daa17355

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0647441f0a79f94c087e0abd679b16107f7583f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/NormalClosure/Variantf953190e6aebee825744420aadc15041e01d7e0ff288f73e8d0cb578daa17355.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantf953190e6aebee825744420aadc15041e01d7e0ff288f73e8d0cb578daa17355.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantf953190e6aebee825744420aadc15041e01d7e0ff288f73e8d0cb578daa17355.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0647441f0a79f94c087e0abd679b16107f7583f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/NormalClosure/Variantf953190e6aebee825744420aadc15041e01d7e0ff288f73e8d0cb578daa17355.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/NormalClosure/Variantf953190e6aebee825744420aadc15041e01d7e0ff288f73e8d0cb578daa17355.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalClosure](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantf953190e6aebee825744420aadc15041e01d7e0ff288f73e8d0cb578daa17355.lean/declarations/normalclosure--fa3bb34429d4d8672e1b186b.md) | 33 | `declaration-track:fa3bb34429d4d8672e1b186b4c96b1862291d7291c8c8295b8b8451f6ce7cff1` |
| 2 | `theorem` | [restrictScalars_eq_iSup_adjoin](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantf953190e6aebee825744420aadc15041e01d7e0ff288f73e8d0cb578daa17355.lean/declarations/restrictscalars-eq-isup-adjoin--3cb039f638c58f0aec17b2a3.md) | 41 | `result-track:3cb039f638c58f0aec17b2a3fd970ebcdb405ad7c28cc145ce4ca4eafb15e940` |
| 3 | `instance` | [normal](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantf953190e6aebee825744420aadc15041e01d7e0ff288f73e8d0cb578daa17355.lean/declarations/normal--c0be3d57b0f9375f0b6d615f.md) | 65 | `declaration-track:c0be3d57b0f9375f0b6d615fcbef5fdec352d996627012ca7137617c9bf87583` |
| 4 | `instance` | [is_finiteDimensional](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantf953190e6aebee825744420aadc15041e01d7e0ff288f73e8d0cb578daa17355.lean/declarations/is-finitedimensional--005224501a3352bf903526fd.md) | 77 | `declaration-track:005224501a3352bf903526fd50634679fece217ce58571802ad91922b5bb899e` |
| 5 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/NormalClosure/Variantf953190e6aebee825744420aadc15041e01d7e0ff288f73e8d0cb578daa17355.lean/declarations/isscalartower--ab3ca3cc4e5722b0e2833107.md) | 84 | `declaration-track:ab3ca3cc4e5722b0e2833107f6438c06ff2bf5d505da6273080cd4968451d182` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
