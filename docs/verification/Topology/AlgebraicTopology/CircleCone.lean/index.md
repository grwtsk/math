# Verification target: GRWTSK.Topology.AlgebraicTopology.CircleCone

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9963c77195d4a434f2b075706c2b34c31420ef58",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/CircleCone.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9963c77195d4a434f2b075706c2b34c31420ef58`.

Source path: `GRWTSK/Topology/AlgebraicTopology/CircleCone.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/CircleCone.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Quotient` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coneSetoid](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/conesetoid--0a0861230c98b710f6b3d4f0.md) | 27 | `declaration-track:0a0861230c98b710f6b3d4f097d4fe6506602027f331daed749e5389f543bd12` |
| 2 | `abbrev` | [Cone](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/cone--305abc38ca0a2b91e952aeb2.md) | 43 | `declaration-track:305abc38ca0a2b91e952aeb2e9b967bd5d24e0a8c032ad67374777308f31bb87` |
| 3 | `abbrev` | [ClosedDisk](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/closeddisk--b7bfc66907257b244975e72f.md) | 46 | `declaration-track:b7bfc66907257b244975e72fc4749b088a022cc4d13884a961f29dd36943b45b` |
| 4 | `def` | [coneMk](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/conemk--485e3e26a2630e8ae7bfb430.md) | 49 | `declaration-track:485e3e26a2630e8ae7bfb4300ee9bc83db17d72ab68fdb76f7e3675d318f6869` |
| 5 | `def` | [boundary](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/boundary--1ee50de53d757e58b15f00ce.md) | 53 | `declaration-track:1ee50de53d757e58b15f00ceed3367590371bb2dc5dfa9b61fc01dc22112fb88` |
| 6 | `def` | [apex](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/apex--0dbed3ce653a18a785a344b7.md) | 56 | `declaration-track:0dbed3ce653a18a785a344b79087668f9c92811082d867c61b2f02cb176ff1e3` |
| 7 | `theorem` | [coneMk_zero](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/conemk-zero--ce53fb7008e87624a3f6b997.md) | 58 | `result-track:ce53fb7008e87624a3f6b997b5b657ee2af6303ad227865a093cfc9cb8b3bc87` |
| 8 | `def` | [radialMap](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/radialmap--fbbd7d585021016f05e65568.md) | 64 | `declaration-track:fbbd7d585021016f05e65568c59ebd042636e7e52d1708518ee3603fbb91482d` |
| 9 | `theorem` | [norm_radialMap](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/norm-radialmap--42418782586133ae3393a083.md) | 70 | `result-track:42418782586133ae3393a0830dc727b9ee9cfc73f376677170d3e14bb0e44df7` |
| 10 | `theorem` | [continuous_radialMap](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/continuous-radialmap--e41aef81ec21cc6e89eff81a.md) | 75 | `result-track:e41aef81ec21cc6e89eff81a9da720dda64a4abe9b487882f3d6ffd0f7ece7d3` |
| 11 | `theorem` | [coneSetoid_iff_radialMap_eq](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/conesetoid-iff-radialmap-eq--1d7d64c12c6a45eb5acde7ce.md) | 81 | `result-track:1d7d64c12c6a45eb5acde7ce2b61c2728aeebc9d758319e39f67411671a98f96` |
| 12 | `theorem` | [radialMap_surjective](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/radialmap-surjective--3ec61fd4b020cb0c41edf96a.md) | 104 | `result-track:3ec61fd4b020cb0c41edf96af2bb019894f6ada11cdd317da24eb7c5a634754e` |
| 13 | `def` | [homeomorph](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/homeomorph--e2c68f27982aa300374e4ea0.md) | 123 | `declaration-track:e2c68f27982aa300374e4ea036d7ab37a0716250ee5776c91cac7d5ad5a62e7d` |
| 14 | `theorem` | [homeomorph_coneMk](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/homeomorph-conemk--7d715b3ce47f149d31793edf.md) | 131 | `result-track:7d715b3ce47f149d31793edf5073f042706129f46a1679cb50e250943f0c3590` |
| 15 | `theorem` | [homeomorph_boundary](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/homeomorph-boundary--c1cb0137488bfc0160d72806.md) | 137 | `result-track:c1cb0137488bfc0160d7280644b936360e586ce6f038af99f44b46b03faf768d` |
| 16 | `theorem` | [homeomorph_apex](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/declarations/homeomorph-apex--62e04af4dffbc17de73c04cd.md) | 144 | `result-track:62e04af4dffbc17de73c04cd596398acfc550c4fa42dd3ce36e1f5491d2d4d87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
