# Verification target: GRWTSK.Algebra.Hecke.G2Characters

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9252f4fd248ba3c69782d0cc50522b5d10dd4b8b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hecke/G2Characters.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hecke/G2Characters.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hecke/G2Characters.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.

Source path: `GRWTSK/Algebra/Hecke/G2Characters.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hecke/G2Characters.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Hecke.G2Presentation`](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [g2TrivialCharacter](../../../../mathematics/Algebra/Hecke/G2Characters.lean/declarations/g2trivialcharacter--7466346a78f5a08f5b09ebff.md) | 10 | `declaration-track:7466346a78f5a08f5b09ebff4fe4cfe8a0833427c1cf20c10c10c963ccd08cac` |
| 2 | `def` | [g2SignCharacter](../../../../mathematics/Algebra/Hecke/G2Characters.lean/declarations/g2signcharacter--d64cc89e960689da80794a5a.md) | 15 | `declaration-track:d64cc89e960689da80794a5a89cb90af599b45702399494ce352a56839a2d31a` |
| 3 | `theorem` | [g2TrivialCharacter_generator](../../../../mathematics/Algebra/Hecke/G2Characters.lean/declarations/g2trivialcharacter-generator--0f26345dca5fb4be6f4674b3.md) | 19 | `result-track:0f26345dca5fb4be6f4674b30f0e9cf5dce8915ac449e58dce5d9325a6ad43cb` |
| 4 | `theorem` | [g2SignCharacter_generator](../../../../mathematics/Algebra/Hecke/G2Characters.lean/declarations/g2signcharacter-generator--8cace80c870165cee94a9eef.md) | 23 | `result-track:8cace80c870165cee94a9eefa30fc0294f4b9412ad95c7becdc8e644c5f6dafe` |
| 5 | `theorem` | [g2Presented_scalar_injective](../../../../mathematics/Algebra/Hecke/G2Characters.lean/declarations/g2presented-scalar-injective--68d4f3e2b7adae94c43e49ae.md) | 28 | `result-track:68d4f3e2b7adae94c43e49ae5d39c2e5b4ba4ad5989f654ca54fcdb431d725d1` |
| 6 | `theorem` | [g2Presented_rankOne_coordinates_unique](../../../../mathematics/Algebra/Hecke/G2Characters.lean/declarations/g2presented-rankone-coordinates-unique--b0dbc7a5f62f6f7f0c0daffd.md) | 36 | `result-track:b0dbc7a5f62f6f7f0c0daffdc2cb2f428bd0a6ce02a97fc37ea20d135f1627d8` |
| 7 | `theorem` | [g2Presented_zero_ne_one](../../../../mathematics/Algebra/Hecke/G2Characters.lean/declarations/g2presented-zero-ne-one--cffe4950e6bec2b263d9fc09.md) | 51 | `result-track:cffe4950e6bec2b263d9fc09d74696f51d37956d6a065ca64561c0b903973da6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
