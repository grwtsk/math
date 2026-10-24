# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Congruences.ResidueClasses.SourceComponents.Variantaf45a827a95c67ba.ResidueTwoTranslationInvolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5ff6656f9ad919bc2ee5ea8fc15da80a47a071d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Congruences/ResidueClasses/SourceComponents/Variantaf45a827a95c67ba/ResidueTwoTranslationInvolution.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Congruences/ResidueClasses/SourceComponents/Variantaf45a827a95c67ba/ResidueTwoTranslationInvolution.lean/index.md) · [Full source](../../../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Congruences/ResidueClasses/SourceComponents/Variantaf45a827a95c67ba/ResidueTwoTranslationInvolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5ff6656f9ad919bc2ee5ea8fc15da80a47a071d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Congruences/ResidueClasses/SourceComponents/Variantaf45a827a95c67ba/ResidueTwoTranslationInvolution.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Congruences/ResidueClasses/SourceComponents/Variantaf45a827a95c67ba/ResidueTwoTranslationInvolution.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bit](../../../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Congruences/ResidueClasses/SourceComponents/Variantaf45a827a95c67ba/ResidueTwoTranslationInvolution.lean/declarations/bit--e5429c1718e6b3241e7d1951.md) | 36 | `declaration-track:e5429c1718e6b3241e7d195121490a4b630e40cd2d092a5357c690e5bec0b665` |
| 2 | `def` | [zero](../../../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Congruences/ResidueClasses/SourceComponents/Variantaf45a827a95c67ba/ResidueTwoTranslationInvolution.lean/declarations/zero--00ab296fdd977c3a3d0e3fe1.md) | 39 | `declaration-track:00ab296fdd977c3a3d0e3fe1f07cc24ebf5a7302b25a695bb5eb5d48ec791da9` |
| 3 | `def` | [one](../../../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Congruences/ResidueClasses/SourceComponents/Variantaf45a827a95c67ba/ResidueTwoTranslationInvolution.lean/declarations/one--26feec6fa26e220b2a75f3f3.md) | 40 | `declaration-track:26feec6fa26e220b2a75f3f35e1aead7bd5502c5ca7e123c5428e5d50e85543a` |
| 4 | `def` | [flip](../../../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Congruences/ResidueClasses/SourceComponents/Variantaf45a827a95c67ba/ResidueTwoTranslationInvolution.lean/declarations/flip--040e8db079cb39003acbfbe1.md) | 41 | `declaration-track:040e8db079cb39003acbfbe1952de99e68e2c45edb8e1c5ce15873c77394f951` |
| 5 | `theorem` | [flip_ne_self](../../../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Congruences/ResidueClasses/SourceComponents/Variantaf45a827a95c67ba/ResidueTwoTranslationInvolution.lean/declarations/flip-ne-self--ccced756cd44ceece4bcfb2f.md) | 44 | `result-track:ccced756cd44ceece4bcfb2ff340947f8ddf399d0a4894e110609d26ee9295c1` |
| 6 | `theorem` | [flip_flip](../../../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Congruences/ResidueClasses/SourceComponents/Variantaf45a827a95c67ba/ResidueTwoTranslationInvolution.lean/declarations/flip-flip--8827e521178ac19ec5dc9552.md) | 52 | `result-track:8827e521178ac19ec5dc9552e429b1de0b1ebea57af5e049f04a94891d595c7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
