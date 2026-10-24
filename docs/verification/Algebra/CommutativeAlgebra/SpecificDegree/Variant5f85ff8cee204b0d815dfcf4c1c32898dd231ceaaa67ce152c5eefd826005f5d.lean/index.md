# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SpecificDegree.Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "096bdf783ea370099595cef26f78dbd5eca3bd88",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SpecificDegree/Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SpecificDegree/Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SpecificDegree/Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `096bdf783ea370099595cef26f78dbd5eca3bd88`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SpecificDegree/Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SpecificDegree/Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Roots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Monic.irreducible_iff_roots_eq_zero_of_degree_le_three](../../../../../mathematics/Algebra/CommutativeAlgebra/SpecificDegree/Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d.lean/declarations/monic-irreducible-iff-roots-eq-zero-of-degree-le-three--abaa3630e0092d51c7fdb03a.md) | 31 | `result-track:abaa3630e0092d51c7fdb03a3b006aaf59a74210f5e57fdc8445308009059d85` |
| 2 | `theorem` | [irreducible_iff_roots_eq_zero_of_degree_le_three](../../../../../mathematics/Algebra/CommutativeAlgebra/SpecificDegree/Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d.lean/declarations/irreducible-iff-roots-eq-zero-of-degree-le-three--e6d25ca9f9b13bd740e3de54.md) | 52 | `result-track:e6d25ca9f9b13bd740e3de540afd891ac5b7af93b4146f598da8b9e6374fb7b2` |
| 3 | `lemma` | [irreducible_of_degree_le_three_of_not_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/SpecificDegree/Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d.lean/declarations/irreducible-of-degree-le-three-of-not-isroot--27de7f2e9e157bc0a6047828.md) | 63 | `result-track:27de7f2e9e157bc0a60478283a6581c7d0e7e1d114d154843988beceb2305a5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
