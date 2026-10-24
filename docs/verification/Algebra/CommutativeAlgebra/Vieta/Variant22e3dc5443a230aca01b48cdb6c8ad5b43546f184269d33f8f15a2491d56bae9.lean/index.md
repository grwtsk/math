# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Vieta.Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d325721da8e6104ca201a348cbd31bfc284e4d34",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d325721da8e6104ca201a348cbd31bfc284e4d34`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Splits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Symmetric` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_X_add_C_eq_sum_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/declarations/prod-x-add-c-eq-sum-esymm--23c2d9a851f0825897189cb6.md) | 49 | `result-track:23c2d9a851f0825897189cb6adf7cf6b6b003306dc105f5c1903dfce40cfd872` |
| 2 | `theorem` | [prod_X_add_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/declarations/prod-x-add-c-coeff--d39533986abc351b164cc54c.md) | 67 | `result-track:d39533986abc351b164cc54c0a6136e40325f71a90da3f254d8f8873e1605984` |
| 3 | `theorem` | [prod_X_add_C_coeff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/declarations/prod-x-add-c-coeff--9f619ad1eb8a5106e0d656a8.md) | 83 | `result-track:9f619ad1eb8a5106e0d656a8478471c4ee1128f9c58cfe2ce31d2e147003b0fe` |
| 4 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.ProdXAddCEqSumEsymm.Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.Finset.prod_X_add_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/declarations/root-grwtsk-algebra-commutativealgebra-prodxaddceqsumesymm-variantd435e4--23e2d75a6b489c3e3649fb29.md) | 89 | `result-track:23e2d75a6b489c3e3649fb29bb549d3fb9f367b2dddeebe94cd1c737c885ac80` |
| 5 | `theorem` | [esymm_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/declarations/esymm-neg--78937ca90e44cc0194636818.md) | 102 | `result-track:78937ca90e44cc0194636818683af0849d4fb4244b815448913c72b1c423bf67` |
| 6 | `theorem` | [prod_X_sub_X_eq_sum_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/declarations/prod-x-sub-x-eq-sum-esymm--da7d654540a2ac7aa4a28bcf.md) | 112 | `result-track:da7d654540a2ac7aa4a28bcf1fc2fa5b17ca99d88f2f68dce5e944791c2bde7a` |
| 7 | `theorem` | [prod_X_sub_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/declarations/prod-x-sub-c-coeff--fbf1488aa2c16bb26a541cc2.md) | 128 | `result-track:fbf1488aa2c16bb26a541cc23236d8fdd5637ed45d0c47b81f6c9d8a2491f2fe` |
| 8 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.ProdXAddCEqSumEsymm.Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.Polynomial.coeff_eq_esymm_roots_of_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/declarations/root-grwtsk-algebra-commutativealgebra-prodxaddceqsumesymm-variantd435e4--ff49f84a8f10ba372fb63c73.md) | 147 | `result-track:ff49f84a8f10ba372fb63c7332b49c27f3d51adccc111c28cac4134a92c6e05d` |
| 9 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.ProdXAddCEqSumEsymm.Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.Polynomial.coeff_eq_esymm_roots_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/declarations/root-grwtsk-algebra-commutativealgebra-prodxaddceqsumesymm-variantd435e4--f85513747c57991cf8d60357.md) | 157 | `result-track:f85513747c57991cf8d6035776e8b9b1b171c8c1710df748994a3d4127e4344a` |
| 10 | `theorem` | [MvPolynomial.prod_C_add_X_eq_sum_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/declarations/mvpolynomial-prod-c-add-x-eq-sum-esymm--6c737254990e29156ca9290e.md) | 176 | `result-track:6c737254990e29156ca9290e2231b73cce5eb4365281817306415b6a07e62ce3` |
| 11 | `theorem` | [MvPolynomial.prod_X_add_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/declarations/mvpolynomial-prod-x-add-c-coeff--d8df2f3ee32dcc40351134ed.md) | 189 | `result-track:d8df2f3ee32dcc40351134edd6974c4851b7cc4c8a733dd48ee784f9df6e38ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
