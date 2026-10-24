# Verification target: GRWTSK.Topology.GeneralTopology.Group.Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5e1557bbf58add3f18ebd2979d4850bf32b6ddd",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5e1557bbf58add3f18ebd2979d4850bf32b6ddd`.

Source path: `GRWTSK/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LeftRightNhds` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/declarations/instance--30ba96ff9406543a4715463f.md) | 36 | `declaration-track:30ba96ff9406543a4715463f9fc2b80773b4bc733aabee3b5a63cd84ce1a5771` |
| 2 | `theorem` | [continuous_mabs](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/declarations/continuous-mabs--366ddd90e6320fd2243408e3.md) | 60 | `result-track:366ddd90e6320fd2243408e3d39e8480eacf149bde8cdb79f73005960aea40bf` |
| 3 | `theorem` | [Filter.Tendsto.mabs](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/declarations/filter-tendsto-mabs--a597cb4da888f750748659de.md) | 68 | `result-track:a597cb4da888f750748659de55a78e59b1c0299f68f82f001e08ee4f36d50382` |
| 4 | `theorem` | [comap_mabs_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/declarations/comap-mabs-nhds-one--979a46d04efb5655550241fa.md) | 73 | `result-track:979a46d04efb5655550241fa3c2733ffa5333a9df1f0299e2bee9a70cf336269` |
| 5 | `theorem` | [tendsto_one_iff_mabs_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/declarations/tendsto-one-iff-mabs-tendsto-one--531d7c163a43561bdac4a2c5.md) | 77 | `result-track:531d7c163a43561bdac4a2c5c873d0eb7f868eefe95051381f730836708df512` |
| 6 | `theorem` | [Continuous.mabs](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/declarations/continuous-mabs--884f6243b69583346888c3cc.md) | 86 | `result-track:884f6243b69583346888c3ccb17a5dd804e4149d39833c9573d5abb0d977efa6` |
| 7 | `theorem` | [ContinuousAt.mabs](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/declarations/continuousat-mabs--9c97cac52ad89df97a447fb2.md) | 90 | `result-track:9c97cac52ad89df97a447fb25f1b57c9fe5348e7bfa068234f7959c15e70e984` |
| 8 | `theorem` | [ContinuousWithinAt.mabs](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/declarations/continuouswithinat-mabs--ef798e334af7a249125eabae.md) | 94 | `result-track:ef798e334af7a249125eabae87acb0186c745eafecdd3ad66e5bb3cfadeae6fa` |
| 9 | `theorem` | [ContinuousOn.mabs](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/declarations/continuouson-mabs--6a919e0cc5ef5713254f06b5.md) | 99 | `result-track:6a919e0cc5ef5713254f06b5565f20755ab93e53612f88a364dfe0ff1a71a7fd` |
| 10 | `theorem` | [tendsto_mabs_nhdsNE_one](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/declarations/tendsto-mabs-nhdsne-one--962bc0255743584803f16554.md) | 103 | `result-track:962bc0255743584803f16554b9e35a5d98e7ddd41431c78ba2549d7841bf25e9` |
| 11 | `theorem` | [denseRange_zpow_iff_surjective](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/declarations/denserange-zpow-iff-surjective--9f1c631cf22a85f30a9e8b6b.md) | 114 | `result-track:9f1c631cf22a85f30a9e8b6bfa9323f7ee3b8a561009ef2e93e65f23e12ab663` |
| 12 | `theorem` | [not_denseRange_zpow](../../../../../mathematics/Topology/GeneralTopology/Group/Varianta35551f4ab76870ed1dacdf0926dad121eacccbbbe14092e2d197edc1cff6541.lean/declarations/not-denserange-zpow--01b661eab5d192b9ac55717a.md) | 147 | `result-track:01b661eab5d192b9ac55717a8440dfe010017b399c89b83a9c41c6371c6e1dbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
