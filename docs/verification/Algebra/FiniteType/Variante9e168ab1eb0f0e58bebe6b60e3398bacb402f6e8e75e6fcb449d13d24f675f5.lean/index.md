# Verification target: GRWTSK.Algebra.FiniteType.Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33d47de7f57c2987ad48268ee7e8676784a838d0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33d47de7f57c2987ad48268ee7e8676784a838d0`.

Source path: `GRWTSK/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FiniteStability` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.InvSubmonoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Finite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finiteType_stableUnderComposition](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/declarations/finitetype-stableundercomposition--d631b8b0aba58243337ef287.md) | 45 | `result-track:d631b8b0aba58243337ef2872755cf5119c3e49c17458aff502a8c156240fac7` |
| 2 | `theorem` | [finiteType_localizationPreserves](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/declarations/finitetype-localizationpreserves--9d057929107a833f0bf0aa64.md) | 50 | `result-track:9d057929107a833f0bf0aa640947e9a03c949b724132c10b0d290c9ea87ecf1c` |
| 3 | `theorem` | [localization_away_map_finiteType](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/declarations/localization-away-map-finitetype--114fece65de385fe28752380.md) | 79 | `result-track:114fece65de385fe287523806c0f04479cf68b890abc16e24d05561398914eb0` |
| 4 | `theorem` | [IsLocalization.exists_smul_mem_of_mem_adjoin](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/declarations/islocalization-exists-smul-mem-of-mem-adjoin--c6fd72f1c717c3d121fc5f85.md) | 92 | `result-track:c6fd72f1c717c3d121fc5f853c422f86ddd6a8dcdda760e951b4fc377ccf6e9c` |
| 5 | `theorem` | [IsLocalization.lift_mem_adjoin_finsetIntegerMultiple](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/declarations/islocalization-lift-mem-adjoin-finsetintegermultiple--019e751b5ffdfa8b50b9bea1.md) | 118 | `result-track:019e751b5ffdfa8b50b9bea1cc05ce18d52af2f273d324121ab80b35db0379a4` |
| 6 | `theorem` | [finiteType_ofLocalizationSpan](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/declarations/finitetype-oflocalizationspan--c7af20c154958086d8b8175a.md) | 130 | `result-track:c7af20c154958086d8b8175a8c800375e356292511d7d9b116c1eafca437dc74` |
| 7 | `theorem` | [finiteType_holdsForLocalizationAway](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/declarations/finitetype-holdsforlocalizationaway--c67d31cf89da9b02f1f07ae6.md) | 166 | `result-track:c67d31cf89da9b02f1f07ae6b2c1e5fa1a140447384d372faf51ecc99e31d049` |
| 8 | `theorem` | [finiteType_ofLocalizationSpanTarget](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/declarations/finitetype-oflocalizationspantarget--4b33bc1c32902417a853a2ef.md) | 174 | `result-track:4b33bc1c32902417a853a2efabdc63957fc8018dd8c9a0c081c961320df19ddd` |
| 9 | `theorem` | [finiteType_isLocal](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/declarations/finitetype-islocal--794fc2a4f95a890836929adc.md) | 229 | `result-track:794fc2a4f95a890836929adc7048a39b361062c31b2261ff7901c4334703aa45` |
| 10 | `theorem` | [finiteType_respectsIso](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/declarations/finitetype-respectsiso--91f9137e6c36d82da86b7b08.md) | 241 | `result-track:91f9137e6c36d82da86b7b087e7563d92ef15d99171c097e7535468102e57069` |
| 11 | `theorem` | [finiteType_isStableUnderBaseChange](../../../../mathematics/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/declarations/finitetype-isstableunderbasechange--2d0a67ba993ddd07b887f829.md) | 244 | `result-track:2d0a67ba993ddd07b887f829eb64285c77db267cb03bc3f2ea45ec76ba459088` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
