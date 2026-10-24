# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SignedOrientationConnectionsControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6938d1569456ca2b4495671b921157102f11963f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6938d1569456ca2b4495671b921157102f11963f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SignedOrientationConnections`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/SignedOrientationConnections.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [positive_metric_negative_signed_fixture](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean/declarations/positive-metric-negative-signed-fixture--a2db94d42461d85233b2700f.md) | 17 | `result-track:a2db94d42461d85233b2700fa923b81a354f36642511e8ab5f590795b8a61553` |
| 2 | `theorem` | [hodge_negative_sector_orientation_sign](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean/declarations/hodge-negative-sector-orientation-sign--9b53f2e8aae93eab4cc7962d.md) | 23 | `result-track:9b53f2e8aae93eab4cc7962d1f9a5e80da0334dedc0878446429daf70d7b0c7b` |
| 3 | `theorem` | [screw_penalty_orientation_sign](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean/declarations/screw-penalty-orientation-sign--4911181cbef7523b998ec08c.md) | 29 | `result-track:4911181cbef7523b998ec08cb4522f32214712df4ef7b0344bf2c54110844128` |
| 4 | `theorem` | [quartic_probe_orientation_sign](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean/declarations/quartic-probe-orientation-sign--fd543c72a588807dd53131c5.md) | 34 | `result-track:fd543c72a588807dd53131c59655d3fd1a8d12362c601db6271f2eb823e118fd` |
| 5 | `theorem` | [positive_scalar_does_not_flip_fixture](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean/declarations/positive-scalar-does-not-flip-fixture--f46fb6d843b4394e0027feba.md) | 39 | `result-track:f46fb6d843b4394e0027feba26a8046cd17fab8c676e17598085f60b3ab5fc4c` |
| 6 | `theorem` | [hodge_standard_profile_is_source_review_required](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean/declarations/hodge-standard-profile-is-source-review-required--12be19c0b321f78f900a1e82.md) | 47 | `result-track:12be19c0b321f78f900a1e82a87717f3aba146d1db0777a362b0dbd93a319309` |
| 7 | `theorem` | [quartic_profile_is_local](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean/declarations/quartic-profile-is-local--a40d3987c69efa776416a09b.md) | 54 | `result-track:a40d3987c69efa776416a09bcd5de4953ab04eea27adfd29fdb50d3e497c4a19` |
| 8 | `theorem` | [c3_profile_is_proposed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedOrientationConnectionsControls.lean/declarations/c3-profile-is-proposed--72a77fd4f18b2a218dba3dd0.md) | 60 | `result-track:72a77fd4f18b2a218dba3dd0294f2e01f7f0ed825d0e2d7aa6b79833520441e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
