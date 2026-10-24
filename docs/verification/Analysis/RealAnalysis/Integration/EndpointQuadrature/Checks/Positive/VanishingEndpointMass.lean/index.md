# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EndpointQuadrature.Checks.Positive.VanishingEndpointMass

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "126d9dd8b1ef9d0f61c2e9ae920fb60c5586167f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EndpointQuadrature/Checks/Positive/VanishingEndpointMass.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndpointQuadrature/Checks/Positive/VanishingEndpointMass.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndpointQuadrature/Checks/Positive/VanishingEndpointMass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `126d9dd8b1ef9d0f61c2e9ae920fb60c5586167f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EndpointQuadrature/Checks/Positive/VanishingEndpointMass.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EndpointQuadrature/Checks/Positive/VanishingEndpointMass.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFractionalQuadrature` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 31; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellInterior](../../../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndpointQuadrature/Checks/Positive/VanishingEndpointMass.lean/declarations/cellinterior--975ecda516aef7bce282b261.md) | 51 | `declaration-track:975ecda516aef7bce282b261b6e8bd235d4f2894109c677fc7d2bfbd39f5ed86` |
| 2 | `theorem` | [cellInterior_endpoints](../../../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndpointQuadrature/Checks/Positive/VanishingEndpointMass.lean/declarations/cellinterior-endpoints--27746e08e6a7a0903a1d3116.md) | 53 | `result-track:27746e08e6a7a0903a1d3116fb05c712162779e7457a64258c5d66975edee068` |
| 3 | `theorem` | [cellInterior_integral](../../../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndpointQuadrature/Checks/Positive/VanishingEndpointMass.lean/declarations/cellinterior-integral--92f74441b1575f74576739b6.md) | 56 | `result-track:92f74441b1575f74576739b6bb8dafa6864def0487c3fbd18051bdce754f21fb` |
| 4 | `theorem` | [zero_endpoints_do_not_erase_continuous_tail](../../../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndpointQuadrature/Checks/Positive/VanishingEndpointMass.lean/declarations/zero-endpoints-do-not-erase-continuous-tail--c1cb09f400e258b46f1c2567.md) | 74 | `result-track:c1cb09f400e258b46f1c256779c8cf99a49b4c449ceb91240b599e6149aedc42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
