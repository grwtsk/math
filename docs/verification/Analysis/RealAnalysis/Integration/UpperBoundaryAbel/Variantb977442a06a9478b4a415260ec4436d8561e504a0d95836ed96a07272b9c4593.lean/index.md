# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryAbel.Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae2710ea67deeec2207f13af925c677e92c3db40",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae2710ea67deeec2207f13af925c677e92c3db40`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.UpperRowInversion` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MertensTransport` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperProductCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/upperproductcoefficient--fc4fcca7a9db9f8fb80b0af1.md) | 11 | `declaration-track:fc4fcca7a9db9f8fb80b0af1f4e15c00f9fd7953fb3e5add7f047a79ad2f6d79` |
| 2 | `def` | [upperProductSummatory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/upperproductsummatory--58731fdc767d2a032bf1c04d.md) | 17 | `declaration-track:58731fdc767d2a032bf1c04d40da9cc94ed39e25bdf98a7628d337347150af04` |
| 3 | `theorem` | [upperProductCoefficient_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/upperproductcoefficient-zero--baf5e6b2529419012f22d89b.md) | 20 | `result-track:baf5e6b2529419012f22d89b68f9b228d0204a5cb3d953414e0ececf8c76f411` |
| 4 | `theorem` | [upperProductCoefficient_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/upperproductcoefficient-one--706705b25ad0bc6b2991bc42.md) | 30 | `result-track:706705b25ad0bc6b2991bc422d23e8257bf9b33bd5fd9241bb2ff86ff59ef01f` |
| 5 | `theorem` | [upperProductSummatory_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/upperproductsummatory-one--e86dd94b7f3f3f88710cf2a1.md) | 44 | `result-track:e86dd94b7f3f3f88710cf2a1b547682b6b1e773d101f2978acb3ccfbe1ac9032` |
| 6 | `theorem` | [upper_rectangle_eq_weighted_product_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/upper-rectangle-eq-weighted-product-sum--6375a327a19cca29f2ee1b32.md) | 49 | `result-track:6375a327a19cca29f2ee1b32dae4789ac70e91b2555d1070e75235d4556fa26f` |
| 7 | `theorem` | [upperProductSummatory_eq_rectangle_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/upperproductsummatory-eq-rectangle-cutoff--5165335660c42de152171d9e.md) | 71 | `result-track:5165335660c42de152171d9e0d385f95180811b65f959863f5692717593e044b` |
| 8 | `theorem` | [upperProductSummatory_eq_zero_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/upperproductsummatory-eq-zero-sum--9e561f14187fef158907a316.md) | 88 | `result-track:9e561f14187fef158907a316456e14f5a7a488238bdd651ee833fecc8fbdaa06` |
| 9 | `theorem` | [upperProductSummatory_mul_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/upperproductsummatory-mul-integrableon--27db0d72b382afa4450f8e04.md) | 101 | `result-track:27db0d72b382afa4450f8e04def17c296eefe0e540ca8ae951e41df1dcdc24ff` |
| 10 | `theorem` | [upperProduct_sum_eq_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/upperproduct-sum-eq-abel--861e9d2dc79ef797d9cc2e60.md) | 108 | `result-track:861e9d2dc79ef797d9cc2e60690dae512deae3ed25f50315d2109b3060c77d92` |
| 11 | `theorem` | [upper_rectangle_eq_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/upper-rectangle-eq-abel--160201c3958c5c71fd3376a3.md) | 120 | `result-track:160201c3958c5c71fd3376a3a39edefda5050c99063a11c0269bb2d9dc26ce32` |
| 12 | `theorem` | [source_index_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/source-index-two--813ce8daacdc09d63c702e1e.md) | 143 | `result-track:813ce8daacdc09d63c702e1e76fad8abb625fcf18fec4d369e83e3d0d0166030` |
| 13 | `theorem` | [source_square_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/source-square-cutoff--055937e125a44616194c22bc.md) | 148 | `result-track:055937e125a44616194c22bc2e6c84aab8744c6b26f7eff8b8f121eb3411d5c3` |
| 14 | `theorem` | [source_upper_boundary_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/source-upper-boundary-integrableon--d55bd22b0982d30dd46115d7.md) | 160 | `result-track:d55bd22b0982d30dd46115d76a9b47cee4f4b87c3a5210bebe6acd9966256b8b` |
| 15 | `theorem` | [source_upper_boundary_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/source-upper-boundary-intervalintegrable--db4dadb37513fa1da58d1cc2.md) | 169 | `result-track:db4dadb37513fa1da58d1cc29b8ecd5417eae68fba678c74e3acedc8ec59c4db` |
| 16 | `theorem` | [source_upper_boundary_eq_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/declarations/source-upper-boundary-eq-abel--b8e6654584b5db093c7c1d9c.md) | 179 | `result-track:b8e6654584b5db093c7c1d9c4d243600555b09519cd3780c9738b8fa97c4480b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
