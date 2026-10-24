# Verification target: GRWTSK.Topology.GeneralTopology.Group.Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17488ad4e21c70042f3dde6b54cfb9b9c1fd67fa",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17488ad4e21c70042f3dde6b54cfb9b9c1fd67fa`.

Source path: `GRWTSK/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LeftRightNhds` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/declarations/instance--de45fed805344ab6a98c445b.md) | 28 | `declaration-track:de45fed805344ab6a98c445ba87253e53e13ac4183b37c43028f312ab992591c` |
| 2 | `theorem` | [continuous_mabs](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/declarations/continuous-mabs--c98cba9e1ef47ab762c5bab8.md) | 52 | `result-track:c98cba9e1ef47ab762c5bab8ab84d86812bc5c9c5ae9868c86f2c79d5ad20ce8` |
| 3 | `theorem` | [Filter.Tendsto.mabs](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/declarations/filter-tendsto-mabs--e22b572500dc8b67bda4ee88.md) | 60 | `result-track:e22b572500dc8b67bda4ee884a40095d9d7d5feed59b6afd7fbd8fb7d25b4261` |
| 4 | `theorem` | [comap_mabs_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/declarations/comap-mabs-nhds-one--735721af3c0b1a7ac67b939b.md) | 65 | `result-track:735721af3c0b1a7ac67b939bc0709e089be2662c6a5c08d164585138a44121c5` |
| 5 | `theorem` | [tendsto_one_iff_mabs_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/declarations/tendsto-one-iff-mabs-tendsto-one--9ccd42e5f07b7743d55481b3.md) | 69 | `result-track:9ccd42e5f07b7743d55481b3788d4321853dde126cb03c6dcf662f991f3a65cc` |
| 6 | `theorem` | [Continuous.mabs](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/declarations/continuous-mabs--5e7afe832226072afc4472ab.md) | 78 | `result-track:5e7afe832226072afc4472abc4f2f52c05916dd72542932df6a4ab19e876f8c6` |
| 7 | `theorem` | [ContinuousAt.mabs](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/declarations/continuousat-mabs--54c0b2f851d493aebf44b03c.md) | 82 | `result-track:54c0b2f851d493aebf44b03cc21d226d6a0c7d89d79e80f1354e69da14cf2017` |
| 8 | `theorem` | [ContinuousWithinAt.mabs](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/declarations/continuouswithinat-mabs--355f9db3b8535ed3f98b70b7.md) | 86 | `result-track:355f9db3b8535ed3f98b70b7255eb94452ec98b24b8d56d44fb0f4f8788f0d66` |
| 9 | `theorem` | [ContinuousOn.mabs](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/declarations/continuouson-mabs--96e34e71b639fe0c387e9471.md) | 91 | `result-track:96e34e71b639fe0c387e9471426904b18e34ec6e6a2bdb26950db339a81d42db` |
| 10 | `theorem` | [tendsto_mabs_nhdsNE_one](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/declarations/tendsto-mabs-nhdsne-one--1dbe47e410dd05e38601d765.md) | 95 | `result-track:1dbe47e410dd05e38601d765be96fc1517ba1a468f6db19a00cf36cb90186c05` |
| 11 | `theorem` | [denseRange_zpow_iff_surjective](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/declarations/denserange-zpow-iff-surjective--4fb350052de6f116fa213edf.md) | 106 | `result-track:4fb350052de6f116fa213edf8e28b71afd5d7b040b623c8c5ac00c5acf99bd69` |
| 12 | `theorem` | [not_denseRange_zpow](../../../../../mathematics/Topology/GeneralTopology/Group/Variant29a58bcfd001d271188c9bc98d4b7760783c09d8198eac602bf45a007a2aa34a.lean/declarations/not-denserange-zpow--92abc4a437645e0dc0c99982.md) | 139 | `result-track:92abc4a437645e0dc0c999824ad17cc6f4f6a788f502569fca431eee2c0d109d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
