# Verification target: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4103c153bfbad7e1d566c87618e61518f3872314",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4103c153bfbad7e1d566c87618e61518f3872314`.

Source path: `GRWTSK/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHaus.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.EffectiveEpi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [effectiveEpi_tfae](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean/declarations/effectiveepi-tfae--3f32a30fafffac332e036eba.md) | 35 | `result-track:3f32a30fafffac332e036eba52b415ef1276d0aafe625623098f9869250d7566` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean/declarations/instance--23df486a32a1296c113134eb.md) | 47 | `declaration-track:23df486a32a1296c113134ebd99da7fa39329d300f79ca09fd5b29d55a2ec62c` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean/declarations/example--b82519b66a5f8c50aeae58b1.md) | 50 | `declaration-track:b82519b66a5f8c50aeae58b12f55f6bc64dd85225303eda325743454512f07db` |
| 4 | `theorem` | [effectiveEpiFamily_tfae](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean/declarations/effectiveepifamily-tfae--5066ffdadac8928a0ac571d6.md) | 54 | `result-track:5066ffdadac8928a0ac571d66b99c98785b15b549af5731d4e2edc5d7a78bee5` |
| 5 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean/declarations/effectiveepifamily-of-jointly-surjective--41b2e16b7b0844bbb395045b.md) | 97 | `result-track:41b2e16b7b0844bbb395045bfadcbf868b67b6cb0034b9a62ac96b68bfb452c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
