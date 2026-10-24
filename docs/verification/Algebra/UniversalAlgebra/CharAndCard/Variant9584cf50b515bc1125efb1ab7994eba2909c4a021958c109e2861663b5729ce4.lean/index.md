# Verification target: GRWTSK.Algebra.UniversalAlgebra.CharAndCard.Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f78ed1df476fc46f3c8bd0aa538cc4229e48b6e4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f78ed1df476fc46f3c8bd0aa538cc4229e48b6e4`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_iff_not_dvd_char_of_ringChar_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean/declarations/isunit-iff-not-dvd-char-of-ringchar-ne-zero--a9a4c7082e91c959fa3aca9e.md) | 23 | `result-track:a9a4c7082e91c959fa3aca9e41d50b91ed59bea4b6da1127f5ad920e6cf3ac47` |
| 2 | `theorem` | [isUnit_iff_not_dvd_char](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean/declarations/isunit-iff-not-dvd-char--ac13ebf935dd17e99742429b.md) | 50 | `result-track:ac13ebf935dd17e99742429b6d256cc8f82b77a69d190a925b5738ffac393662` |
| 3 | `theorem` | [prime_dvd_char_iff_dvd_card](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean/declarations/prime-dvd-char-iff-dvd-card--50308746501f752c5fcaca8c.md) | 56 | `result-track:50308746501f752c5fcaca8cd3afde0edf6fdfa36fe3335a03d12d357c243f04` |
| 4 | `theorem` | [not_isUnit_prime_of_dvd_card](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean/declarations/not-isunit-prime-of-dvd-card--6e030f768a851f1c62d6d459.md) | 76 | `result-track:6e030f768a851f1c62d6d459d5d74aff593e5dde63a9720651b769bf605dec8e` |
| 5 | `lemma` | [charP_of_card_eq_prime](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean/declarations/charp-of-card-eq-prime--1704616e392b0332639b018b.md) | 81 | `result-track:1704616e392b0332639b018bfaab785cf352fbd65202e7458edebbeea0336098` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
