# Verification target: GRWTSK.Algebra.UniversalAlgebra.CharAndCard.Variantd55fe61ae30603bcaee5f5cd8a2afecd89646a45205690e6129e7c3c27149ff9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03f7564a3d16984519a3fe84d811ee51d5c98cf5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CharAndCard/Variantd55fe61ae30603bcaee5f5cd8a2afecd89646a45205690e6129e7c3c27149ff9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variantd55fe61ae30603bcaee5f5cd8a2afecd89646a45205690e6129e7c3c27149ff9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variantd55fe61ae30603bcaee5f5cd8a2afecd89646a45205690e6129e7c3c27149ff9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03f7564a3d16984519a3fe84d811ee51d5c98cf5`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CharAndCard/Variantd55fe61ae30603bcaee5f5cd8a2afecd89646a45205690e6129e7c3c27149ff9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CharAndCard/Variantd55fe61ae30603bcaee5f5cd8a2afecd89646a45205690e6129e7c3c27149ff9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_iff_not_dvd_char_of_ringChar_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variantd55fe61ae30603bcaee5f5cd8a2afecd89646a45205690e6129e7c3c27149ff9.lean/declarations/isunit-iff-not-dvd-char-of-ringchar-ne-zero--eba2ec207ebae54469cef924.md) | 31 | `result-track:eba2ec207ebae54469cef92470cbde5b92910876c70aefbd537b0094a82871a3` |
| 2 | `theorem` | [isUnit_iff_not_dvd_char](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variantd55fe61ae30603bcaee5f5cd8a2afecd89646a45205690e6129e7c3c27149ff9.lean/declarations/isunit-iff-not-dvd-char--c7d83b5a87149046cb165382.md) | 58 | `result-track:c7d83b5a87149046cb165382df226747fd64e59cfb36f47f83cbe81e34be2416` |
| 3 | `theorem` | [prime_dvd_char_iff_dvd_card](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variantd55fe61ae30603bcaee5f5cd8a2afecd89646a45205690e6129e7c3c27149ff9.lean/declarations/prime-dvd-char-iff-dvd-card--2bd57ed365b447472af2985a.md) | 64 | `result-track:2bd57ed365b447472af2985af6c91acf787751a58362eaf915ecdb0595a5d637` |
| 4 | `theorem` | [not_isUnit_prime_of_dvd_card](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variantd55fe61ae30603bcaee5f5cd8a2afecd89646a45205690e6129e7c3c27149ff9.lean/declarations/not-isunit-prime-of-dvd-card--587f3dccd0fae9b84dac8db1.md) | 84 | `result-track:587f3dccd0fae9b84dac8db1d75007cde2e4f7af6b9a850b6450f01f2d6586f0` |
| 5 | `lemma` | [charP_of_card_eq_prime](../../../../../mathematics/Algebra/UniversalAlgebra/CharAndCard/Variantd55fe61ae30603bcaee5f5cd8a2afecd89646a45205690e6129e7c3c27149ff9.lean/declarations/charp-of-card-eq-prime--fd538775d3cebaecfbe71a8d.md) | 89 | `result-track:fd538775d3cebaecfbe71a8d7989c8b1297ffbade24ee8373ee8121e3002849f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
