# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Nilpotent.Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77b3f1e75e121d841728b7748666e1271a88e951",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77b3f1e75e121d841728b7748666e1271a88e951`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isNilpotent_C_mul_pow_X_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/isnilpotent-c-mul-pow-x-of-isnilpotent--fc39845cbedfa0dd7435c3b2.md) | 35 | `result-track:fc39845cbedfa0dd7435c3b262ea696e4e3aceadf3723b862877d7d76a1d7229` |
| 2 | `lemma` | [isNilpotent_pow_X_mul_C_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/isnilpotent-pow-x-mul-c-of-isnilpotent--83e08035aea7b43d81c9ef4e.md) | 42 | `result-track:83e08035aea7b43d81c9ef4e84bf99d6f843717de908aab7cc31b82fa90382bd` |
| 3 | `lemma` | [isNilpotent_monomial_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/isnilpotent-monomial-iff--930446aa2375cfe6b42ce5ae.md) | 47 | `result-track:930446aa2375cfe6b42ce5ae215a629cbdd4e8cf959167e24857a165f6ac5cc7` |
| 4 | `lemma` | [isNilpotent_C_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/isnilpotent-c-iff--d9648052d37ef113dfda91be.md) | 51 | `result-track:d9648052d37ef113dfda91beddb44f347f2c64277394126d1b2c2b77edabcf4a` |
| 5 | `lemma` | [isNilpotent_X_mul_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/isnilpotent-x-mul-iff--21c80ac3dc50dfadfc3aa702.md) | 55 | `result-track:21c80ac3dc50dfadfc3aa7024201d99520f3d17f680ea84687100f6823799a09` |
| 6 | `lemma` | [isNilpotent_mul_X_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/isnilpotent-mul-x-iff--e1ba32c26fdcbf8b6da57e3f.md) | 62 | `result-track:e1ba32c26fdcbf8b6da57e3f7c73ce487f33cd562641dcdee85c28d288ab5255` |
| 7 | `lemma` | [isNilpotent_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/isnilpotent-iff--dfb36aa6c6b92d7621ff6a17.md) | 73 | `result-track:dfb36aa6c6b92d7621ff6a17790d95896343f8ab36149fcd4d79ca991dd855b9` |
| 8 | `lemma` | [isNilpotent_reverse_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/isnilpotent-reverse-iff--a87b911b3c00e0680dfb3b9a.md) | 90 | `result-track:a87b911b3c00e0680dfb3b9a9dab7810015f5aef16bdd491a7d9f1c989fb0ad0` |
| 9 | `theorem` | [isUnit_of_coeff_isUnit_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/isunit-of-coeff-isunit-isnilpotent--7e3e4f5cd82dc66a6d0489f3.md) | 103 | `result-track:7e3e4f5cd82dc66a6d0489f375cb144e1ddf7d2f151d076688513c0c5d2e725c` |
| 10 | `theorem` | [coeff_isUnit_isNilpotent_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/coeff-isunit-isnilpotent-of-isunit--0aa6f9f60497e1c48af2cf2a.md) | 129 | `result-track:0aa6f9f60497e1c48af2cf2a7dbdfca913eb5c13d00969bf3b39989c7c066241` |
| 11 | `theorem` | [isUnit_iff_coeff_isUnit_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/isunit-iff-coeff-isunit-isnilpotent--eb5978123242dab64216d70a.md) | 153 | `result-track:eb5978123242dab64216d70a4d0afc4468a9fc3ae08d8fe1c50c4b78a085396a` |
| 12 | `lemma` | [isUnit_C_add_X_mul_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/isunit-c-add-x-mul-iff--9c274a544e2dadef933f4a64.md) | 157 | `result-track:9c274a544e2dadef933f4a640cc419be0f0746abdae5eb66055e7c14b6ab60ce` |
| 13 | `lemma` | [isUnit_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/declarations/isunit-iff--ff712c9ad7ba61f4404f5cf6.md) | 164 | `result-track:ff712c9ad7ba61f4404f5cf6093a6fd85736a9dc5a0c395f9e72215180e50d27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
