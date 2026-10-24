# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variant66b55894d14106a964b30a8349e0a14db18e17995d1894bda3ec9380960ded56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bea31236ef514c7dc7f5f2e3acb5814e03753710",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant66b55894d14106a964b30a8349e0a14db18e17995d1894bda3ec9380960ded56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant66b55894d14106a964b30a8349e0a14db18e17995d1894bda3ec9380960ded56.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant66b55894d14106a964b30a8349e0a14db18e17995d1894bda3ec9380960ded56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bea31236ef514c7dc7f5f2e3acb5814e03753710`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant66b55894d14106a964b30a8349e0a14db18e17995d1894bda3ec9380960ded56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant66b55894d14106a964b30a8349e0a14db18e17995d1894bda3ec9380960ded56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Filter` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_nhds_atTop](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant66b55894d14106a964b30a8349e0a14db18e17995d1894bda3ec9380960ded56.lean/declarations/tendsto-nhds-attop--0c70154ed05d6cb249128e80.md) | 23 | `result-track:0c70154ed05d6cb249128e804e04f0f50e36b69d07373097c2eeeed924e00f1d` |
| 2 | `theorem` | [tendsto_nhds_atBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant66b55894d14106a964b30a8349e0a14db18e17995d1894bda3ec9380960ded56.lean/declarations/tendsto-nhds-atbot--94938bd5fcb08a684f4dc0d4.md) | 26 | `result-track:94938bd5fcb08a684f4dc0d4fe342ea21781d2c4dbc1aac61e8f2cd224cad52f` |
| 3 | `theorem` | [Tendsto.nhds_atTop](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant66b55894d14106a964b30a8349e0a14db18e17995d1894bda3ec9380960ded56.lean/declarations/tendsto-nhds-attop--daf83171ed47abf08afe68d9.md) | 29 | `result-track:daf83171ed47abf08afe68d9ba80492f9418c4da37dbb560ee730b2a78e0c7e9` |
| 4 | `theorem` | [Tendsto.nhds_atBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant66b55894d14106a964b30a8349e0a14db18e17995d1894bda3ec9380960ded56.lean/declarations/tendsto-nhds-atbot--9f668b95da6b546d98192e4a.md) | 33 | `result-track:9f668b95da6b546d98192e4aaa30be69c7a5bd568feac5ec834fd5c067d38ca0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
