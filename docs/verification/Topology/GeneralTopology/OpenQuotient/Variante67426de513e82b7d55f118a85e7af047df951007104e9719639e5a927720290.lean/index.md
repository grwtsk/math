# Verification target: GRWTSK.Topology.GeneralTopology.OpenQuotient.Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "269521cb7bcc7b11fb63c8eb467290b808a3cd91",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `269521cb7bcc7b11fb63c8eb467290b808a3cd91`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Maps.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [id](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/declarations/id--ac279ed19f6202256c743ed8.md) | 39 | `result-track:ac279ed19f6202256c743ed8eb6c38ddc4c319b0a3a324e0b2341fa27f079ffd` |
| 2 | `theorem` | [isQuotientMap](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/declarations/isquotientmap--4b12906234d582ff7874c46e.md) | 42 | `result-track:4b12906234d582ff7874c46e28e5af8d7b5f052ebdff34f149d60057fc13e3a4` |
| 3 | `theorem` | [iff_isOpenMap_isQuotientMap](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/declarations/iff-isopenmap-isquotientmap--424956a40827ab41c5edb884.md) | 48 | `result-track:424956a40827ab41c5edb88415bea6b90388a07961d3c3baf21dee74bb015b98` |
| 4 | `theorem` | [of_isOpenMap_isQuotientMap](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/declarations/of-isopenmap-isquotientmap--99bd04aafd789c4a04975177.md) | 54 | `result-track:99bd04aafd789c4a04975177400b8c2d9d5602ea3e001432cc18b805084294cf` |
| 5 | `theorem` | [comp](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/declarations/comp--a2d0072cca9630adff119f7e.md) | 61 | `result-track:a2d0072cca9630adff119f7e108b21dbc51ad21031f1f0d03bd45e7a8e73241e` |
| 6 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/declarations/map-nhds-eq--e744a2295935ee624189a660.md) | 65 | `result-track:e744a2295935ee624189a6607860a5f29c162c8e7fa91f2427591acead8d36ca` |
| 7 | `theorem` | [continuous_comp_iff](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/declarations/continuous-comp-iff--f60995e1b2e63c1f1b20e7d3.md) | 68 | `result-track:f60995e1b2e63c1f1b20e7d3babdd7d905851d0ce1f3c1b9d739efd3e9f3fccf` |
| 8 | `theorem` | [continuousAt_comp_iff](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/declarations/continuousat-comp-iff--dcf5bb760b73fa2a5bb3e940.md) | 72 | `result-track:dcf5bb760b73fa2a5bb3e940a4045fb8e9f80033e103d13ba6e3d8daa1bde25f` |
| 9 | `theorem` | [dense_preimage_iff](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/declarations/dense-preimage-iff--1693cf74ba2279b90ce7f7e9.md) | 76 | `result-track:1693cf74ba2279b90ce7f7e96cae089a7e878413100be9dfe4c1c8200f349131` |
| 10 | `lemma` | [coinduced_eq_induced_of_isOpenQuotientMap_of_isInducing](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/declarations/coinduced-eq-induced-of-isopenquotientmap-of-isinducing--89dcae93ac023c2ecf28ea7f.md) | 105 | `result-track:89dcae93ac023c2ecf28ea7f385d3a13e8135b82bbdd9ee68af6074eca3ade5b` |
| 11 | `lemma` | [isEmbedding_of_isOpenQuotientMap_of_isInducing](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/declarations/isembedding-of-isopenquotientmap-of-isinducing--d031457b5bcf8a4c783c1ab9.md) | 132 | `result-track:d031457b5bcf8a4c783c1ab97a2a556c7a489061a6d1846fbf5b2920b6983605` |
| 12 | `lemma` | [isQuotientMap_of_isOpenQuotientMap_of_isInducing](../../../../../mathematics/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/declarations/isquotientmap-of-isopenquotientmap-of-isinducing--a71faad7d63cf0c6b5e67d50.md) | 141 | `result-track:a71faad7d63cf0c6b5e67d5047095553ddd475c94dcf77025a6315ed01d94c42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
