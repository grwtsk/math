# Verification target: GRWTSK.Combinatorics.DirectedEulerActiveSupport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c114e1244ffa245dc5c133bee4f5cb5f3185c2e8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedEulerActiveSupport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/index.md) · [Full source](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c114e1244ffa245dc5c133bee4f5cb5f3185c2e8`.

Source path: `GRWTSK/Combinatorics/DirectedEulerActiveSupport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedEulerActiveSupport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedEulerExhaustionConsumer`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerExhaustionConsumer.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Logic.Relation` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [incidentEdgeSupport](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/declarations/incidentedgesupport--8ffff4ddd1ea480952c240ad.md) | 23 | `declaration-track:8ffff4ddd1ea480952c240ad9013e12bef337185d263fe203badb842719ffbf5` |
| 2 | `def` | [undirectedEdgeAdjacency](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/declarations/undirectededgeadjacency--1aedc0637e5d1b952bb3c268.md) | 27 | `declaration-track:1aedc0637e5d1b952bb3c26805b74cd19936cd99712bd31ed2c6c46d3893f11b` |
| 3 | `def` | [vertices](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/declarations/vertices--c9850d9e4511ff45c6067961.md) | 34 | `declaration-track:c9850d9e4511ff45c6067961d2f6b1e29e4e288951790d0ea05cb243126edbd0` |
| 4 | `theorem` | [start_mem_vertices](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/declarations/start-mem-vertices--173d533319e3356ff5259479.md) | 38 | `result-track:173d533319e3356ff525947901978bfe29a4837360a3d94f926b4aa2ecf685f0` |
| 5 | `theorem` | [edge_endpoints_mem_vertices](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/declarations/edge-endpoints-mem-vertices--160fb1028c35c4e955393f08.md) | 45 | `result-track:160fb1028c35c4e955393f084be373c3e53934c17604ba85b782e0e30086d1d8` |
| 6 | `theorem` | [split_at_mem_vertices](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/declarations/split-at-mem-vertices--6a2445ccfb578fdd839148f5.md) | 59 | `result-track:6a2445ccfb578fdd839148f5b3fb1060e4b0382ace86e275c9c81095cd53131c` |
| 7 | `theorem` | [exists_residual_outgoing_at_visited_vertex](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/declarations/exists-residual-outgoing-at-visited-vertex--996b46d4b4266f833ba21c33.md) | 79 | `result-track:996b46d4b4266f833ba21c3328e79922660592a90a030c295e3283f381ee9bc3` |
| 8 | `theorem` | [exists_residual_outgoing_splice_of_connected_support](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/declarations/exists-residual-outgoing-splice-of-connected-support--c394b715dc9c225f60614fec.md) | 159 | `result-track:c394b715dc9c225f60614fece6aa45f3d81712ed2638a5bca06bbb1df3382edd` |
| 9 | `theorem` | [exists_exhaustive_closed_trail_of_balanced_connected_support](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/declarations/exists-exhaustive-closed-trail-of-balanced-connected-support--ac6b6d2362a7342cf23ba5c6.md) | 179 | `result-track:ac6b6d2362a7342cf23ba5c658e9cea43e94aca651e454b3865441888b139328` |
| 10 | `theorem` | [exists_euler_closed_trail_of_nonempty_balanced_connected_support](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/declarations/exists-euler-closed-trail-of-nonempty-balanced-connected-support--eac0dd2e3413e1a92d24ba53.md) | 196 | `result-track:eac0dd2e3413e1a92d24ba531174a80d808ee7ac7a6ee3eb0bd79cea8003f926` |
| 11 | `theorem` | [bool_loop_edges_eq_start](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/declarations/bool-loop-edges-eq-start--6b78b61f9be39666f5ada8eb.md) | 212 | `result-track:6b78b61f9be39666f5ada8eb475e049dfe262907ac5d45953e7e15c7868f740f` |
| 12 | `theorem` | [two_constant_loops_balanced_but_no_euler](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/declarations/two-constant-loops-balanced-but-no-euler--5d967bfe748c7b735aeae832.md) | 227 | `result-track:5d967bfe748c7b735aeae832cab2451a0416b182a96e44c7434698e80d314b28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
