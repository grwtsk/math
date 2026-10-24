# Verification target: GRWTSK.Topology.GeneralTopology.ExtendFrom.Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "649538b26ec696ad9652b844ae04e2464c8e08a7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `649538b26ec696ad9652b844ae04e2464c8e08a7`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Regular` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extendFrom](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean/declarations/extendfrom--1dec83131ac7775d415e07ca.md) | 37 | `declaration-track:1dec83131ac7775d415e07ca0c3814dbe2d1d193dac3e0417491014cf685a68c` |
| 2 | `theorem` | [tendsto_extendFrom](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean/declarations/tendsto-extendfrom--313949cd3056192b4e8d4132.md) | 42 | `result-track:313949cd3056192b4e8d41324c1494f0f150b817d6d58dcedbd6f1ef0ee061fe` |
| 3 | `theorem` | [extendFrom_eq](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean/declarations/extendfrom-eq--e19dd664b56000bfea08fdb8.md) | 46 | `result-track:e19dd664b56000bfea08fdb8105287afa21160dc2ed3e3018403ba9ad6f3b84f` |
| 4 | `theorem` | [extendFrom_extends](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean/declarations/extendfrom-extends--29d4da04bf11c298461b5ecb.md) | 51 | `result-track:29d4da04bf11c298461b5ecb45a84418bf8e2d5452f353ca5fb7ff7102024137` |
| 5 | `theorem` | [continuousOn_extendFrom](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean/declarations/continuouson-extendfrom--e426da73dd4481e1b0d5c07a.md) | 57 | `result-track:e426da73dd4481e1b0d5c07aedcb0e7331bd769d2e37b225d3556e27f02be688` |
| 6 | `theorem` | [continuous_extendFrom](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean/declarations/continuous-extendfrom--77dd8fdde8211290700d92af.md) | 79 | `result-track:77dd8fdde8211290700d92af3ce09000e89aef08b821acd127011bcbdc0e97c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
