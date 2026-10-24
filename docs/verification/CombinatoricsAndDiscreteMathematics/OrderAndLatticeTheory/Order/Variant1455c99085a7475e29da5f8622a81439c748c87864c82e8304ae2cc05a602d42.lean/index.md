# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f89473b4875634a937ce1317a534ff8bbe9c6a4a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f89473b4875634a937ce1317a534ff8bbe9c6a4a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Order.Lemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/le-of-lt--39d3960ba2a80ebe9df7b256.md) | 31 | `result-track:39d3960ba2a80ebe9df7b2564650c9b0cf3bee49fed2632a4bb87588ddd63659` |
| 2 | `theorem` | [lt_irrefl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/lt-irrefl--617651f87a791b6cd348474b.md) | 33 | `result-track:617651f87a791b6cd348474b826fbaa3d78f318b8df1155ada9bc81d8e13abc6` |
| 3 | `theorem` | [ne_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/ne-of-lt--51af87e7e4ad4428be82b053.md) | 37 | `result-track:51af87e7e4ad4428be82b0539d0e28bfa6652c02f67e1b32cf6c8e43db0661f1` |
| 4 | `theorem` | [ne_of_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/ne-of-gt--3cf32a0c527d506985cc919c.md) | 40 | `result-track:3cf32a0c527d506985cc919cdecfcc7bcbb827c6d7971239e30ed71296714217` |
| 5 | `theorem` | [lt_of_lt_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/lt-of-lt-of-le--ea75d9cc66b0b51c1837fe44.md) | 45 | `result-track:ea75d9cc66b0b51c1837fe44e94532c9563fe1a1cc51ded7f70b0bdb32d67bd9` |
| 6 | `theorem` | [lt_of_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/lt-of-le-of-lt--d3a25c075e0337480dbc5347.md) | 49 | `result-track:d3a25c075e0337480dbc534775018fce0417e784ce238db6fd90ce6dac3a4855` |
| 7 | `theorem` | [lt_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/lt-trans--61c2a91c0b3e449b972b84d9.md) | 53 | `result-track:61c2a91c0b3e449b972b84d97f3734fc02ec495349858831c623a9b992b89f26` |
| 8 | `theorem` | [not_ge_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/not-ge-of-lt--c68bf0754ffb272772d44269.md) | 56 | `result-track:c68bf0754ffb272772d4426955e665a6f9bc8d790d0f1e2048437e3761b9aa61` |
| 9 | `theorem` | [not_gt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/not-gt-of-lt--5ff1309e09606861542be922.md) | 59 | `result-track:5ff1309e09606861542be9225cd92e7482786107062ea6c1a0e9b8edaa2ae91c` |
| 10 | `theorem` | [le_iff_lt_or_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/le-iff-lt-or-eq--c6c96d89e829ce3ba0fee2a7.md) | 68 | `result-track:c6c96d89e829ce3ba0fee2a77cba7ab63e4fac63cc9dc614956ca1f40b84e431` |
| 11 | `theorem` | [trichotomy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/trichotomy--2c47cf5704fb888bcfb37004.md) | 84 | `result-track:2c47cf5704fb888bcfb370043f8c9171e6f64e61f736df23729a65f4406be46a` |
| 12 | `theorem` | [le_of_not_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/le-of-not-lt--1fadba0c80b7f0f253024612.md) | 97 | `result-track:1fadba0c80b7f0f2530246126ff5e33a889f944cda573913526f16f16321d6fd` |
| 13 | `theorem` | [lt_of_not_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant1455c99085a7475e29da5f8622a81439c748c87864c82e8304ae2cc05a602d42.lean/declarations/lt-of-not-le--6ca179478ecaa58962765788.md) | 102 | `result-track:6ca179478ecaa589627657883da4e417b3a096a2ac9fae8d04a583822d7efde2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
