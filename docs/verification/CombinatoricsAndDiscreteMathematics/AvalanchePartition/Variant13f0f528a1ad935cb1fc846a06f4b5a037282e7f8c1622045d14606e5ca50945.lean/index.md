# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.AvalanchePartition.Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d162cc32d4cc63bf274fb00cdb35887d876ab19f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d162cc32d4cc63bf274fb00cdb35887d876ab19f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.AbsoluteRegion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AvalanchePartitionTree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/avalanchepartitiontree--d63ff6f9d2da937086213d1f.md) | 26 | `declaration-track:d63ff6f9d2da937086213d1fb2a00ac5f7000e5b038d1082a4cfc645e9411842` |
| 2 | `def` | [Child](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/child--4aa50bef5828b397c4cfa6ca.md) | 70 | `declaration-track:4aa50bef5828b397c4cfa6cad78b3a659bffd5b1cef8f622823cda2627e7f740` |
| 3 | `theorem` | [child_rank_decreases](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/child-rank-decreases--3ed399fa7c4db425b2d6a0e0.md) | 74 | `result-track:3ed399fa7c4db425b2d6a0e0948d36263ed32c0b76c479f6147c6572edfdba33` |
| 4 | `theorem` | [child_wellFounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/child-wellfounded--15cdd612d2cf59ceccfaaf81.md) | 81 | `result-track:15cdd612d2cf59ceccfaaf817cdb59703d8a3ee52915f643f8109895684b1dc6` |
| 5 | `theorem` | [no_child_cycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/no-child-cycle--8b38bbc7ae6b90ab8b7b869b.md) | 89 | `result-track:8b38bbc7ae6b90ab8b7b869bf27aec5c83f5bc508ed9707ed646af6fdd8dc190` |
| 6 | `theorem` | [root_covers_every_coordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/root-covers-every-coordinate--d61f1ee0c3612dda29cfe7e0.md) | 94 | `result-track:d61f1ee0c3612dda29cfe7e0c3044bea2d128eb71e102c276eafc57ff3f3d33a` |
| 7 | `def` | [frontierAtDepth](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/frontieratdepth--6638f016e37e95c3b3dd3e6c.md) | 113 | `declaration-track:6638f016e37e95c3b3dd3e6c936ac15c8ca7af32dd28eb24d0f7cc5275d3c382` |
| 8 | `theorem` | [frontierAtDepth_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/frontieratdepth-zero--8970404e5665519b3c174f0e.md) | 125 | `result-track:8970404e5665519b3c174f0efb296e0eea1a55fc3fab8e215b01eb4ae8b478cf` |
| 9 | `theorem` | [frontierAtDepth_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/frontieratdepth-succ--ef99f64cce756354deabd737.md) | 129 | `result-track:ef99f64cce756354deabd737652b93c9610572b41e189819c0575bbd546efe0d` |
| 10 | `theorem` | [frontierAtDepth_runtime_independent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/frontieratdepth-runtime-independent--6f93a9ac315184ab53577992.md) | 139 | `result-track:6f93a9ac315184ab535779920f05f2cbede7d7d9baf00eef5cb3d813b67b26c7` |
| 11 | `structure` | [GlobalAvalanchePartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/globalavalanchepartition--29776a69656a95db155b70ae.md) | 150 | `declaration-track:29776a69656a95db155b70ae65284cc67151a5258cfc3fa6718dd12da8cb38de` |
| 12 | `structure` | [DeterministicGlobalAvalanchePartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/deterministicglobalavalanchepartition--743115af2235bed780bbabdd.md) | 177 | `declaration-track:743115af2235bed780bbabddabf045c0865e37bbf2df350ebc95581fdb30899f` |
| 13 | `theorem` | [nodes_eq_frontier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/nodes-eq-frontier--ebc7d3c1546f4ba43a278651.md) | 189 | `result-track:ebc7d3c1546f4ba43a2786511b5259ce374ed717e0f5ee9226906fbb39758909` |
| 14 | `theorem` | [deterministic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/declarations/deterministic--72ee425bae3b24badfdde2be.md) | 195 | `result-track:72ee425bae3b24badfdde2bedfba6036a7d46a770df08623e00a681b80517155` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
