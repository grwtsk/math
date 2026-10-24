# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Int.Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da0a26bda53f3695c8ae6bd2b9553b4ccf5d455e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da0a26bda53f3695c8ae6bd2b9553b4ccf5d455e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Int` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNormedAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean/declarations/instnormedaddcommgroup--bcb167353940da7456f3a611.md) | 17 | `declaration-track:bcb167353940da7456f3a6118876577032f8b3562311020929df0584ae7cffcb` |
| 2 | `theorem` | [norm_cast_real](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean/declarations/norm-cast-real--79e2931b08856bee00b01b35.md) | 22 | `result-track:79e2931b08856bee00b01b3576c40c23e14baa15da0dc59bbed70d2c62fb25d8` |
| 3 | `theorem` | [norm_eq_abs](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean/declarations/norm-eq-abs--f928d861f61c73bc7936488f.md) | 25 | `result-track:f928d861f61c73bc7936488fb8801d88dce1ece263cfc96adfac37ebe54de114` |
| 4 | `theorem` | [norm_natCast](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean/declarations/norm-natcast--0294637521ab14a6a0a8b4ad.md) | 29 | `result-track:0294637521ab14a6a0a8b4ad2b158f3138af960127d4c810a649307ea80f591d` |
| 5 | `theorem` | [_root_.NNReal.natCast_natAbs](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean/declarations/root-nnreal-natcast-natabs--6df567c006ba5dead5eb4400.md) | 31 | `result-track:6df567c006ba5dead5eb440026e1a345633c3cbb4d7efedb182939d1bae34e4c` |
| 6 | `theorem` | [abs_le_floor_nnreal_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean/declarations/abs-le-floor-nnreal-iff--ab71bf72a49c13ec3933905c.md) | 38 | `result-track:ab71bf72a49c13ec3933905c929d25e117ef01cccd5966383b74450c1b2cd18d` |
| 7 | `theorem` | [norm_zpow_le_mul_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean/declarations/norm-zpow-le-mul-norm--fd2074053d08b0a60c569503.md) | 50 | `result-track:fd2074053d08b0a60c569503e86cb0b5d0e9e0991e4085c7a97a16cd5504601a` |
| 8 | `theorem` | [nnnorm_zpow_le_mul_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean/declarations/nnnorm-zpow-le-mul-norm--2b32c53587254dd792e48fed.md) | 54 | `result-track:2b32c53587254dd792e48fed36296a8e88e47d3719ef7c78fee8982e0f5ff09b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
