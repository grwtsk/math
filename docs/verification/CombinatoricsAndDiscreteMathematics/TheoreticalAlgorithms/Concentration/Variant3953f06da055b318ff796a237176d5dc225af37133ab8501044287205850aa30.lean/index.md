# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Concentration.Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "670cf40657b27039b87d8cb817fe21076437dc11",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `670cf40657b27039b87d8cb817fe21076437dc11`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Influence` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ConcentrationMechanism](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30.lean/declarations/concentrationmechanism--9baace882bd00bf7ac085fa4.md) | 12 | `declaration-track:9baace882bd00bf7ac085fa490161e8086393cfd8f80030022765744382549c0` |
| 2 | `structure` | [ConcentrationMechanismCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30.lean/declarations/concentrationmechanismcertificate--ba457bc0e6802d3a93e0218b.md) | 21 | `declaration-track:ba457bc0e6802d3a93e0218bdc6d0f7ab0c59a991ab423ef15d522d545423e59` |
| 3 | `structure` | [ConcentrationSoundnessObligation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30.lean/declarations/concentrationsoundnessobligation--9fd7d6a4e8aac4660c0f346f.md) | 32 | `declaration-track:9fd7d6a4e8aac4660c0f346f58a7ea7c6eeb1d0d529366e7a0933fba4e993c3d` |
| 4 | `structure` | [AdmittedConcentrationCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30.lean/declarations/admittedconcentrationcertificate--ab1a3a5cafb4f1b8d0d57a6f.md) | 37 | `declaration-track:ab1a3a5cafb4f1b8d0d57a6f93e3644d97e14cd4d80eabfd1ad1eea561768a3b` |
| 5 | `theorem` | [influence_does_not_self_admit_concentration](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30.lean/declarations/influence-does-not-self-admit-concentration--251165c47b741d6ad1d1660f.md) | 43 | `result-track:251165c47b741d6ad1d1660f53e040190022b8872499eede68f1faf6594655e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
