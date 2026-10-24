# Verification target: GRWTSK.Topology.GeneralTopology.GroupTopology.Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14182789b27358ca534db602abfc5e83a4b8e2c0",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14182789b27358ca534db602abfc5e83a4b8e2c0`.

Source path: `GRWTSK/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GroupTopology](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/grouptopology--9862567d97e4079887f910cb.md) | 38 | `declaration-track:9862567d97e4079887f910cb34d43c9428fe20e34099afd1479440eb6241c202` |
| 2 | `structure` | [AddGroupTopology](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/addgrouptopology--9ea76764b13bfca35283caa4.md) | 43 | `declaration-track:9ea76764b13bfca35283caa48b2324041a0850da6d81d302cc303c185382d3ac` |
| 3 | `theorem` | [continuous_mul'](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/continuous-mul--15f91c98bedcaf2e5ac4a06e.md) | 54 | `result-track:15f91c98bedcaf2e5ac4a06ed924798c1019f1b7d3babf138143798b86c89998` |
| 4 | `theorem` | [continuous_inv'](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/continuous-inv--7a6722901156ba310e3d39a2.md) | 63 | `result-track:7a6722901156ba310e3d39a2bee77c02137eb9c1009cf6361eb891ab556caa50` |
| 5 | `theorem` | [toTopologicalSpace_injective](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/totopologicalspace-injective--98ddc67da6d57abb205ba283.md) | 71 | `result-track:98ddc67da6d57abb205ba28348424c2c27e24825426b4d959d206278bde09a53` |
| 6 | `theorem` | [ext'](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/ext--ba9d64737287b00c356dcf08.md) | 79 | `result-track:ba9d64737287b00c356dcf087a1f1c6e863253645268ccac1ace6aca0fd9693f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/instance--1aac7d04c27a90d792e3b056.md) | 87 | `declaration-track:1aac7d04c27a90d792e3b05679860801ec7c4495b354ca9ca8a0b3edad76b9fd` |
| 8 | `theorem` | [toTopologicalSpace_le](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/totopologicalspace-le--bcfcb0237f34a15cf240ba1e.md) | 91 | `result-track:bcfcb0237f34a15cf240ba1ee763caa827a87096a4d2a4a83b27e71af7627aa4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/instance--df1e6cfd8d7e599d406d3a8b.md) | 96 | `declaration-track:df1e6cfd8d7e599d406d3a8bdab0adbaf026a4681a5cf2637d61f6d7a6321a54` |
| 10 | `theorem` | [toTopologicalSpace_top](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/totopologicalspace-top--6e528ae3f9697ea0c482dcd6.md) | 102 | `result-track:6e528ae3f9697ea0c482dcd6ec432af64a771cb8ed33354d09bb945cbd84cd22` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/instance--6ddd8406cfaefb63375decab.md) | 106 | `declaration-track:6ddd8406cfaefb63375decaba118c2bdd49ee0f0d65612047f526033907d8da8` |
| 12 | `theorem` | [toTopologicalSpace_bot](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/totopologicalspace-bot--e6386997489b2f3bfd702ea2.md) | 114 | `result-track:e6386997489b2f3bfd702ea29adc1147e3589fbfef45a273dee08e89dda08d0e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/instance--e0f044cc3bec750d631a6aaa.md) | 118 | `declaration-track:e0f044cc3bec750d631a6aaa9ad071d867ea165aabce3fc2254d05df142c93f8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/instance--977853ce2636c49bc6c064e6.md) | 125 | `declaration-track:977853ce2636c49bc6c064e60561164543943cc48f75903b4c2b937afa25b635` |
| 15 | `theorem` | [toTopologicalSpace_inf](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/totopologicalspace-inf--b3d0a5e0f53001f93a6bcbcf.md) | 128 | `result-track:b3d0a5e0f53001f93a6bcbcf86fec822c8629ee9e5f480e94eff8327735a76ce` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/instance--b2af9f957ccf5ee305dfb26a.md) | 133 | `declaration-track:b2af9f957ccf5ee305dfb26af1c3c4723b6ecac5d4ebca16e8493c5a72a536d6` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/instance--368c716ba3bbc23d0a013553.md) | 137 | `declaration-track:368c716ba3bbc23d0a013553afcc6998044b78a0d57eca2c4fb1bc41511c5d40` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/instance--5956165e003bb3705ae7f779.md) | 142 | `declaration-track:5956165e003bb3705ae7f779aaf0132987c0757712d5ccdd8a385b1f9181bd72` |
| 19 | `theorem` | [toTopologicalSpace_sInf](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/totopologicalspace-sinf--cdb353f26b0f22816d890af0.md) | 147 | `result-track:cdb353f26b0f22816d890af0264c5aa302e6e2ada9196b025990a669952c731a` |
| 20 | `theorem` | [toTopologicalSpace_iInf](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/totopologicalspace-iinf--ccf28f92e4bff7e55fdb96e7.md) | 151 | `result-track:ccf28f92e4bff7e55fdb96e738681703fcd267d9a0b29d00c5e54c44590d186c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/instance--b362f578bac807a2b7e9f17b.md) | 172 | `declaration-track:b362f578bac807a2b7e9f17bba4e10ad0d430f958db1a49b022e35010b3e067a` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/instance--66ea20dc904f5c396cd0c0b8.md) | 183 | `declaration-track:66ea20dc904f5c396cd0c0b89e0eaee7319809a1842f03b7268c94bcbdbc656c` |
| 23 | `def` | [coinduced](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/coinduced--fd125ac6b4cadb078deca5e4.md) | 196 | `declaration-track:fd125ac6b4cadb078deca5e4caaab698d09399dd03782619ecd7126fcb2ff527` |
| 24 | `theorem` | [coinduced_continuous](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant29a838ad274820d3ffcb66fbfc9ec87eeaedfed57124a6a96c58c4d18b4b0c12.lean/declarations/coinduced-continuous--6ebb823c21ddeeefad59bbe4.md) | 200 | `result-track:6ebb823c21ddeeefad59bbe4bd3cde0da62ee840ecbb4da25335aaec582857be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
