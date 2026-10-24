# Verification target: GRWTSK.Topology.GeneralTopology.OpenQuotient.Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8958de7bf95ae121a51622e922c2ac1216728348",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8958de7bf95ae121a51622e922c2ac1216728348`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Maps.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [id](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/declarations/id--5c3ae053d1c638a96ad7da7f.md) | 31 | `result-track:5c3ae053d1c638a96ad7da7f40f5962a4b811972999e9150a2f1bcaf62d100cb` |
| 2 | `theorem` | [isQuotientMap](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/declarations/isquotientmap--a961f48d79e05a4a644c5259.md) | 34 | `result-track:a961f48d79e05a4a644c52590bbb2d438a42ae9af5af945f91759b1812ba97f3` |
| 3 | `theorem` | [iff_isOpenMap_isQuotientMap](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/declarations/iff-isopenmap-isquotientmap--f7ad5ef41e13225151b6c363.md) | 40 | `result-track:f7ad5ef41e13225151b6c3633f912ef9d29dcb19b916d794cd2c51582b625f3f` |
| 4 | `theorem` | [of_isOpenMap_isQuotientMap](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/declarations/of-isopenmap-isquotientmap--fc078ff0c291b8e6fcacb3e8.md) | 46 | `result-track:fc078ff0c291b8e6fcacb3e81cfcdcc7f77f4f916ac13e62162afea4ce93796e` |
| 5 | `theorem` | [comp](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/declarations/comp--2375ca9bff1ab101a9e1ad20.md) | 53 | `result-track:2375ca9bff1ab101a9e1ad208f4d25c2fc9cdcddeb392ab6f22d1844ad106b9f` |
| 6 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/declarations/map-nhds-eq--5034a064879323b268ce029d.md) | 57 | `result-track:5034a064879323b268ce029d74252cac0227e3ecd4a6226d11131f603f44b90d` |
| 7 | `theorem` | [continuous_comp_iff](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/declarations/continuous-comp-iff--dea66df7f978d4864eba2f7c.md) | 60 | `result-track:dea66df7f978d4864eba2f7c1ddd241f731631e69fea163cbd41d44e957a8f9e` |
| 8 | `theorem` | [continuousAt_comp_iff](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/declarations/continuousat-comp-iff--67a93cbee43f4876f96b25ec.md) | 64 | `result-track:67a93cbee43f4876f96b25ec10334744d5297648c2f0796439368af68c92940e` |
| 9 | `theorem` | [dense_preimage_iff](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/declarations/dense-preimage-iff--a077ec85fd73634651389b96.md) | 68 | `result-track:a077ec85fd73634651389b967a5e74cecececa5b454df0d193e32e2cc1d54b82` |
| 10 | `lemma` | [coinduced_eq_induced_of_isOpenQuotientMap_of_isInducing](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/declarations/coinduced-eq-induced-of-isopenquotientmap-of-isinducing--e62c0ecd475f653ddb82674c.md) | 97 | `result-track:e62c0ecd475f653ddb82674c3a8f716605ba872d202e34a29c775045031e5754` |
| 11 | `lemma` | [isEmbedding_of_isOpenQuotientMap_of_isInducing](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/declarations/isembedding-of-isopenquotientmap-of-isinducing--7069039e1e287764940dcf20.md) | 124 | `result-track:7069039e1e287764940dcf20cb7f8a525cdb80fd49df27031cca4555c76241b9` |
| 12 | `lemma` | [isQuotientMap_of_isOpenQuotientMap_of_isInducing](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/declarations/isquotientmap-of-isopenquotientmap-of-isinducing--ef71e2de107fffb2bc23d42f.md) | 133 | `result-track:ef71e2de107fffb2bc23d42f5786f471cfffcfdf59fd68ba6bd838846ecc3ba6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
