# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ExpChar.Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55ca94dbddbb2e0dd85319b93f4ad4c4a6e65019",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55ca94dbddbb2e0dd85319b93f4ad4c4a6e65019`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [inductive](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/declarations/inductive--e3d631ebd74279c9a3aa5493.md) | 42 | `declaration-track:e3d631ebd74279c9a3aa5493c5fcec7ceadf2d0c4a33288328fb6633a2ba480a` |
| 2 | `theorem` | [expChar_one_of_char_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/declarations/expchar-one-of-char-zero--7ee1794c522b1a9478a65b1c.md) | 49 | `result-track:7ee1794c522b1a9478a65b1c50e0132aff76fc07477aa3b7a24f88876eb87e04` |
| 3 | `theorem` | [char_eq_expChar_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/declarations/char-eq-expchar-iff--411080cac726fdef5304ab9b.md) | 56 | `result-track:411080cac726fdef5304ab9b2519b1a0d2813c5fd2748806e5ae3834cfb3f620` |
| 4 | `theorem` | [char_zero_of_expChar_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/declarations/char-zero-of-expchar-one--2a13ab9951802476aa9b8bd8.md) | 68 | `result-track:2a13ab9951802476aa9b8bd8bb0657b9c4e161997a64b4a7e88ddeffbc5f3f25` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/declarations/instance--effb2c279c69ebd66f9d9978.md) | 76 | `declaration-track:effb2c279c69ebd66f9d997872baadf10b21e02bc22505534d46741a38dedbc9` |
| 6 | `theorem` | [expChar_one_iff_char_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/declarations/expchar-one-iff-char-zero--8afcb4810b069cebf619347d.md) | 83 | `result-track:8afcb4810b069cebf619347d0efc9c59686b24f02d9792b34babcb0d07e20f29` |
| 7 | `theorem` | [char_prime_of_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/declarations/char-prime-of-ne-zero--804760afb4d30bd115a3808b.md) | 96 | `result-track:804760afb4d30bd115a3808b3b7a3a8ec85814014273e481723aac76e30d50a5` |
| 8 | `theorem` | [expChar_is_prime_or_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/declarations/expchar-is-prime-or-one--ac391997e8b917885857c07c.md) | 103 | `result-track:ac391997e8b917885857c07c9cac183dd4430ca761bee38ab98c672eb392b276` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
