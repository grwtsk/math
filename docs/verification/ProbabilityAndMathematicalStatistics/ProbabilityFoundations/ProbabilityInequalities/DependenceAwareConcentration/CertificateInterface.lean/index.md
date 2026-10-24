# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilityInequalities.DependenceAwareConcentration.CertificateInterface

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ddfea4fb73fd0d90e5cc34dc8bdb2715d0aee67",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilityInequalities/DependenceAwareConcentration/CertificateInterface.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilityInequalities/DependenceAwareConcentration/CertificateInterface.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilityInequalities/DependenceAwareConcentration/CertificateInterface.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ddfea4fb73fd0d90e5cc34dc8bdb2715d0aee67`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilityInequalities/DependenceAwareConcentration/CertificateInterface.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilityInequalities/DependenceAwareConcentration/CertificateInterface.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Influence` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ConcentrationMechanism](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilityInequalities/DependenceAwareConcentration/CertificateInterface.lean/declarations/concentrationmechanism--1a2c96c63ddf15f5c17480d5.md) | 35 | `declaration-track:1a2c96c63ddf15f5c17480d5f976187a7ee07b0d974c4bf07a7b1579f4d9efd8` |
| 2 | `structure` | [ConcentrationMechanismCertificate](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilityInequalities/DependenceAwareConcentration/CertificateInterface.lean/declarations/concentrationmechanismcertificate--54345050e31710fc7c2f5947.md) | 44 | `declaration-track:54345050e31710fc7c2f59472f6dc34a1ce24855f8c7c8738273acd73b672ed4` |
| 3 | `structure` | [ConcentrationSoundnessObligation](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilityInequalities/DependenceAwareConcentration/CertificateInterface.lean/declarations/concentrationsoundnessobligation--8647bacc73711c42863b6ce4.md) | 55 | `declaration-track:8647bacc73711c42863b6ce4f833a2565a974c3d4e6d2441ba3283caf416e573` |
| 4 | `structure` | [AdmittedConcentrationCertificate](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilityInequalities/DependenceAwareConcentration/CertificateInterface.lean/declarations/admittedconcentrationcertificate--a74d40adae44440f01c036ad.md) | 60 | `declaration-track:a74d40adae44440f01c036ad9d4a7316ddcb61042458f8f04441ceda1ddaef21` |
| 5 | `theorem` | [influence_does_not_self_admit_concentration](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilityInequalities/DependenceAwareConcentration/CertificateInterface.lean/declarations/influence-does-not-self-admit-concentration--9396505d359bed9bb2355e8d.md) | 66 | `result-track:9396505d359bed9bb2355e8da70e7ea1895eab60a094008ddb3b2ced99711120` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
