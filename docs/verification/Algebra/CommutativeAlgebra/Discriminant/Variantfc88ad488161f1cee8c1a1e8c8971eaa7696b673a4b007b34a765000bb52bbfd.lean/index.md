# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Discriminant.Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83c3817c8cbafeb162db984b7a478db9c0b62daa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83c3817c8cbafeb162db984b7a478db9c0b62daa`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Discriminant` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean/declarations/macro-rules--ff6019d8e177cf71dc58850f.md) | 26 | `declaration-track:ff6019d8e177cf71dc58850f857e3f406536a96fc601fb43d3081fee2c7ae222` |
| 2 | `theorem` | [discr_zeta_eq_discr_zeta_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean/declarations/discr-zeta-eq-discr-zeta-sub-one--43cdc2eabc36156b9e00ff50.md) | 40 | `result-track:43cdc2eabc36156b9e00ff502f006d3b764dcb19a829718877e571a76496c48f` |
| 3 | `theorem` | [discr_prime_pow_ne_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean/declarations/discr-prime-pow-ne-two--aeb186b5c2963542fb3c14b9.md) | 65 | `result-track:aeb186b5c2963542fb3c14b96ee50f02a2db9c36c6090383c13c766ce41cfefb` |
| 4 | `theorem` | [discr_prime_pow_ne_two'](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean/declarations/discr-prime-pow-ne-two--283edbf8ff8b059f705b4616.md) | 132 | `result-track:283edbf8ff8b059f705b46169cae89a973b54d5e89b1ce976f8537cba0b86c42` |
| 5 | `theorem` | [discr_prime_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean/declarations/discr-prime-pow--01c75fbea43e1412671dbe51.md) | 144 | `result-track:01c75fbea43e1412671dbe51f5e1ae2c320911188b78dff1af7528d9b94e43f8` |
| 6 | `theorem` | [discr_prime_pow_eq_unit_mul_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean/declarations/discr-prime-pow-eq-unit-mul-pow--c68bdbf5bbfac07f248fc8b5.md) | 186 | `result-track:c68bdbf5bbfac07f248fc8b5db9d4a2d98a1d4652d1cd1cc9a51dc13b3af50d9` |
| 7 | `theorem` | [discr_odd_prime](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean/declarations/discr-odd-prime--ba9964b19f6c3e1d958ef378.md) | 200 | `result-track:ba9964b19f6c3e1d958ef37837bfc0968093e8494d7f9f578a38878de5da2960` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
