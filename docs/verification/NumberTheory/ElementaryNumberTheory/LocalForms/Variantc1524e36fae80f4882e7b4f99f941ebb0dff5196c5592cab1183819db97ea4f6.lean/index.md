# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.LocalForms.Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19a3510b8400143f68a4aaf5836da1fefaeffbbb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19a3510b8400143f68a4aaf5836da1fefaeffbbb`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Geometry` — import line 1; external provider; requires a separately pinned dependency.
- `Reduction` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [d4ReducedCartan](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/declarations/d4reducedcartan--b6a6e95d1f2467cb2d55e1bb.md) | 14 | `declaration-track:b6a6e95d1f2467cb2d55e1bb613f72f7b771b211099c4abaa19208c7166268b3` |
| 2 | `def` | [e8ReducedCartan](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/declarations/e8reducedcartan--42c1a9acfa8dbdbccf6662b9.md) | 18 | `declaration-track:42c1a9acfa8dbdbccf6662b9287ef01eef0d5c480b56a8b50ea54d2d3a3c5ed8` |
| 3 | `theorem` | [d4_reduced_determinant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/declarations/d4-reduced-determinant--85df89ebbf55ac59a472c766.md) | 21 | `result-track:85df89ebbf55ac59a472c766763058792b4372b3ec2b231c1f5bda2488e61f95` |
| 4 | `theorem` | [e8_reduced_determinant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/declarations/e8-reduced-determinant--0016d1f21b3f5b2d0f024f77.md) | 26 | `result-track:0016d1f21b3f5b2d0f024f77f939aa1bc16dd75923f3862f7eefa0eed67f248e` |
| 5 | `theorem` | [d4_reduced_form_unit_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/declarations/d4-reduced-form-unit-iff--b1be7481ccce302757eae6ce.md) | 31 | `result-track:b1be7481ccce302757eae6ce630b1e557b437195ac6cf806a12925e8e7d004c5` |
| 6 | `theorem` | [e8_reduced_form_unit](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/declarations/e8-reduced-form-unit--ebe3db0ec99c90b7d25e1ad5.md) | 36 | `result-track:ebe3db0ec99c90b7d25e1ad5532d0f90b877552acea28b7472ccc71718934e8d` |
| 7 | `theorem` | [d4_reduced_form_at_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/declarations/d4-reduced-form-at-two--6b2d48c4c6befd04d06273fb.md) | 43 | `result-track:6b2d48c4c6befd04d06273fbeaa04fde90410483f77a56aa0fd21a781934b45e` |
| 8 | `theorem` | [d4_prime_power_form_unit_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/declarations/d4-prime-power-form-unit-iff--d55ca2bd5f78ee442734e1a9.md) | 47 | `result-track:d55ca2bd5f78ee442734e1a9b25b7a17d293d13862a9266f578b4e49ecc4907e` |
| 9 | `theorem` | [d4_prime_power_form_unit_iff_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/declarations/d4-prime-power-form-unit-iff-odd--76e0777442b1dc21c45d8b36.md) | 53 | `result-track:76e0777442b1dc21c45d8b369b163cb31d6cd54c79a7feb0aae49ef1844a9237` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
