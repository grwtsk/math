# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogCumulativeCutoff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02e6ad1166fdc6ea8444fbd988b240f171d3ea87",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02e6ad1166fdc6ea8444fbd988b240f171d3ea87`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogWeightedPrefix`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.GreenHarmonicQuadrature`](../../../../../mathematics/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredGreenCutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean/declarations/centeredgreencutoff--8e746acbce5627e7fd0817f6.md) | 16 | `declaration-track:8e746acbce5627e7fd0817f63824d0c78570a87367932a24e4a518d154183331` |
| 2 | `theorem` | [centeredGreenCutoff_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean/declarations/centeredgreencutoff-bounds--0c3b04b525db32c0faeef9d1.md) | 19 | `result-track:0c3b04b525db32c0faeef9d16639356f16126596eea2af5ad621905ec8842fe9` |
| 3 | `theorem` | [location_le_iff_le_cutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean/declarations/location-le-iff-le-cutoff--82efa3868daf656e4be54aab.md) | 34 | `result-track:82efa3868daf656e4be54aab5244e7b7002b22965d4643b6632ca309d7c71488` |
| 4 | `theorem` | [thinHistoricalAtomicCumulative_eq_weightedPrefix](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean/declarations/thinhistoricalatomiccumulative-eq-weightedprefix--eb5b1174b91e68b97634ab3a.md) | 46 | `result-track:eb5b1174b91e68b97634ab3a9fffc70184e9228b0f2df5a429ee853bd7061788` |
| 5 | `def` | [centeredGreenBaselinePrefixResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean/declarations/centeredgreenbaselineprefixresidual--f7e072b717135fd3e73c29ab.md) | 71 | `declaration-track:f7e072b717135fd3e73c29ab71abd06aacd6290fe37806dd8e76ef4762b7728c` |
| 6 | `theorem` | [abs_centeredGreenBaselinePrefixResidual_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogCumulativeCutoff.lean/declarations/abs-centeredgreenbaselineprefixresidual-le--d589ada17ca75dee015ad481.md) | 77 | `result-track:d589ada17ca75dee015ad481014cc62d11abeb3db50253fad967b4ea35ff4262` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
