# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Vieta.Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32fdca0b7dd31705a28405a46cdebcf420c6db67",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32fdca0b7dd31705a28405a46cdebcf420c6db67`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Splits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Symmetric` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_X_add_C_eq_sum_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/declarations/prod-x-add-c-eq-sum-esymm--942b8a3a540cb0cc5f418a53.md) | 41 | `result-track:942b8a3a540cb0cc5f418a5318474bb64334923c4a5109fb78d1a148874f8be7` |
| 2 | `theorem` | [prod_X_add_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/declarations/prod-x-add-c-coeff--679001a221b01452af6d6701.md) | 59 | `result-track:679001a221b01452af6d6701daf6606dddf3d85d0f4dd4fcc5cacde124c11843` |
| 3 | `theorem` | [prod_X_add_C_coeff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/declarations/prod-x-add-c-coeff--572da0a45d3b5ae923a722e7.md) | 75 | `result-track:572da0a45d3b5ae923a722e7d65f54eab95d66a26d4b0f86ab11a818356f62b8` |
| 4 | `theorem` | [_root_.Finset.prod_X_add_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/declarations/root-finset-prod-x-add-c-coeff--0ac3db0d364c149e93f364b4.md) | 81 | `result-track:0ac3db0d364c149e93f364b462cf6f63a29414f4d1e5742b63207fd4b952d95a` |
| 5 | `theorem` | [esymm_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/declarations/esymm-neg--55213d6138d525f6a933de7a.md) | 94 | `result-track:55213d6138d525f6a933de7ae4928c750b300b65e5ace3693d2d0a9a2d7944ed` |
| 6 | `theorem` | [prod_X_sub_X_eq_sum_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/declarations/prod-x-sub-x-eq-sum-esymm--017eafcf98788f6620a04676.md) | 104 | `result-track:017eafcf98788f6620a046763ee8fed40fc257931e78df71c4802df11c050a10` |
| 7 | `theorem` | [prod_X_sub_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/declarations/prod-x-sub-c-coeff--1d29688236ae6aff8de193e2.md) | 120 | `result-track:1d29688236ae6aff8de193e217d9308bf6ae5909e8fe887d6e64efd17bd88336` |
| 8 | `theorem` | [_root_.Polynomial.coeff_eq_esymm_roots_of_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/declarations/root-polynomial-coeff-eq-esymm-roots-of-card--2fc56021fd774cc9c4a5e252.md) | 139 | `result-track:2fc56021fd774cc9c4a5e252cbf5807e661f0d843388256a303e3702d025a0ca` |
| 9 | `theorem` | [_root_.Polynomial.coeff_eq_esymm_roots_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/declarations/root-polynomial-coeff-eq-esymm-roots-of-splits--aba1253b17fea37e62e0745c.md) | 149 | `result-track:aba1253b17fea37e62e0745cda5324dcc7265d5d159cfdd4adb4c54248818166` |
| 10 | `theorem` | [MvPolynomial.prod_C_add_X_eq_sum_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/declarations/mvpolynomial-prod-c-add-x-eq-sum-esymm--14e36ee533740f8fa0bd0c3a.md) | 168 | `result-track:14e36ee533740f8fa0bd0c3ac9351584aa94160fb55d9b79a402fc3db7f93323` |
| 11 | `theorem` | [MvPolynomial.prod_X_add_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.lean/declarations/mvpolynomial-prod-x-add-c-coeff--0a62eb2deb176f74e7179417.md) | 181 | `result-track:0a62eb2deb176f74e7179417cb905af333f489c580a4531f9a4314deecb2b294` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
