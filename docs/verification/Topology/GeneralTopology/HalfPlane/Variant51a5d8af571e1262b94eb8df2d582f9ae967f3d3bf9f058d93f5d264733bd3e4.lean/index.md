# Verification target: GRWTSK.Topology.GeneralTopology.HalfPlane.Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2cf605ce5148d57b3b05ffcc424d80e1a9cc261",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2cf605ce5148d57b3b05ffcc424d80e1a9cc261`.

Source path: `GRWTSK/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.EReal.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isOpen_re_lt_EReal](../../../../../mathematics/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean/declarations/isopen-re-lt-ereal--9f7ebdb1a3bf43448278be30.md) | 21 | `result-track:9f7ebdb1a3bf43448278be30dfce9811aa7eede5dcf06df81a217d9cfac615b9` |
| 2 | `lemma` | [isOpen_re_gt_EReal](../../../../../mathematics/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean/declarations/isopen-re-gt-ereal--c9b36f72407df59076e46430.md) | 26 | `result-track:c9b36f72407df59076e4643027cb5c4b1b1cc0fff2452cc8723fccea4206819e` |
| 3 | `lemma` | [isOpen_im_lt_EReal](../../../../../mathematics/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean/declarations/isopen-im-lt-ereal--3cbfeb69d408ca650452772c.md) | 31 | `result-track:3cbfeb69d408ca650452772cc7cf0dce6c9f3fc72b24147c776a1846c867ad37` |
| 4 | `lemma` | [isOpen_im_gt_EReal](../../../../../mathematics/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean/declarations/isopen-im-gt-ereal--b4df66fa4d09332a50a4549e.md) | 36 | `result-track:b4df66fa4d09332a50a4549e22ccc0fc7492c46bfbb9b606205c6e0dea239415` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
