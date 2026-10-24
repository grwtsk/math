# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da83ed6adcef1f61eac4fc81cbf77c126d912cec",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da83ed6adcef1f61eac4fc81cbf77c126d912cec`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonarchimedeanAddGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/declarations/nonarchimedeanaddgroup--99110b096a105518ebe1dc1b.md) | 41 | `declaration-track:99110b096a105518ebe1dc1b1e61df3803cd6f9fa9b57693eea7a90a54dccf9c` |
| 2 | `class` | [NonarchimedeanGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/declarations/nonarchimedeangroup--c72b806581aacfaba310578c.md) | 47 | `declaration-track:c72b806581aacfaba310578cf8e823fe0c1e9736a4b00edad1153128dbe63c6b` |
| 3 | `class` | [NonarchimedeanRing](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/declarations/nonarchimedeanring--8bf3e0a030a6f46ad4caaf31.md) | 53 | `declaration-track:8bf3e0a030a6f46ad4caaf31097f545f02b43007d61909b867adfbc6e6effe74` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/declarations/instance--2a670dfe45d11fe8e11373ea.md) | 59 | `declaration-track:2a670dfe45d11fe8e11373ead509f0ac5205a5cca1170ff03206e8dbb6aacbbf` |
| 5 | `theorem` | [nonarchimedean_of_emb](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/declarations/nonarchimedean-of-emb--43b8e95272146f22328904a0.md) | 71 | `result-track:43b8e95272146f22328904a065d8dc4922063270a42d568b72bfa7fbad448531` |
| 6 | `theorem` | [prod_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/declarations/prod-subset--1a1d7b103f2167d194ac4517.md) | 84 | `result-track:1a1d7b103f2167d194ac4517fd71b7cb7f30b979f8e38f1a7cfa5732220998c1` |
| 7 | `theorem` | [prod_self_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/declarations/prod-self-subset--e5b420b1cab2cc7f3d354acb.md) | 100 | `result-track:e5b420b1cab2cc7f3d354acbf93fb026ca218cd789f52438926307e4214e4655` |
| 8 | `instance` | [Prod.instNonarchimedeanGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/declarations/prod-instnonarchimedeangroup--803b414e37451fa69640084d.md) | 107 | `declaration-track:803b414e37451fa69640084d047a13a1ea2b845873ac11940ce9cbe8fbf06fff` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/declarations/instance--05506b9d2ad3b39b13274b3c.md) | 123 | `declaration-track:05506b9d2ad3b39b13274b3c0944bad2508dbacd43679be558687e26c4200ca2` |
| 10 | `theorem` | [left_mul_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/declarations/left-mul-subset--99dbb1b239cec13b5209d04d.md) | 128 | `result-track:99dbb1b239cec13b5209d04dd64595063fe54662472f62c341c1f9fcf381858d` |
| 11 | `theorem` | [mul_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/declarations/mul-subset--9fa7b1884c8b76aac0c3d4cc.md) | 133 | `result-track:9fa7b1884c8b76aac0c3d4cce6c32c14996c15f86737c08f13374d22dcfb9533` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
