# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86408c3e617a807cfc9f762379ffe756e726b9f3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86408c3e617a807cfc9f762379ffe756e726b9f3`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonarchimedeanAddGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/declarations/nonarchimedeanaddgroup--9f1e6c08c7eafc1ba5a579d8.md) | 43 | `declaration-track:9f1e6c08c7eafc1ba5a579d8d86d0a994a2de1520a0526703639b0c652194779` |
| 2 | `class` | [NonarchimedeanGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/declarations/nonarchimedeangroup--bf9b80f7461325c4b644b490.md) | 50 | `declaration-track:bf9b80f7461325c4b644b490eadf8b762536a449aca1956f42082b8ced814e7c` |
| 3 | `class` | [NonarchimedeanRing](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/declarations/nonarchimedeanring--86627bede2652b9f91e4892b.md) | 57 | `declaration-track:86627bede2652b9f91e4892b569f414d38169ce6c546ebb4fb5f62ac2abc4163` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/declarations/instance--3e4c96369e706bb19613c080.md) | 64 | `declaration-track:3e4c96369e706bb19613c0806750fe937adde1cdc147562b3135a33d0a044906` |
| 5 | `theorem` | [nonarchimedean_of_emb](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/declarations/nonarchimedean-of-emb--1c6f2e5cff487a31fad1ff40.md) | 79 | `result-track:1c6f2e5cff487a31fad1ff4014324c141a11e36017527c340d1a1d269a148a48` |
| 6 | `theorem` | [prod_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/declarations/prod-subset--c807348d92c548dfc73f73ce.md) | 94 | `result-track:c807348d92c548dfc73f73ce35ef4635ab8455b443a2efd3198be4d943052066` |
| 7 | `theorem` | [prod_self_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/declarations/prod-self-subset--1df4430795467fde92e75db9.md) | 112 | `result-track:1df4430795467fde92e75db9c32e37cdc5eb474255443bc2766937fd5e29788a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/declarations/instance--35a18f0e4719186a24840ad7.md) | 121 | `declaration-track:35a18f0e4719186a24840ad744d54092ae4bdba615d5d1c34ac4b8a6fcd92a32` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/declarations/instance--b94f8cf23a2c62142a00c246.md) | 141 | `declaration-track:b94f8cf23a2c62142a00c246b49d5e41a5388f06f1e13a9f7011f23e0784a628` |
| 10 | `theorem` | [left_mul_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/declarations/left-mul-subset--03fba51e0dcb74b713f6cf32.md) | 146 | `result-track:03fba51e0dcb74b713f6cf32eaf7d7660ee64aebd58c389534780ac2f061707c` |
| 11 | `theorem` | [mul_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/declarations/mul-subset--aa97873bacef05ace40468c8.md) | 152 | `result-track:aa97873bacef05ace40468c8edb4f4ceb012a6e298aeb730fd9085dbdc4b0b01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
