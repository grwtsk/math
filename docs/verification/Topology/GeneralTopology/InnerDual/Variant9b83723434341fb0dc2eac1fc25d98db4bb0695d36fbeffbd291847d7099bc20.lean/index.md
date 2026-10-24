# Verification target: GRWTSK.Topology.GeneralTopology.InnerDual.Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b00e0c7bc1353fa77366e141115051560074f50a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b00e0c7bc1353fa77366e141115051560074f50a`.

Source path: `GRWTSK/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Set.innerDualCone](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/set-innerdualcone--71dedf80e2d67b2f3e56a021.md) | 51 | `declaration-track:71dedf80e2d67b2f3e56a0217a485a26b2abc5747d2616e22f844adfc4f4541f` |
| 2 | `theorem` | [mem_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/mem-innerdualcone--4b4487f73a8ee750cec7ebcd.md) | 61 | `result-track:4b4487f73a8ee750cec7ebcdf034bf678c4250874665a15a400a2169a5880304` |
| 3 | `theorem` | [innerDualCone_empty](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/innerdualcone-empty--d3fd12fb4b2144e3ff8eb282.md) | 65 | `result-track:d3fd12fb4b2144e3ff8eb2829b5d4b88ed330a47990c36b54c667881043eda02` |
| 4 | `theorem` | [innerDualCone_zero](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/innerdualcone-zero--d83f3e4914d05086cbcdee60.md) | 70 | `result-track:d83f3e4914d05086cbcdee60976630fd95f84948c7ad3b40b56e147dae503b31` |
| 5 | `theorem` | [innerDualCone_univ](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/innerdualcone-univ--eb97bd4701784ee9db556d26.md) | 75 | `result-track:eb97bd4701784ee9db556d26257d7771459ba59d0dc8ff1574c9005d7cb5a14f` |
| 6 | `theorem` | [innerDualCone_le_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/innerdualcone-le-innerdualcone--8a99f82f176cb674bad5c96c.md) | 83 | `result-track:8a99f82f176cb674bad5c96c7c8a3cd69d509f22e17bfa320637fb7030c9d0aa` |
| 7 | `theorem` | [pointed_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/pointed-innerdualcone--1f8060536271a6cdba9e96c9.md) | 86 | `result-track:1f8060536271a6cdba9e96c92def3a155a631641833650e63117374f8ef4ef9c` |
| 8 | `theorem` | [innerDualCone_singleton](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/innerdualcone-singleton--6822130885cc3e713b343ee9.md) | 90 | `result-track:6822130885cc3e713b343ee911dc56c553c6d09dd1a6b06c1bd2e04835b8bf4d` |
| 9 | `theorem` | [innerDualCone_union](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/innerdualcone-union--1a4c164fc2d357c8437c0a97.md) | 94 | `result-track:1a4c164fc2d357c8437c0a9785e73b66111836eaa23d2e507a275ec6ddd9bd47` |
| 10 | `theorem` | [innerDualCone_insert](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/innerdualcone-insert--fcb557d2dface3823e6e9610.md) | 99 | `result-track:fcb557d2dface3823e6e9610c30f65c75ba0aeb231606941978998cdb05184a9` |
| 11 | `theorem` | [innerDualCone_iUnion](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/innerdualcone-iunion--22ef4d043105342d685cdf6a.md) | 103 | `result-track:22ef4d043105342d685cdf6a89643fd6be7f956ed7cc8275c6bb33ec97d196ba` |
| 12 | `theorem` | [innerDualCone_sUnion](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/innerdualcone-sunion--4e079c71dbc310df1122fdce.md) | 111 | `result-track:4e079c71dbc310df1122fdce1a72ec187d81648767e19fcada373826aa689816` |
| 13 | `theorem` | [innerDualCone_eq_iInter_innerDualCone_singleton](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/innerdualcone-eq-iinter-innerdualcone-singleton--35f154afa4bdcd261f55b2bd.md) | 116 | `result-track:35f154afa4bdcd261f55b2bd170efbfa503a0e83a45783c05228fec29c0f1150` |
| 14 | `theorem` | [isClosed_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/isclosed-innerdualcone--3f1e2cd16064f6c4c8e5d9ee.md) | 120 | `result-track:3f1e2cd16064f6c4c8e5d9eebf87cc3b32d33acfaaf306b1c6df398c37317d04` |
| 15 | `theorem` | [ConvexCone.pointed_of_nonempty_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/convexcone-pointed-of-nonempty-of-isclosed--d01a46fa7d2bf7c7a0d26093.md) | 132 | `result-track:d01a46fa7d2bf7c7a0d26093398ace9059ab6d4d31052be5c261fd353b6e4bf8` |
| 16 | `theorem` | [ConvexCone.hyperplane_separation_of_nonempty_of_isClosed_of_notMem](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/convexcone-hyperplane-separation-of-nonempty-of-isclosed-of-notmem--f953669cdc005a8ffd48adbd.md) | 158 | `result-track:f953669cdc005a8ffd48adbd6d0e972406191a28c5dd447c47aed9652e36c05d` |
| 17 | `theorem` | [ConvexCone.innerDualCone_of_innerDualCone_eq_self](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/declarations/convexcone-innerdualcone-of-innerdualcone-eq-self--3781ac6ff4d3fbdb721f9377.md) | 195 | `result-track:3781ac6ff4d3fbdb721f93773fefdc48efc5940b728374d958cf4a54d5b9eecc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
