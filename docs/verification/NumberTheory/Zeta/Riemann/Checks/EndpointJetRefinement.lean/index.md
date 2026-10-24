# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointJetRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b59d65b5e9fca8da9eacfd75f2d7d295a04ffc06",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b59d65b5e9fca8da9eacfd75f2d7d295a04ffc06`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointCorrectedNewtonCandidate`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCorrectedNewtonCandidate.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointLogRefinement`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalEndpointJet`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalRoundedExp`](../../../../../../mathematics/Analysis/ErrorBounds/RationalRoundedExp.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [candidateExponent](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/candidateexponent--4c0853ec4a8ea142ba690951.md) | 32 | `declaration-track:4c0853ec4a8ea142ba690951aabb9bd8f46d5d3da91bc74355261a6955e1843c` |
| 2 | `def` | [candidateTrace](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/candidatetrace--ea58f7f3f3440d00b56fbfb2.md) | 35 | `declaration-track:ea58f7f3f3440d00b56fbfb243dca47b8d0a98bcfe002ad2f0402549d3783016` |
| 3 | `def` | [candidatePower](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/candidatepower--06f03b8ec68e99a046aa481c.md) | 38 | `declaration-track:06f03b8ec68e99a046aa481ca6c505370496bde53ce9d88bb3e2bd25fdba14ca` |
| 4 | `theorem` | [all_power_guards](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/all-power-guards--c129a70db406a09ac11ee399.md) | 43 | `result-track:c129a70db406a09ac11ee3991b538377128ccb6ae8b5b904061538b09291232d` |
| 5 | `theorem` | [candidate_trace_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/candidate-trace-checked--5a9f85ed87ad35279a6c3679.md) | 49 | `result-track:5a9f85ed87ad35279a6c367929c8a4a72e59840d100cb893b98f648365941090` |
| 6 | `theorem` | [candidate_power_sound](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/candidate-power-sound--67fe96eb81996dd468042bb1.md) | 54 | `result-track:67fe96eb81996dd468042bb1c60f4193d1be3055bf2d544ab37d4e0bfc1c4ebe` |
| 7 | `def` | [candidateJet](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/candidatejet--2967ca2544b216db1fe3fe28.md) | 61 | `declaration-track:2967ca2544b216db1fe3fe2873ec67310f5c454691ff714ef4bd29e689f084df` |
| 8 | `theorem` | [candidate_finite_jet_sound](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/candidate-finite-jet-sound--c93e98882985de8e3b6bd0c7.md) | 65 | `result-track:c93e98882985de8e3b6bd0c79d68e3fdff17bb6738ca4fbf1d5816c2e403169f` |
| 9 | `def` | [valuePresentationAllowance](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/valuepresentationallowance--0f1cc451b3e5b6e6983dc842.md) | 74 | `declaration-track:0f1cc451b3e5b6e6983dc8422ce15dead9bd032f27de9ffb57ee1ee8f102f04f` |
| 10 | `def` | [derivativePresentationAllowance](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/derivativepresentationallowance--952abd4f084368d219b7357c.md) | 77 | `declaration-track:952abd4f084368d219b7357c0a559d020db8a338f7921489b88d4effb393dc34` |
| 11 | `theorem` | [finite_presentation_allowances](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/finite-presentation-allowances--7b30ea2a0f275780663f4976.md) | 81 | `result-track:7b30ea2a0f275780663f497630894c3bf7379c8ebd4f8ef6e85d87a26261b65c` |
| 12 | `theorem` | [finite_presented_errors](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/finite-presented-errors--cf7e0b68ebfd0311f50053a5.md) | 86 | `result-track:cf7e0b68ebfd0311f50053a52e234e4b891f671215923e68b45827b478869706` |
| 13 | `theorem` | [outer_avoids_pole](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/outer-avoids-pole--08e44db70a29089bcaf7d537.md) | 97 | `result-track:08e44db70a29089bcaf7d537419a079563dc65664382da3edf2851b4af9921a4` |
| 14 | `theorem` | [centerEstimates_of_uniform_source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/centerestimates-of-uniform-source--600107d409e00e82e2f6597c.md) | 110 | `result-track:600107d409e00e82e2f6597c9dc6c04adb55f8ce7a1716ea01cf0e67848d91b7` |
| 15 | `theorem` | [unique_point_of_uniform_source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/unique-point-of-uniform-source--6b3cff0f15f088878b5bf384.md) | 141 | `result-track:6b3cff0f15f088878b5bf38438457b5560ba788fddf64e307717c77785fd1e63` |
| 16 | `theorem` | [bernoulli_coefficients_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/bernoulli-coefficients-control--44ed495a031f0a29847c0f11.md) | 151 | `result-track:44ed495a031f0a29847c0f1102d6251fbd93682972d74313dca5416fd902564b` |
| 17 | `theorem` | [inclusive_endpoint_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/inclusive-endpoint-control--ed3312e0e2f1101e3bb36b79.md) | 157 | `result-track:ed3312e0e2f1101e3bb36b79222ca02a925d5b25660081594b35288aae6f59ec` |
| 18 | `theorem` | [endpoint_derivative_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/declarations/endpoint-derivative-control--600afba4b3ffd3cd1a36e53d.md) | 164 | `result-track:600afba4b3ffd3cd1a36e53dea8144e5b198a0a3369224ef648a0936837a9c18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
