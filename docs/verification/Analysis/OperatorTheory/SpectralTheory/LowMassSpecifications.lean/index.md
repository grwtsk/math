# Verification target: GRWTSK.Analysis.Spectral.LowMassSpecifications

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b01f39d6e06ca815c7df776cc74657f5d877004",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Spectral/LowMassSpecifications.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/LowMassSpecifications.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/LowMassSpecifications.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b01f39d6e06ca815c7df776cc74657f5d877004`.

Source path: `GRWTSK/Analysis/Spectral/LowMassSpecifications.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Spectral/LowMassSpecifications.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Spectral.TwoHeightMoments`](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lowMass](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/LowMassSpecifications.lean/declarations/lowmass--013ec92e2ff1b62c2562ae7d.md) | 24 | `declaration-track:013ec92e2ff1b62c2562ae7d65de979b57664bfb6ecdb55d7b68c8eb4c3a3ed6` |
| 2 | `def` | [response](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/LowMassSpecifications.lean/declarations/response--be50d38f27ca2482a5d823c9.md) | 28 | `declaration-track:be50d38f27ca2482a5d823c98db9094e3da72fd34c7f9607a5caeaa6e69d5cde` |
| 3 | `def` | [inverseMoment](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/LowMassSpecifications.lean/declarations/inversemoment--7689ac2627907454414350b1.md) | 30 | `declaration-track:7689ac2627907454414350b1a2262372e68ce5829c623fcd3069493757bcde37` |
| 4 | `def` | [GapFreeInverseMomentGoal](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/LowMassSpecifications.lean/declarations/gapfreeinversemomentgoal--2819271a8b08a107cbdb06dd.md) | 32 | `declaration-track:2819271a8b08a107cbdb06dd2eff5ed41d92a55de70d7c5911e9e0828e94d0ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
