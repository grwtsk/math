# Verification target: GRWTSK.Topology.GeneralTopology.ENNReal.Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82cf5da48a02fbf77cc7d3d06792172cb5343e67",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82cf5da48a02fbf77cc7d3d06792172cb5343e67`.

Source path: `GRWTSK/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.ENNReal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eventually_le_limsup](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/declarations/eventually-le-limsup--653ccd5ccfa5a99640004271.md) | 23 | `result-track:653ccd5ccfa5a9964000427129e36c6eb6d025af4a10211f76a620efcb696dec` |
| 2 | `theorem` | [limsup_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/declarations/limsup-eq-zero-iff--37040341040ae3a896cd4c10.md) | 28 | `result-track:37040341040ae3a896cd4c10ced2a36154932ad3a9d65d3d52aad3a4f13e0002` |
| 3 | `theorem` | [limsup_const_mul_of_ne_top](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/declarations/limsup-const-mul-of-ne-top--5ddf145af04730d1c165bde0.md) | 33 | `result-track:5ddf145af04730d1c165bde0cca8c12089fa7cdb56dd9bd6aeeca095687b5258` |
| 4 | `theorem` | [limsup_const_mul](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/declarations/limsup-const-mul--bbcfa3a5da78f7783867da2a.md) | 50 | `result-track:bbcfa3a5da78f7783867da2a8d21f781cf1ce36d6e75252408a37b82170306d5` |
| 5 | `theorem` | [limsup_mul_le](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/declarations/limsup-mul-le--b922de5077edcd46b83f24c6.md) | 71 | `result-track:b922de5077edcd46b83f24c6c21329b144b3a2dadb3892e61250f3bb583f9e26` |
| 6 | `theorem` | [limsup_add_le](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/declarations/limsup-add-le--d2c8df3fda5dd8f98e9f370b.md) | 80 | `result-track:d2c8df3fda5dd8f98e9f370b461146ce96145512903fdf94915eae18119c2fb8` |
| 7 | `theorem` | [limsup_liminf_le_liminf_limsup](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/declarations/limsup-liminf-le-liminf-limsup--b22453501a137390a8641848.md) | 86 | `result-track:b22453501a137390a86418480fee429363b213b9ecfdb089048a8ce0b83f2e94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
