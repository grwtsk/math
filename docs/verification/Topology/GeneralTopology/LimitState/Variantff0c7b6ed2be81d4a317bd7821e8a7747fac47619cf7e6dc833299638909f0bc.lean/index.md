# Verification target: GRWTSK.Topology.GeneralTopology.LimitState.Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92cb8edf7a139cf4df767f442133195394e7c9dd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92cb8edf7a139cf4df767f442133195394e7c9dd`.

Source path: `GRWTSK/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Boundary.ProjectiveSystem` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Frontier.OrdinalIndex` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LimitBoundaryState](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/declarations/limitboundarystate--fdcd80d30995c4670c7f5360.md) | 20 | `declaration-track:fdcd80d30995c4670c7f53603b49619f5a4ccbc6fa711cc288dddf8d33f10301` |
| 2 | `structure` | [AddressedLimitBoundaryState](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/declarations/addressedlimitboundarystate--42864275f28192ce402a5433.md) | 38 | `declaration-track:42864275f28192ce402a5433e433ee3821364ed809f457d6fbe30d3d27900bd5` |
| 3 | `inductive` | [LimitStateExistenceMode](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/declarations/limitstateexistencemode--8f5e83847b539f0b314adf11.md) | 56 | `declaration-track:8f5e83847b539f0b314adf110a3dec5d7fd3afeeacead3cf52029bbb5419cda0` |
| 4 | `structure` | [LimitStateNonemptyCertificate](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/declarations/limitstatenonemptycertificate--b7e5222d5d99530ff8920c4a.md) | 62 | `declaration-track:b7e5222d5d99530ff8920c4aba096788a337375c1864becb5189e7d284e58210` |
| 5 | `theorem` | [limitBoundaryState_nonempty](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/declarations/limitboundarystate-nonempty--1b6e4e709eb6c7f8b9f08fa5.md) | 78 | `result-track:1b6e4e709eb6c7f8b9f08fa50fb4e11461c13fa4e8558b58f1d68eef8018ea94` |
| 6 | `structure` | [CoherentSectionCertificate](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/declarations/coherentsectioncertificate--c183cd4a2c4c9d7f3ba7ad51.md) | 91 | `declaration-track:c183cd4a2c4c9d7f3ba7ad515e9f64f7565133bcfa0bbeb43a0ce55ee6d4cfb5` |
| 7 | `structure` | [LimitMetricCertificate](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/declarations/limitmetriccertificate--460f47c1022d75cdc6472907.md) | 116 | `declaration-track:460f47c1022d75cdc64729078e7607518c14706cb57a853fc530defff8259fff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
