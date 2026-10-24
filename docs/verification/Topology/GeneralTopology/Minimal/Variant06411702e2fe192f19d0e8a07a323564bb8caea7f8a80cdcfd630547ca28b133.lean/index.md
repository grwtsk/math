# Verification target: GRWTSK.Topology.GeneralTopology.Minimal.Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c29a7f2fce92e00a0c7eee3390403090cfa1813b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c29a7f2fce92e00a0c7eee3390403090cfa1813b`.

Source path: `GRWTSK/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.ConstMulAction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddAction.IsMinimal](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/declarations/addaction-isminimal--8add60f9ef8b576982e1242d.md) | 29 | `declaration-track:8add60f9ef8b576982e1242dad1052b9d8a080671e7e6769110214877793f988` |
| 2 | `class` | [MulAction.IsMinimal](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/declarations/mulaction-isminimal--dfce6c3da29c581f93383be2.md) | 36 | `declaration-track:dfce6c3da29c581f93383be274a86751c9c03f3de4d05b043f1bb218cc0cd50a` |
| 3 | `theorem` | [MulAction.dense_orbit](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/declarations/mulaction-dense-orbit--b15f2be80846bffccd37db86.md) | 46 | `result-track:b15f2be80846bffccd37db86fd32ec9e3b34e6d84e9ede62dbea439f62d81fe5` |
| 4 | `theorem` | [denseRange_smul](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/declarations/denserange-smul--0083096cc6a507eeacbb20d9.md) | 50 | `result-track:0083096cc6a507eeacbb20d9723816959476839767655fa217c014353f654cec` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/declarations/instance--3417c8b499c2c07cce35edfb.md) | 54 | `declaration-track:3417c8b499c2c07cce35edfbe5791e074a5cef10778597250c647ad2a6537398` |
| 6 | `theorem` | [IsOpen.exists_smul_mem](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/declarations/isopen-exists-smul-mem--a3e4c670cf5b121d17378111.md) | 59 | `result-track:a3e4c670cf5b121d173781118e8d3fde84e6abf027c531f060e4a39cee83695c` |
| 7 | `theorem` | [IsOpen.iUnion_preimage_smul](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/declarations/isopen-iunion-preimage-smul--8139c3fc088389fb15fe9d72.md) | 64 | `result-track:8139c3fc088389fb15fe9d72c0a258670f86ae8ee740cd4bad43ca12899f57d1` |
| 8 | `theorem` | [IsOpen.iUnion_smul](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/declarations/isopen-iunion-smul--5e45ba18b46560c1f55aaea2.md) | 69 | `result-track:5e45ba18b46560c1f55aaea2af3e8af4a25c1521107782683ed40f0498adf131` |
| 9 | `theorem` | [IsCompact.exists_finite_cover_smul](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/declarations/iscompact-exists-finite-cover-smul--4c63a676aede76b3cc5916d4.md) | 76 | `result-track:4c63a676aede76b3cc5916d41cd0b5ea6ce4c769490e10bbc7f22e2b472415dc` |
| 10 | `theorem` | [dense_of_nonempty_smul_invariant](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/declarations/dense-of-nonempty-smul-invariant--22ecd342d41740e1b308ab8a.md) | 84 | `result-track:22ecd342d41740e1b308ab8aa9394c5532930a692e8c8d04355905b84dcf9627` |
| 11 | `theorem` | [eq_empty_or_univ_of_smul_invariant_closed](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/declarations/eq-empty-or-univ-of-smul-invariant-closed--bace23b07ea98514ff081486.md) | 90 | `result-track:bace23b07ea98514ff081486cc9ba01a7556bdbe1cb95b4c8e0cd36d055b7bb3` |
| 12 | `theorem` | [isMinimal_iff_isClosed_smul_invariant](../../../../../mathematics/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/declarations/isminimal-iff-isclosed-smul-invariant--074c924b5c7a24d65dd5f24b.md) | 96 | `result-track:074c924b5c7a24d65dd5f24bd04a809cebbd1d078bd0ae94ad1ed6a7871a2ff9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
