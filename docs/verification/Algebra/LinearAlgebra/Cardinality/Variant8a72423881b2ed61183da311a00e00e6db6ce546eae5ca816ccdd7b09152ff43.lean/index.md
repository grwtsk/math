# Verification target: GRWTSK.Algebra.LinearAlgebra.Cardinality.Variant8a72423881b2ed61183da311a00e00e6db6ce546eae5ca816ccdd7b09152ff43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acf274409423ffaf5d8515704792b549ae784348",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant8a72423881b2ed61183da311a00e00e6db6ce546eae5ca816ccdd7b09152ff43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant8a72423881b2ed61183da311a00e00e6db6ce546eae5ca816ccdd7b09152ff43.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant8a72423881b2ed61183da311a00e00e6db6ce546eae5ca816ccdd7b09152ff43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acf274409423ffaf5d8515704792b549ae784348`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant8a72423881b2ed61183da311a00e00e6db6ce546eae5ca816ccdd7b09152ff43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cardinality/Variant8a72423881b2ed61183da311a00e00e6db6ce546eae5ca816ccdd7b09152ff43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Pigeonhole` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [finite_of_span_finite_eq_top_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant8a72423881b2ed61183da311a00e00e6db6ce546eae5ca816ccdd7b09152ff43.lean/declarations/finite-of-span-finite-eq-top-finsupp--f12204407fe72be25fd47886.md) | 27 | `result-track:f12204407fe72be25fd478862537838b5b7bed16a13941672dd3b9e6aae60d1e` |
| 2 | `lemma` | [basis_finite_of_finite_spans](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant8a72423881b2ed61183da311a00e00e6db6ce546eae5ca816ccdd7b09152ff43.lean/declarations/basis-finite-of-finite-spans--714a50dcec0d0b374f700f71.md) | 50 | `result-track:714a50dcec0d0b374f700f715cac97e60ee943aff34f853c4901448bbd4f5157` |
| 3 | `theorem` | [union_support_maximal_linearIndependent_eq_range_basis](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant8a72423881b2ed61183da311a00e00e6db6ce546eae5ca816ccdd7b09152ff43.lean/declarations/union-support-maximal-linearindependent-eq-range-basis--f7cfb54af01446a0837ef0d2.md) | 67 | `result-track:f7cfb54af01446a0837ef0d23da32f9bc54cc7102a8a70640977f583681988d0` |
| 4 | `theorem` | [infinite_basis_le_maximal_linearIndependent'](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant8a72423881b2ed61183da311a00e00e6db6ce546eae5ca816ccdd7b09152ff43.lean/declarations/infinite-basis-le-maximal-linearindependent--824dad9aa0b7c9ce86b0fd21.md) | 110 | `result-track:824dad9aa0b7c9ce86b0fd21ae5e253d47aa7c03bf75be94fc03e13ddb426010` |
| 5 | `theorem` | [infinite_basis_le_maximal_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant8a72423881b2ed61183da311a00e00e6db6ce546eae5ca816ccdd7b09152ff43.lean/declarations/infinite-basis-le-maximal-linearindependent--1a26d1f718ca55892e2b384d.md) | 126 | `result-track:1a26d1f718ca55892e2b384dde3a0fd25262e2ae8386e7c2588121b52f2d5c7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
