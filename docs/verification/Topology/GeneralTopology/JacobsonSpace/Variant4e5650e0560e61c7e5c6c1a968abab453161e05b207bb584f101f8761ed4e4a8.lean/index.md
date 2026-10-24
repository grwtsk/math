# Verification target: GRWTSK.Topology.GeneralTopology.JacobsonSpace.Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "789a939a8cea22ee0d0408b4fcac220fae0ff75e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `789a939a8cea22ee0d0408b4fcac220fae0ff75e`.

Source path: `GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocalAtTarget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.StacksAttribute` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedPoints](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/closedpoints--66f2cd8b13cff9c579ac9284.md) | 34 | `declaration-track:66f2cd8b13cff9c579ac92846f9e8f5ccd6d09b62ae92f768f2aabdd262c0e01` |
| 2 | `lemma` | [mem_closedPoints_iff](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/mem-closedpoints-iff--fd4a6b1c70de75024cb530f2.md) | 39 | `result-track:fd4a6b1c70de75024cb530f2f4c008c31a0da12ddd005ba432376a9b4940bd36` |
| 3 | `lemma` | [preimage_closedPoints_subset](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/preimage-closedpoints-subset--ddb5a12bc95fa882a1b83d70.md) | 41 | `result-track:ddb5a12bc95fa882a1b83d702f328f927bdb2b6a958559eb8f33eb8c291c49b1` |
| 4 | `lemma` | [Topology.IsClosedEmbedding.preimage_closedPoints](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/topology-isclosedembedding-preimage-closedpoints--733c07560add28c5ec57ac2c.md) | 48 | `result-track:733c07560add28c5ec57ac2c50c08b1913c49c50325bbc53628e07769e5832c7` |
| 5 | `lemma` | [closedPoints_eq_univ](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/closedpoints-eq-univ--d13d454b1a454e00921e3cb9.md) | 53 | `result-track:d13d454b1a454e00921e3cb91b5773eb596ef473d31046c1c6ad9869d03aa22c` |
| 6 | `class` | [JacobsonSpace](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/jacobsonspace--12dc64eb71a9c6d1a2111bab.md) | 62 | `declaration-track:12dc64eb71a9c6d1a2111babc189def01facdad1a78bc8c911398f316e0b09d7` |
| 7 | `lemma` | [closure_closedPoints](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/closure-closedpoints--616e79be7621f48155ff5365.md) | 69 | `result-track:616e79be7621f48155ff53654103e5462c6d427b89dd9122d7fdb71877840b92` |
| 8 | `lemma` | [jacobsonSpace_iff_locallyClosed](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/jacobsonspace-iff-locallyclosed--5c27ef97752e4b6c6d710c59.md) | 72 | `result-track:5c27ef97752e4b6c6d710c59a55ba3b5ff8f5e13b430ab126817f9f1ff47dfb2` |
| 9 | `lemma` | [nonempty_inter_closedPoints](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/nonempty-inter-closedpoints--390ea138d3e18b43a954b324.md) | 97 | `result-track:390ea138d3e18b43a954b324084902865222649773c4c4a83ddf21f47be2ea0c` |
| 10 | `lemma` | [isClosed_singleton_of_isLocallyClosed_singleton](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/isclosed-singleton-of-islocallyclosed-singleton--e05951db88dc617da0238aae.md) | 101 | `result-track:e05951db88dc617da0238aae3f18e20f9e751d55bfee531d4f0c23a6e197c9c3` |
| 11 | `lemma` | [Topology.IsOpenEmbedding.preimage_closedPoints](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/topology-isopenembedding-preimage-closedpoints--e14fce4df13a7cbc37bfa5e2.md) | 107 | `result-track:e14fce4df13a7cbc37bfa5e25ec705b80b81fdb31dfe30ba391e992287a6bd8b` |
| 12 | `lemma` | [JacobsonSpace.of_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/jacobsonspace-of-isopenembedding--1a7611332d67de9a5bd393aa.md) | 115 | `result-track:1a7611332d67de9a5bd393aa5850d609dda28a987630e10552498f76265e7745` |
| 13 | `lemma` | [JacobsonSpace.of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/jacobsonspace-of-isclosedembedding--ed99f6ea143718f6155d5b32.md) | 123 | `result-track:ed99f6ea143718f6155d5b32176ca3870a4dadd96028fe784fbe390391955217` |
| 14 | `lemma` | [JacobsonSpace.discreteTopology](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/jacobsonspace-discretetopology--dc5cde783ae5d0d0f3e89a61.md) | 131 | `result-track:dc5cde783ae5d0d0f3e89a6157f6c9af1a79ed52e2302e1c4934b2a85e984628` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/instance--8a90fae0f2974ccab60f8908.md) | 145 | `declaration-track:8a90fae0f2974ccab60f89088e699708f1800aa2290874375dc5cf74c7556f24` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/instance--fe4a161296c5840885dbbd66.md) | 148 | `declaration-track:fe4a161296c5840885dbbd66b70d1e3fb2d1dd7313bfa8ee72adb638e64f17f0` |
| 17 | `lemma` | [TopologicalSpace.IsOpenCover.jacobsonSpace_iff](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/topologicalspace-isopencover-jacobsonspace-iff--07a0527368beda9eb86a36d5.md) | 151 | `result-track:07a0527368beda9eb86a36d5bfacbcb7709d2a963ebc60f0239ddb8a395745ae` |
| 18 | `lemma` | [jacobsonSpace_iff_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/declarations/jacobsonspace-iff-of-isup-eq-top--3ff698792c37cf4acac43062.md) | 176 | `result-track:3ff698792c37cf4acac43062d5b7ea71b689aaa485f66ec5ffc5819a49448790` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
