# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Concentration.Variant40cec15c216d6aa2e6480e6963137cfb3c45aecfef4e56a8cc5d724d295b4287

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3944ec1b78cf359c886a16cb8bb69094e672d81",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant40cec15c216d6aa2e6480e6963137cfb3c45aecfef4e56a8cc5d724d295b4287.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant40cec15c216d6aa2e6480e6963137cfb3c45aecfef4e56a8cc5d724d295b4287.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant40cec15c216d6aa2e6480e6963137cfb3c45aecfef4e56a8cc5d724d295b4287.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3944ec1b78cf359c886a16cb8bb69094e672d81`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant40cec15c216d6aa2e6480e6963137cfb3c45aecfef4e56a8cc5d724d295b4287.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant40cec15c216d6aa2e6480e6963137cfb3c45aecfef4e56a8cc5d724d295b4287.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Influence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ConcentrationMechanism](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant40cec15c216d6aa2e6480e6963137cfb3c45aecfef4e56a8cc5d724d295b4287.lean/declarations/concentrationmechanism--1c3f45415a0f7bcbc60f05a0.md) | 20 | `declaration-track:1c3f45415a0f7bcbc60f05a05579ea7de185ad566362dce5fc07aa2c07b41357` |
| 2 | `structure` | [ConcentrationMechanismCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant40cec15c216d6aa2e6480e6963137cfb3c45aecfef4e56a8cc5d724d295b4287.lean/declarations/concentrationmechanismcertificate--e1da868162895efed4d10a40.md) | 29 | `declaration-track:e1da868162895efed4d10a40b8665c3b7607916ee9812b2e8b5aeb40d75d5f63` |
| 3 | `structure` | [ConcentrationSoundnessObligation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant40cec15c216d6aa2e6480e6963137cfb3c45aecfef4e56a8cc5d724d295b4287.lean/declarations/concentrationsoundnessobligation--4a27da7e99ab4303711d5e04.md) | 40 | `declaration-track:4a27da7e99ab4303711d5e043c453813527736627ecd0d880c9a6a1243b75f29` |
| 4 | `structure` | [AdmittedConcentrationCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant40cec15c216d6aa2e6480e6963137cfb3c45aecfef4e56a8cc5d724d295b4287.lean/declarations/admittedconcentrationcertificate--c7805eb352cfd5980370078b.md) | 45 | `declaration-track:c7805eb352cfd5980370078b2ee8dafd7ec27a21a774d26446251365413903b9` |
| 5 | `theorem` | [influence_does_not_self_admit_concentration](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant40cec15c216d6aa2e6480e6963137cfb3c45aecfef4e56a8cc5d724d295b4287.lean/declarations/influence-does-not-self-admit-concentration--3a243ba94f3e9b132225bc28.md) | 51 | `result-track:3a243ba94f3e9b132225bc28d15fb678510c8f6f53823f2968b984486aa60deb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
