# Verification target: GRWTSK.Algebra.LinearAlgebra.Sylvester.Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12a8ff2a1aa06d53d6659ae1272c87d869f80d29",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12a8ff2a1aa06d53d6659ae1272c87d869f80d29`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.HermitianPosPart` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hermForm](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/hermform--4b805ecb84215a6d2323229f.md) | 51 | `declaration-track:4b805ecb84215a6d2323229f363cc022cedff503dd82e17337c46896c119be93` |
| 2 | `def` | [PosDefOn](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/posdefon--535c9deadd53adbce98bedb4.md) | 55 | `declaration-track:535c9deadd53adbce98bedb4926ea313b2c4d50e1f18233cd20dbbfea2470767` |
| 3 | `lemma` | [hermForm_conj](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/hermform-conj--35d22d8e462aab10c405bd30.md) | 59 | `result-track:35d22d8e462aab10c405bd30607225933c411ceecf4f0b8274818a64a845024d` |
| 4 | `lemma` | [hermForm_add](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/hermform-add--0a59488d9b14dbc524db9476.md) | 68 | `result-track:0a59488d9b14dbc524db9476924147261335f9cb7c23e313ac7d2975f9553ad2` |
| 5 | `lemma` | [hermForm_sub](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/hermform-sub--21c74d2ac42f3cd0f210550a.md) | 74 | `result-track:21c74d2ac42f3cd0f210550a100ef46e350080576b9bcc340715b138680721c3` |
| 6 | `lemma` | [hermForm_nonneg_of_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/hermform-nonneg-of-possemidef--05026a1f3a2befe6c8b2e8be.md) | 81 | `result-track:05026a1f3a2befe6c8b2e8bef2738fc0993ca6218be02784a21d7ce96c52835b` |
| 7 | `theorem` | [finrank_le_posIndex_of_posDefOn](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/finrank-le-posindex-of-posdefon--b9af3d2cd56966e298d04f13.md) | 90 | `result-track:b9af3d2cd56966e298d04f1347547f812dc67e072c03abd64a090bd76c030ad5` |
| 8 | `theorem` | [posDefOn_range_hermPosPart](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/posdefon-range-hermpospart--3d220a3a3b18661dd5b6845f.md) | 131 | `result-track:3d220a3a3b18661dd5b6845fe890787b69447279c9cc8c5728ab319f0d989e27` |
| 9 | `lemma` | [hermForm_one](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/hermform-one--e3cc9a2348e7b26d0277592c.md) | 189 | `result-track:e3cc9a2348e7b26d0277592ce6c8097b11863bd83984f3208bf6045b9b2c0d9b` |
| 10 | `lemma` | [sum_normSq_unitary_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/sum-normsq-unitary-mulvec--24a26cf8d2b8b25ec201e900.md) | 196 | `result-track:24a26cf8d2b8b25ec201e90078429277d3894cb0a4b0db205888a101c93b897f` |
| 11 | `lemma` | [hermForm_le_of_eigenvalues_le](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/hermform-le-of-eigenvalues-le--6091e76a14ee4e2d20bfa074.md) | 208 | `result-track:6091e76a14ee4e2d20bfa07476c2532c3a48cd81293ce5c62996c82e9a42ce65` |
| 12 | `theorem` | [hermForm_gt_on_range_truncPos](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/hermform-gt-on-range-truncpos--05184c83c390cb84cbc211b3.md) | 223 | `result-track:05184c83c390cb84cbc211b329ff6e38cad9871d652e0fe4f1b5ebff96aea070` |
| 13 | `lemma` | [finrank_range_truncPos](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/finrank-range-truncpos--72fd52eb6b5a86ede28c28dd.md) | 297 | `result-track:72fd52eb6b5a86ede28c28dd5f90b583098abb99f8e0ef7b3b2bb81ecba787a5` |
| 14 | `lemma` | [finrank_range_hermPosPart](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/finrank-range-hermpospart--8098c5609853c2d288f5e32c.md) | 307 | `result-track:8098c5609853c2d288f5e32cd6d6b286962d3f405045df433cb93995bcf43c0a` |
| 15 | `theorem` | [posIndex_eq_max_finrank_posDefOn](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/declarations/posindex-eq-max-finrank-posdefon--5058288088185d8406289e43.md) | 312 | `result-track:5058288088185d8406289e4396fd9561d293c3b7298e8cf5f572272ebc0920ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
