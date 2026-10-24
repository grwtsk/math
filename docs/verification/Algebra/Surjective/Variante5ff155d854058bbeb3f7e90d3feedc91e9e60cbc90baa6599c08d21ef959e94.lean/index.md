# Verification target: GRWTSK.Algebra.Surjective.Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6158b94c50ed03002d47634124dbfc8875521ba6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean/index.md) · [Full source](../../../../mathematics/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6158b94c50ed03002d47634124dbfc8875521ba6`.

Source path: `GRWTSK/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [surjective_stableUnderComposition](../../../../mathematics/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean/declarations/surjective-stableundercomposition--eb242ea2569f90a00f66d363.md) | 36 | `result-track:eb242ea2569f90a00f66d363a84fab28eea14b945dd08e009ea097c35ad76da6` |
| 2 | `theorem` | [surjective_respectsIso](../../../../mathematics/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean/declarations/surjective-respectsiso--cc0ff81424aa8a62d5f3a711.md) | 39 | `result-track:cc0ff81424aa8a62d5f3a711bfa6d09a77357081312372159e6b73742f1153c8` |
| 3 | `theorem` | [surjective_isStableUnderBaseChange](../../../../mathematics/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean/declarations/surjective-isstableunderbasechange--33dc7d6e7242b97c383bf627.md) | 44 | `result-track:33dc7d6e7242b97c383bf627d6f3e01a15f664aa3865601a40f5e8c470a10122` |
| 4 | `theorem` | [surjective_localizationPreserves](../../../../mathematics/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean/declarations/surjective-localizationpreserves--d5081b420b10f3a9a873263c.md) | 56 | `result-track:d5081b420b10f3a9a873263c7cfad0bcb9d1c92ea27d8722dc8d117b9cc500b2` |
| 5 | `theorem` | [surjective_ofLocalizationSpan](../../../../mathematics/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean/declarations/surjective-oflocalizationspan--63978a6938c3ed3607a339f0.md) | 66 | `result-track:63978a6938c3ed3607a339f0318ecb234b23dad688288bf749100054b7ebd65a` |
| 6 | `theorem` | [surjective_localRingHom_of_surjective](../../../../mathematics/Algebra/Surjective/Variante5ff155d854058bbeb3f7e90d3feedc91e9e60cbc90baa6599c08d21ef959e94.lean/declarations/surjective-localringhom-of-surjective--33930f2e33ff96d71246271f.md) | 85 | `result-track:33930f2e33ff96d71246271f6e3e0b5c23bd7c9c62bc46f3fa4ea5f7c367edeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
