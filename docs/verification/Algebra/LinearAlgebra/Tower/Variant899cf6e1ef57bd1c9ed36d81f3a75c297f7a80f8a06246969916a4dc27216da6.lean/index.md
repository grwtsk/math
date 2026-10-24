# Verification target: GRWTSK.Algebra.LinearAlgebra.Tower.Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1339509ed50fd4e87fb3a975580e15238b694756",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1339509ed50fd4e87fb3a975580e15238b694756`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.LinearDisjoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PurelyInseparable.PerfectClosure` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LinearIndependent.map_of_isPurelyInseparable_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/linearindependent-map-of-ispurelyinseparable-of-isseparable--d57fbb8044aaedb93964755e.md) | 61 | `result-track:d57fbb8044aaedb93964755ec8f5d1b0ebe9dacf647998666e811a6de831f7aa` |
| 2 | `theorem` | [IntermediateField.linearDisjoint_of_isPurelyInseparable_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/intermediatefield-lineardisjoint-of-ispurelyinseparable-of-isseparable--31d38f97e02950a4a4794c69.md) | 95 | `result-track:31d38f97e02950a4a4794c6956de7bceed43dfe64db4c42b83824d1b6f909983` |
| 3 | `lemma` | [sepDegree_eq_of_isPurelyInseparable_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/sepdegree-eq-of-ispurelyinseparable-of-isseparable--e078272dd3e16e6e91df05ee.md) | 110 | `result-track:e078272dd3e16e6e91df05ee16de0bcd7effb33178402379595c9a16cb8454a5` |
| 4 | `lemma` | [lift_rank_mul_lift_sepDegree_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/lift-rank-mul-lift-sepdegree-of-isseparable--07cde0fe9434766c64f764ff.md) | 120 | `result-track:07cde0fe9434766c64f764ff3c5c15af6a5b36ca1abc5ed8aa80cc20f2ab35eb` |
| 5 | `lemma` | [rank_mul_sepDegree_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/rank-mul-sepdegree-of-isseparable--5a2897049331c76e6da88faa.md) | 127 | `result-track:5a2897049331c76e6da88faa64d90d4d4ec361253eea54bb7836e8df5031e566` |
| 6 | `lemma` | [insepDegree_eq_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/insepdegree-eq-of-isseparable--7299cda81a359fc06402bb7a.md) | 136 | `result-track:7299cda81a359fc06402bb7a98fea67bd73effa56c364b85d86a88d46c071ea0` |
| 7 | `lemma` | [sepDegree_eq_of_isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/sepdegree-eq-of-ispurelyinseparable--2ab30447a69f96c3f59a3647.md) | 145 | `result-track:2ab30447a69f96c3f59a364718280829a299d111d47a37f8f12c19d2e1a30699` |
| 8 | `lemma` | [lift_rank_mul_lift_insepDegree_of_isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/lift-rank-mul-lift-insepdegree-of-ispurelyinseparable--4701ba48fcf7e100a454c2b8.md) | 158 | `result-track:4701ba48fcf7e100a454c2b849819b91798f9bf7fc219e5c67098d0337bb0eb9` |
| 9 | `lemma` | [rank_mul_insepDegree_of_isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/rank-mul-insepdegree-of-ispurelyinseparable--b9825f7d72a9b96a869746b3.md) | 166 | `result-track:b9825f7d72a9b96a869746b35bf5e91204ca38f63125dddad9cbfc0c3238d742` |
| 10 | `theorem` | [lift_sepDegree_mul_lift_sepDegree_of_isAlgebraic](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/lift-sepdegree-mul-lift-sepdegree-of-isalgebraic--b00809dd6bd6374e2a87e127.md) | 173 | `result-track:b00809dd6bd6374e2a87e12713b8c052a5b67dfc1bc0751311375c43f976d7bd` |
| 11 | `theorem` | [sepDegree_mul_sepDegree_of_isAlgebraic](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/sepdegree-mul-sepdegree-of-isalgebraic--f290ccd7bce5184a99649ef0.md) | 181 | `result-track:f290ccd7bce5184a99649ef05e788b9f482a2c94db450c7e8c595aa0512906f7` |
| 12 | `theorem` | [lift_insepDegree_mul_lift_insepDegree_of_isAlgebraic](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/lift-insepdegree-mul-lift-insepdegree-of-isalgebraic--f78255fbe757778840f0c07c.md) | 188 | `result-track:f78255fbe757778840f0c07cdf631a110d0db1ae4f2a4d24c87beecf51a23cb8` |
| 13 | `theorem` | [insepDegree_mul_insepDegree_of_isAlgebraic](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/insepdegree-mul-insepdegree-of-isalgebraic--49a912fb715e04dbd36035a2.md) | 196 | `result-track:49a912fb715e04dbd36035a21dc86086f2ec4cdc20c6e2d345f043f5220648da` |
| 14 | `theorem` | [finInsepDegree_mul_finInsepDegree_of_isAlgebraic](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/fininsepdegree-mul-fininsepdegree-of-isalgebraic--3416c7d0aaaa973c57659119.md) | 204 | `result-track:3416c7d0aaaa973c5765911978db96e7b94699c0236e1d56d928c66e41797dd3` |
| 15 | `theorem` | [IntermediateField.sepDegree_adjoin_eq_of_isAlgebraic_of_isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/intermediatefield-sepdegree-adjoin-eq-of-isalgebraic-of-ispurelyinsepara--ee57e03ede2c2b3d38aeead5.md) | 215 | `result-track:ee57e03ede2c2b3d38aeead51cfa7184fbb4175bab2f4d963997098819b22a07` |
| 16 | `theorem` | [IntermediateField.sepDegree_adjoin_eq_of_isAlgebraic_of_isPurelyInseparable'](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/intermediatefield-sepdegree-adjoin-eq-of-isalgebraic-of-ispurelyinsepara--cf17ff77b56cf219ced40d65.md) | 250 | `result-track:cf17ff77b56cf219ced40d650df1473daf55967608bc5b9862a464c2bea6ec70` |
| 17 | `theorem` | [minpoly.map_eq_of_isSeparable_of_isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/minpoly-map-eq-of-isseparable-of-ispurelyinseparable--e2a15deefa678bdf26b3a3e4.md) | 261 | `result-track:e2a15deefa678bdf26b3a3e4f6e07eefbdaefa457966cfb068a03f74cf83bbe4` |
| 18 | `theorem` | [Polynomial.Separable.map_irreducible_of_isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/declarations/polynomial-separable-map-irreducible-of-ispurelyinseparable--479326f034569233cf953319.md) | 281 | `result-track:479326f034569233cf95331948533f9da4085213ee6ed16ef08dda37abec10c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
