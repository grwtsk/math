# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.ArtifactDerivation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c55f7bee8800cfc8e4b7bb8e17cfe82f3d93d480",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence45363f8f26269ff59f202d2a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence45363f8f26269ff59f202d2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c55f7bee8800cfc8e4b7bb8e17cfe82f3d93d480`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.RuleSoundness`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArtifactRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence45363f8f26269ff59f202d2a.lean/declarations/artifactrule--0e5b098d9487bb76c346795d.md) | 27 | `declaration-track:0e5b098d9487bb76c346795df62cc042d01245b67f5e0ad4b2890d7296f895d0` |
| 2 | `def` | [ArtifactRule.ExactAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence45363f8f26269ff59f202d2a.lean/declarations/artifactrule-exactat--4726bac2b3449d6759f226cd.md) | 33 | `declaration-track:4726bac2b3449d6759f226cdf620d2af82a0ca6fbed5ac7f8557b894f51a5166` |
| 3 | `inductive` | [ReconstructionDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence45363f8f26269ff59f202d2a.lean/declarations/reconstructionderivation--8e352e5d12080bb2142ee2c0.md) | 41 | `declaration-track:8e352e5d12080bb2142ee2c095e432f638aeabf6135a3f0f3eb236f4a2af620e` |
| 4 | `def` | [ReconstructionDerivation.evaluate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence45363f8f26269ff59f202d2a.lean/declarations/reconstructionderivation-evaluate--afba5fa0992f66f9715b710e.md) | 55 | `declaration-track:afba5fa0992f66f9715b710ec46ae1622a19d2cac9be59b9b84cce6790d91bda` |
| 5 | `theorem` | [reconstruction_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence45363f8f26269ff59f202d2a.lean/declarations/reconstruction-exact--8b365ddc0adf497996927925.md) | 71 | `result-track:8b365ddc0adf497996927925af374a43f8f412374ed6bdb106afceb19a52841a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
