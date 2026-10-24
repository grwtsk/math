# Verification target: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b7613e82d1858e0a6ae462c40b54929a344d0ef",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b7613e82d1858e0a6ae462c40b54929a344d0ef`.

Source path: `GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.ReflectsPreregular` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.EffectiveEpi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Stonean.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [effectiveEpi_tfae](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean/declarations/effectiveepi-tfae--e3398d2a5d926549a20f9c5c.md) | 31 | `result-track:e3398d2a5d926549a20f9c5cd469ad0bca067e7ca549f4e21ce0071e2eb687eb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean/declarations/instance--25db98ab3756a9d012154d97.md) | 43 | `declaration-track:25db98ab3756a9d012154d971608952e803498bc34fef72a35b82e1018b382c5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean/declarations/instance--8339394f313446cc3d42d9dc.md) | 47 | `declaration-track:8339394f313446cc3d42d9dc5329e4c759c9c09ba36d70950d4ff24dc701e37f` |
| 4 | `def` | [profiniteToCompHausEffectivePresentation](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean/declarations/profinitetocomphauseffectivepresentation--65f4ab5e9a429313d315c322.md) | 54 | `declaration-track:65f4ab5e9a429313d315c322e4d8d470c41c371a6a7be3e646fd821e18f7fc2f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean/declarations/instance--8d203b910b1f4de8c926c440.md) | 60 | `declaration-track:8d203b910b1f4de8c926c440f88fddbf48d1ade00755e13ab56479293f000a63` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean/declarations/instance--766bcf4fd4b1615e03ef21b9.md) | 63 | `declaration-track:766bcf4fd4b1615e03ef21b999b2eb06716581fc8baad03de90594fc76b94e56` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean/declarations/example--3674c9924b24dbb2b314e4e7.md) | 65 | `declaration-track:3674c9924b24dbb2b314e4e7a5dd8ef3bdfd842464e3772379c316484ffd543b` |
| 8 | `theorem` | [effectiveEpiFamily_tfae](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean/declarations/effectiveepifamily-tfae--f03689acfdb433b1d1867913.md) | 69 | `result-track:f03689acfdb433b1d18679134836b63666e922b871fb64218ec08a82ee790f9d` |
| 9 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d.lean/declarations/effectiveepifamily-of-jointly-surjective--82aa502414bc6a2e2352cd5e.md) | 88 | `result-track:82aa502414bc6a2e2352cd5e9d137326b784a339354360c84d02bb6e94a58acc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
