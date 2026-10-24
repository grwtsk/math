# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43156137dec416b14af1f2a6fd3ccba0a4c23f66",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43156137dec416b14af1f2a6fd3ccba0a4c23f66`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclotomic_expand_eq_cyclotomic_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean/declarations/cyclotomic-expand-eq-cyclotomic-mul--cc6d59efa381a1ef27890804.md) | 43 | `result-track:cc6d59efa381a1ef27890804435b8eabd6bdcb8dbef9b14bec5117c1336b2ff4` |
| 2 | `theorem` | [cyclotomic_expand_eq_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean/declarations/cyclotomic-expand-eq-cyclotomic--6de530d8e3a41372cfa499ac.md) | 85 | `result-track:6de530d8e3a41372cfa499ace8b672b9f7d75e60c82160fedff3cce4769a6e4b` |
| 3 | `theorem` | [cyclotomic_irreducible_pow_of_irreducible_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean/declarations/cyclotomic-irreducible-pow-of-irreducible-pow--8bd22f71584301ab32d4139f.md) | 107 | `result-track:8bd22f71584301ab32d4139fd04cfdf80103db3ed17e34cfd989dc41bdd1fff9` |
| 4 | `theorem` | [cyclotomic_irreducible_of_irreducible_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean/declarations/cyclotomic-irreducible-of-irreducible-pow--2455508837d09fd79f54daa2.md) | 121 | `result-track:2455508837d09fd79f54daa2fbc6785b4950b4a5afcd62cbded28468680a0ab3` |
| 5 | `theorem` | [cyclotomic_mul_prime_eq_pow_of_not_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean/declarations/cyclotomic-mul-prime-eq-pow-of-not-dvd--e2fa1401fcc97fcc095e4ff8.md) | 131 | `result-track:e2fa1401fcc97fcc095e4ff8bce4dfc203ccabef6dbce8736392d055e491e9e0` |
| 6 | `theorem` | [cyclotomic_mul_prime_dvd_eq_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean/declarations/cyclotomic-mul-prime-dvd-eq-pow--43f104ea3325a90e0edc5a30.md) | 146 | `result-track:43f104ea3325a90e0edc5a3050141cbe1aac38b99d86305728089eb0467a0413` |
| 7 | `theorem` | [cyclotomic_mul_prime_pow_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean/declarations/cyclotomic-mul-prime-pow-eq--d257ea9a9f38b4ac6c18ad89.md) | 158 | `result-track:d257ea9a9f38b4ac6c18ad894cb4e2ae0d521d45ac683a3b0a4527547e33615f` |
| 8 | `theorem` | [isRoot_cyclotomic_prime_pow_mul_iff_of_charP](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean/declarations/isroot-cyclotomic-prime-pow-mul-iff-of-charp--6ee6e35a4c2ad7b4e262de53.md) | 173 | `result-track:6ee6e35a4c2ad7b4e262de532895e519170b1089b2252e3d462879f6fbcaa83d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
