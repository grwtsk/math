# Verification target: GRWTSK.Topology.GeneralTopology.1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL.Variant53dc1f0ad357cd103e23bb667ad740e6d5d9f9830fc351c0cffa1c9fe8681261

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "130924c57e08e27543c37227ccdac871b88ee09d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant53dc1f0ad357cd103e23bb667ad740e6d5d9f9830fc351c0cffa1c9fe8681261.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant53dc1f0ad357cd103e23bb667ad740e6d5d9f9830fc351c0cffa1c9fe8681261.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant53dc1f0ad357cd103e23bb667ad740e6d5d9f9830fc351c0cffa1c9fe8681261.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `130924c57e08e27543c37227ccdac871b88ee09d`.

Source path: `GRWTSK/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant53dc1f0ad357cd103e23bb667ad740e6d5d9f9830fc351c0cffa1c9fe8681261.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant53dc1f0ad357cd103e23bb667ad740e6d5d9f9830fc351c0cffa1c9fe8681261.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointProfile](../../../../../mathematics/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant53dc1f0ad357cd103e23bb667ad740e6d5d9f9830fc351c0cffa1c9fe8681261.lean/declarations/endpointprofile--608b263626923d6408c9015c.md) | 17 | `declaration-track:608b263626923d6408c9015c6214021a3e320330948488da36de8b66abfea66f` |
| 2 | `theorem` | [endpoint_profile_continuous](../../../../../mathematics/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant53dc1f0ad357cd103e23bb667ad740e6d5d9f9830fc351c0cffa1c9fe8681261.lean/declarations/endpoint-profile-continuous--b1d960640e0af5a9440a632f.md) | 19 | `result-track:b1d960640e0af5a9440a632ff91cadb373b889a1c8ead61d5646e0114b53eb7b` |
| 3 | `theorem` | [reciprocal_ray_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant53dc1f0ad357cd103e23bb667ad740e6d5d9f9830fc351c0cffa1c9fe8681261.lean/declarations/reciprocal-ray-tendsto-zero--40d385e5a7ec4fb62f612578.md) | 23 | `result-track:40d385e5a7ec4fb62f612578074d73e96d006a81d01be98683796db0a8671d7c` |
| 4 | `theorem` | [negative_ray_exp_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant53dc1f0ad357cd103e23bb667ad740e6d5d9f9830fc351c0cffa1c9fe8681261.lean/declarations/negative-ray-exp-tendsto-zero--6a6fb337a0ff71fd58b96043.md) | 30 | `result-track:6a6fb337a0ff71fd58b96043080b30e6c4e186ab164fc12fd074bca1cae349c3` |
| 5 | `theorem` | [profile_endpoint_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant53dc1f0ad357cd103e23bb667ad740e6d5d9f9830fc351c0cffa1c9fe8681261.lean/declarations/profile-endpoint-tendsto-one--279230cc297845e94768bfcb.md) | 40 | `result-track:279230cc297845e94768bfcb85b3a7565f0a745247116c19fe6f902e86a4de5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
