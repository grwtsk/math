# Verification target: GRWTSK.Algebra.LinearAlgebra.Cardinality.Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bfe78f3d5470100b0048f87560d9cf2cff6cbc6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bfe78f3d5470100b0048f87560d9cf2cff6cbc6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Pigeonhole` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [finite_of_span_finite_eq_top_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean/declarations/finite-of-span-finite-eq-top-finsupp--77294ce3e26df8fb9ced7e8e.md) | 35 | `result-track:77294ce3e26df8fb9ced7e8ec84d25ff0c8f4b5c2a67471991c6babae854e17d` |
| 2 | `lemma` | [basis_finite_of_finite_spans](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean/declarations/basis-finite-of-finite-spans--fefcded365745c1226ad763b.md) | 58 | `result-track:fefcded365745c1226ad763b0db0ad4c7e982944c2053c74a5f199d67bcdc94d` |
| 3 | `theorem` | [union_support_maximal_linearIndependent_eq_range_basis](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean/declarations/union-support-maximal-linearindependent-eq-range-basis--6fe11beaa7b602171ed5b919.md) | 75 | `result-track:6fe11beaa7b602171ed5b9196ed2ac838fec41a693641aa1f147d2dcafec58a7` |
| 4 | `theorem` | [infinite_basis_le_maximal_linearIndependent'](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean/declarations/infinite-basis-le-maximal-linearindependent--0955f25e523e2cbec6d39374.md) | 118 | `result-track:0955f25e523e2cbec6d393749f52f9339d52c27df7c57e6df733fccefb79e0b0` |
| 5 | `theorem` | [infinite_basis_le_maximal_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean/declarations/infinite-basis-le-maximal-linearindependent--981cba4234109b425d74fec3.md) | 134 | `result-track:981cba4234109b425d74fec3a354f175aed102f5ed3c617eda4be3f1bba9a625` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
