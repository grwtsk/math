# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Substitution.Variant2c8574836778c5d4fc2c5b7d5acc01d05014887fa7c615fa0bf0f1ba4b06f769

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f1654b23b3e40eac8656c7b2e44c4addc0d8d0e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Substitution/Variant2c8574836778c5d4fc2c5b7d5acc01d05014887fa7c615fa0bf0f1ba4b06f769.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant2c8574836778c5d4fc2c5b7d5acc01d05014887fa7c615fa0bf0f1ba4b06f769.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant2c8574836778c5d4fc2c5b7d5acc01d05014887fa7c615fa0bf0f1ba4b06f769.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f1654b23b3e40eac8656c7b2e44c4addc0d8d0e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Substitution/Variant2c8574836778c5d4fc2c5b7d5acc01d05014887fa7c615fa0bf0f1ba4b06f769.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Substitution/Variant2c8574836778c5d4fc2c5b7d5acc01d05014887fa7c615fa0bf0f1ba4b06f769.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.ContextualEquivalence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.SemanticTokenization.Phrase` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReplacementSite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant2c8574836778c5d4fc2c5b7d5acc01d05014887fa7c615fa0bf0f1ba4b06f769.lean/declarations/replacementsite--8b868000c0870083c2aa7803.md) | 18 | `declaration-track:8b868000c0870083c2aa78030db927c65ce203bf9d4513eea766879c5b05fc80` |
| 2 | `structure` | [SubstitutedText](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant2c8574836778c5d4fc2c5b7d5acc01d05014887fa7c615fa0bf0f1ba4b06f769.lean/declarations/substitutedtext--f4b2bfc1c443b5b626db69f4.md) | 24 | `declaration-track:f4b2bfc1c443b5b626db69f4acd8cb4b5f4351a136ba51649811ef6ec4fbee57` |
| 3 | `structure` | [SubstitutionCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant2c8574836778c5d4fc2c5b7d5acc01d05014887fa7c615fa0bf0f1ba4b06f769.lean/declarations/substitutioncertificate--0cbc7dfe9ed9035302cd1e9c.md) | 29 | `declaration-track:0cbc7dfe9ed9035302cd1e9ca7fec64f0fb0beeaf680ee058647fb47fc271ff7` |
| 4 | `structure` | [ContextualSynonymyCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant2c8574836778c5d4fc2c5b7d5acc01d05014887fa7c615fa0bf0f1ba4b06f769.lean/declarations/contextualsynonymycertificate--4334a13eaaf1d4ac30d59af8.md) | 53 | `declaration-track:4334a13eaaf1d4ac30d59af811a6fabf5df8d7aeaf4923b1366df10bdec1fe4a` |
| 5 | `theorem` | [synonymy_requires_substitution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant2c8574836778c5d4fc2c5b7d5acc01d05014887fa7c615fa0bf0f1ba4b06f769.lean/declarations/synonymy-requires-substitution--458f9cbae82cff78e7d548e4.md) | 67 | `result-track:458f9cbae82cff78e7d548e431f523624a831ce07919155a747026569654c071` |
| 6 | `structure` | [GlobalSynonymyCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant2c8574836778c5d4fc2c5b7d5acc01d05014887fa7c615fa0bf0f1ba4b06f769.lean/declarations/globalsynonymycertificate--fa8f6098af6b5f18daa150ee.md) | 75 | `declaration-track:fa8f6098af6b5f18daa150ee6c1e971ed4a8cd4124ce0ce2b193586716deb21f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
