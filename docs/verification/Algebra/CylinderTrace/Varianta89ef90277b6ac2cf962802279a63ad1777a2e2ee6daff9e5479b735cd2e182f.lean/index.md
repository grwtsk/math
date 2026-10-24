# Verification target: GRWTSK.Algebra.CylinderTrace.Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3efe01952b9add7896ea09cf0aa9890019b72e40",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/index.md) · [Full source](../../../../mathematics/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3efe01952b9add7896ea09cf0aa9890019b72e40`.

Source path: `GRWTSK/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Trace.SuccessorTrace` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CylinderPresentation](../../../../mathematics/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/declarations/cylinderpresentation--c3d66193b38b02e13f34e056.md) | 18 | `declaration-track:c3d66193b38b02e13f34e0562d4448e8bee196d66283246a9e69e8b811556f9f` |
| 2 | `structure` | [CylinderEquivalenceCertificate](../../../../mathematics/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/declarations/cylinderequivalencecertificate--b2b523f4731b9d4e469d1ed5.md) | 32 | `declaration-track:b2b523f4731b9d4e469d1ed52953357ffa3ee15110ebb91a7652bea7d34cfd57` |
| 3 | `def` | [CylinderEquivalenceCertificate.setoid](../../../../mathematics/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/declarations/cylinderequivalencecertificate-setoid--9c6ce4cfbc4f895e58aa13af.md) | 81 | `declaration-track:9c6ce4cfbc4f895e58aa13af994ed6317fe935eef6af9fc6787fb6652f762307` |
| 4 | `abbrev` | [CylinderObservable](../../../../mathematics/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/declarations/cylinderobservable--4dab0fab1c630e60ed75f562.md) | 100 | `declaration-track:4dab0fab1c630e60ed75f56202eeefe894a0829e26aa2de6cba25478dea68e16` |
| 5 | `def` | [limitTrace](../../../../mathematics/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/declarations/limittrace--c7dfe7b0968116f09c6c1942.md) | 114 | `declaration-track:c7dfe7b0968116f09c6c194240b84011c9f93aa2d85d34a4add74791d2876a07` |
| 6 | `theorem` | [limitTrace_mk](../../../../mathematics/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/declarations/limittrace-mk--8fff2afb928202d15d67d823.md) | 136 | `result-track:8fff2afb928202d15d67d823828c6445826ba33c6c099dac5b88d533306e5fc9` |
| 7 | `structure` | [CylinderTraceLawCertificate](../../../../mathematics/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/declarations/cylindertracelawcertificate--0a12411f9e3b1eda5d0ec276.md) | 158 | `declaration-track:0a12411f9e3b1eda5d0ec276aa47bec0b3a78cbd07ce4af101088ec83f4dba09` |
| 8 | `theorem` | [cylinder_trace_well_defined](../../../../mathematics/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/declarations/cylinder-trace-well-defined--1da7bc5b2cd9477713a1a765.md) | 203 | `result-track:1da7bc5b2cd9477713a1a7657bea9e6d559dc8bd6bcc3b2ca370e82c2dd7ccda` |
| 9 | `theorem` | [limit_trace_tracial](../../../../mathematics/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/declarations/limit-trace-tracial--18b0c5a9166ba8c51fcc49e4.md) | 227 | `result-track:18b0c5a9166ba8c51fcc49e4b70d8cbc925c865db0be9724c3e3d621ab39866f` |
| 10 | `theorem` | [limit_trace_positive](../../../../mathematics/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/declarations/limit-trace-positive--7e96be9fe40450f239ff03a6.md) | 249 | `result-track:7e96be9fe40450f239ff03a6edc0c96d1a458ac741aa68e95473e079cec7bcee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
