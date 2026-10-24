# Verification target: GRWTSK.Algebra.Finite.Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c47a16a49c844b99c0a6f2c6447b3713822a47b3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c47a16a49c844b99c0a6f2c6447b3713822a47b3`.

Source path: `GRWTSK/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_stableUnderComposition](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/declarations/finite-stableundercomposition--c57fc2eb6fe5b0f5828e69a4.md) | 32 | `result-track:c57fc2eb6fe5b0f5828e69a45f3d4a6baa514280a9a62e28414897a0f64c24e8` |
| 2 | `theorem` | [finite_respectsIso](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/declarations/finite-respectsiso--a84782045228f8b628f5ff53.md) | 36 | `result-track:a84782045228f8b628f5ff53b83491cd1c72998a6bb47fda4e02ea4f42870468` |
| 3 | `lemma` | [finite_containsIdentities](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/declarations/finite-containsidentities--022128266d6c6e1977936433.md) | 41 | `result-track:022128266d6c6e19779364336881e4b73388440a65e4d16ae079b9665cfffce1` |
| 4 | `theorem` | [finite_isStableUnderBaseChange](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/declarations/finite-isstableunderbasechange--2ce17ff180fbd23b51f2cc69.md) | 43 | `result-track:2ce17ff180fbd23b51f2cc6944800478078328b65e36b3c180a07ccf5a3381f3` |
| 5 | `lemma` | [Module.Finite_of_isLocalization](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/declarations/module-finite-of-islocalization--df9901931b9c3b1c640c0d09.md) | 63 | `result-track:df9901931b9c3b1c640c0d0928555f6eb4e284fefa196f2e873879a290ccc309` |
| 6 | `theorem` | [RingHom.finite_localizationPreserves](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/declarations/ringhom-finite-localizationpreserves--ed3c6e96f3707a042ac4761e.md) | 100 | `result-track:ed3c6e96f3707a042ac4761e8c987d6c4562042efb64ca756c7f52f9633785bf` |
| 7 | `theorem` | [RingHom.localization_away_map_finite](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/declarations/ringhom-localization-away-map-finite--05cf2abdab2dc00b8d35a4b6.md) | 114 | `result-track:05cf2abdab2dc00b8d35a4b6a07a7992025ebe996cd43b6e67aa252deaaef2bc` |
| 8 | `theorem` | [IsLocalization.smul_mem_finsetIntegerMultiple_span](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/declarations/islocalization-smul-mem-finsetintegermultiple-span--0023bf12f90997df4a1e4262.md) | 124 | `result-track:0023bf12f90997df4a1e4262900ad0414ececc668b62032954f053767f38d5d6` |
| 9 | `theorem` | [multiple_mem_span_of_mem_localization_span](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/declarations/multiple-mem-span-of-mem-localization-span--f9eff9113c6377ce1e2e891f.md) | 163 | `result-track:f9eff9113c6377ce1e2e891f4d2ca9f792523fb8ab29c2e6338eb887d42cf8f7` |
| 10 | `theorem` | [multiple_mem_adjoin_of_mem_localization_adjoin](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/declarations/multiple-mem-adjoin-of-mem-localization-adjoin--352200e0dba8613670eca13a.md) | 189 | `result-track:352200e0dba8613670eca13a1eae0d5fbee4d2d8f7f684e59969e4d26c0c4a68` |
| 11 | `theorem` | [RingHom.finite_ofLocalizationSpan](../../../../mathematics/Algebra/Finite/Variant2342c095c13d96889810d5cb4aae22a7b14fdc0ab5dd26ad00a30e4a5db1898d.lean/declarations/ringhom-finite-oflocalizationspan--79c80cf1ecfc085aadc7640b.md) | 199 | `result-track:79c80cf1ecfc085aadc7640b31a03282091c7b3ccf64827b492891d63407e9a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
