# Verification target: GRWTSK.Topology.GeneralTopology.Curry.Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "695c0f0c0027fec45f1f23d25a903077135da250",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `695c0f0c0027fec45f1f23d25a903077135da250`.

Source path: `GRWTSK/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eventually_curry_iff](../../../../../mathematics/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean/declarations/eventually-curry-iff--bdb4a07a78a85188ca713531.md) | 60 | `result-track:bdb4a07a78a85188ca7135317c53bf1e42baad51c35dc82ceb3a094357ccf874` |
| 2 | `theorem` | [frequently_curry_iff](../../../../../mathematics/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean/declarations/frequently-curry-iff--067bf2afb64ac34e0b7e95dd.md) | 64 | `result-track:067bf2afb64ac34e0b7e95dd46867515a753d6465625ad156b7a1d832d631edf` |
| 3 | `theorem` | [mem_curry_iff](../../../../../mathematics/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean/declarations/mem-curry-iff--f5dc572bdf1e240d0ab57a92.md) | 68 | `result-track:f5dc572bdf1e240d0ab57a924bae1e71c13968e606cd337f0563fc2c653f8783` |
| 4 | `theorem` | [curry_le_prod](../../../../../mathematics/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean/declarations/curry-le-prod--471a565cc15fc5b21a2e3902.md) | 71 | `result-track:471a565cc15fc5b21a2e3902b5e187fdbee468fbd0d6d33aefc8254ff997ca5a` |
| 5 | `theorem` | [Tendsto.curry](../../../../../mathematics/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean/declarations/tendsto-curry--fd1acf3b47e19a45701704e9.md) | 73 | `result-track:fd1acf3b47e19a45701704e92eeafb3526efebe7570a7925b8f37df1c982f957` |
| 6 | `theorem` | [frequently_curry_prod_iff](../../../../../mathematics/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean/declarations/frequently-curry-prod-iff--8878d17a4346230ba74fff26.md) | 77 | `result-track:8878d17a4346230ba74fff2606a0d799090a7b330aee870d3a5e624b1328d2ed` |
| 7 | `theorem` | [eventually_curry_prod_iff](../../../../../mathematics/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean/declarations/eventually-curry-prod-iff--6b131dd9488dedd1f2b84ff1.md) | 81 | `result-track:6b131dd9488dedd1f2b84ff1ca029bd4aab44fdcba1852f1bfd1fb1c6902b414` |
| 8 | `theorem` | [prod_mem_curry](../../../../../mathematics/Topology/GeneralTopology/Curry/Variant9a72c9b2bc7dc273a4b0a2e639031000b6b5304ccdb3a151d4b8d1bfb0457827.lean/declarations/prod-mem-curry--76100ef32dd007151f0c0578.md) | 85 | `result-track:76100ef32dd007151f0c057800dd32c36624081abfd4335058735bd95187acc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
