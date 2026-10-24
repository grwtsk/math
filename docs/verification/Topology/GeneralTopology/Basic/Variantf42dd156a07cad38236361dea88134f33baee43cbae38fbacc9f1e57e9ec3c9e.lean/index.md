# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2adf8a0a1f5314722fd6ad1cae5d3ee8c278f8c8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2adf8a0a1f5314722fd6ad1cae5d3ee8c278f8c8`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonarchimedeanAddGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/declarations/nonarchimedeanaddgroup--b1147451f15316008861e678.md) | 33 | `declaration-track:b1147451f15316008861e678274ff5ad36e8cda9643fcde2b446e8d5551f7591` |
| 2 | `class` | [NonarchimedeanGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/declarations/nonarchimedeangroup--209e2bd538a2eb7a4a6f93eb.md) | 39 | `declaration-track:209e2bd538a2eb7a4a6f93eb26967ecbc3fe850d7b692cf55227a27b848d3b14` |
| 3 | `class` | [NonarchimedeanRing](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/declarations/nonarchimedeanring--3ceadbac46cd1bf7e1d8c9ab.md) | 45 | `declaration-track:3ceadbac46cd1bf7e1d8c9ab7a9634dd4c4c902684f7257b92b67b74704109ff` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/declarations/instance--130998f820275aedf436ba6e.md) | 51 | `declaration-track:130998f820275aedf436ba6e08a6bd9ae9f2b9ed8de5dddaaddf2370455bdb7a` |
| 5 | `theorem` | [nonarchimedean_of_emb](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/declarations/nonarchimedean-of-emb--a4d96b3c7ab63a8677ad03ba.md) | 63 | `result-track:a4d96b3c7ab63a8677ad03ba5d91df03b151ac374ba1b3134ef7a3cdda4ea8e7` |
| 6 | `theorem` | [prod_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/declarations/prod-subset--13b2076c4ccccbba70f7c37c.md) | 76 | `result-track:13b2076c4ccccbba70f7c37c09325ae8014c7cb30152f78e629c682b7d548a9b` |
| 7 | `theorem` | [prod_self_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/declarations/prod-self-subset--0e3c3ab0ea43290b43ffb1eb.md) | 92 | `result-track:0e3c3ab0ea43290b43ffb1ebf72613532c9b1164c07cb14d514dfcf505440c15` |
| 8 | `instance` | [Prod.instNonarchimedeanGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/declarations/prod-instnonarchimedeangroup--0cb3704abe183a3b66a20ab0.md) | 99 | `declaration-track:0cb3704abe183a3b66a20ab04f92e68ddaf311c299945238334f3fb463ad9b14` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/declarations/instance--07f6b41d9a5b8eb8f74082c9.md) | 115 | `declaration-track:07f6b41d9a5b8eb8f74082c9896e9e75d33db767e4253cbf16e087bc3931f225` |
| 10 | `theorem` | [left_mul_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/declarations/left-mul-subset--80916a6a7ed950e4abf85b51.md) | 120 | `result-track:80916a6a7ed950e4abf85b518a0ed13a5446f70ed252dc9bc2d340d7472c32c6` |
| 11 | `theorem` | [mul_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/declarations/mul-subset--485ec3cd202c7293fb7e81a7.md) | 125 | `result-track:485ec3cd202c7293fb7e81a73ae7641ff26371534cc0cec84df90a78d1fecd06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
