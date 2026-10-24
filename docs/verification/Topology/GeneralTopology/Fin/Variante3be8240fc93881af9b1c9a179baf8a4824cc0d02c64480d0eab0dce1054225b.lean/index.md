# Verification target: GRWTSK.Topology.GeneralTopology.Fin.Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b2e52bf289e23cf8ca191560bf4f4ec07b9e2d6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b2e52bf289e23cf8ca191560bf4f4ec07b9e2d6`.

Source path: `GRWTSK/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_valEmbedding_univ](../../../../../mathematics/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean/declarations/map-valembedding-univ--541ebd2a46974ebf60978664.md) | 34 | `result-track:541ebd2a46974ebf6097866414037d6ee8a51458e7c97d67bfdc56f95945f7e3` |
| 2 | `theorem` | [Ioi_zero_eq_map](../../../../../mathematics/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean/declarations/ioi-zero-eq-map--63caaffc66368115a94666f3.md) | 39 | `result-track:63caaffc66368115a94666f3ae29a950b57d45a4395af633d566195afe298abe` |
| 3 | `theorem` | [Iio_last_eq_map](../../../../../mathematics/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean/declarations/iio-last-eq-map--74b4fc33c3bcadc797ec7778.md) | 43 | `result-track:74b4fc33c3bcadc797ec77784f74d4b48c2b26b32715f2fece4a19020beb7808` |
| 4 | `theorem` | [Ioi_succ](../../../../../mathematics/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean/declarations/ioi-succ--f943164b6b13be2463b241fd.md) | 46 | `result-track:f943164b6b13be2463b241fd194b48b57da2a7f0a98b267c20e2858473b40260` |
| 5 | `theorem` | [Iio_castSucc](../../../../../mathematics/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean/declarations/iio-castsucc--c652ae26197bcafb31de6cbd.md) | 48 | `result-track:c652ae26197bcafb31de6cbd43fc12e77e3f0b3ca4c2284e1a990a817b8433ad` |
| 6 | `theorem` | [card_filter_univ_succ](../../../../../mathematics/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean/declarations/card-filter-univ-succ--aa0835af206cb2d720b072c4.md) | 50 | `result-track:aa0835af206cb2d720b072c48fdd8f35e38376cc8682a8e4fb3b5eaa2a6f37b2` |
| 7 | `theorem` | [card_filter_univ_succ'](../../../../../mathematics/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean/declarations/card-filter-univ-succ--7a2baf7bc35f574ee92562de.md) | 54 | `result-track:7a2baf7bc35f574ee92562de039ef116fbbd03419f5f5dfde030fcf504774da4` |
| 8 | `theorem` | [card_filter_univ_eq_vector_get_eq_count](../../../../../mathematics/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean/declarations/card-filter-univ-eq-vector-get-eq-count--42beaf347406c9494df16b4d.md) | 58 | `result-track:42beaf347406c9494df16b4d489fae4202093c780d4df71fa81d2122098b1994` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
