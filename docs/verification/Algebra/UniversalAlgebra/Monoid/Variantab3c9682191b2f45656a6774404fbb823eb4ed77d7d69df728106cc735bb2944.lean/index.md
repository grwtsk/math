# Verification target: GRWTSK.Algebra.UniversalAlgebra.Monoid.Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f74a87958e04b587397ffe40940aafe7d9833442",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f74a87958e04b587397ffe40940aafe7d9833442`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ici_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/ici-add-bij--92ba7dbc6379749b7bcf520f.md) | 27 | `result-track:92ba7dbc6379749b7bcf520f11575c896bfa78079489502b6f0b51ab570ccc12` |
| 2 | `theorem` | [Ioi_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/ioi-add-bij--ba3fb74a297676d2f3fba4dc.md) | 34 | `result-track:ba3fb74a297676d2f3fba4dcb11f6a532561bcc94aef8704ed40608f98eea772` |
| 3 | `theorem` | [Icc_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/icc-add-bij--0f2e90468ffc4ac74db50e31.md) | 42 | `result-track:0f2e90468ffc4ac74db50e3171e7382c9f0b94ac6cfc07fc065c8dd87c5408b8` |
| 4 | `theorem` | [Ioo_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/ioo-add-bij--4485aa6dc3c24e9b99d93403.md) | 48 | `result-track:4485aa6dc3c24e9b99d93403b8af5e2dc785926b7cb7ae7620d3b8136ce673fb` |
| 5 | `theorem` | [Ioc_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/ioc-add-bij--837adb7e2a3c085b44b00b7a.md) | 54 | `result-track:837adb7e2a3c085b44b00b7a7c3f5b848a7b8939dc896e2bbcab9bfe95e06f44` |
| 6 | `theorem` | [Ico_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/ico-add-bij--fa70b6d8cb773abf25a6f2b1.md) | 60 | `result-track:fa70b6d8cb773abf25a6f2b18b3a85fc100584c94b2886f7c12442edde09d1c5` |
| 7 | `theorem` | [image_add_const_Ici](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/image-add-const-ici--e006a1661505813f08351345.md) | 72 | `result-track:e006a1661505813f083513450b3e55f5edab433e0ee51caae129c5dedb946ae1` |
| 8 | `theorem` | [image_add_const_Ioi](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/image-add-const-ioi--769d2d5a44988f2af3299ace.md) | 76 | `result-track:769d2d5a44988f2af3299aceba8ba97ebd38db5a7e5736afc6588d543aa3371c` |
| 9 | `theorem` | [image_add_const_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/image-add-const-icc--6748e18293f9920071eeddba.md) | 80 | `result-track:6748e18293f9920071eeddba13ee8855f90069291b0507c500e3960b55ccc5d3` |
| 10 | `theorem` | [image_add_const_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/image-add-const-ico--caeee2de15ce7aaf55da8ff0.md) | 84 | `result-track:caeee2de15ce7aaf55da8ff06a94f7bbe5c10619dfe8c376674c90b3b57ded1c` |
| 11 | `theorem` | [image_add_const_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/image-add-const-ioc--995d5a27f0031c7025bbe2ef.md) | 88 | `result-track:995d5a27f0031c7025bbe2ef14fd86a369a330ba1f94629038345c6b50ba52c9` |
| 12 | `theorem` | [image_add_const_Ioo](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/image-add-const-ioo--c27459263e4c50f1ed2bd31f.md) | 92 | `result-track:c27459263e4c50f1ed2bd31f30bb179407cb305a63c4b19f072b30b328f70834` |
| 13 | `theorem` | [image_const_add_Ici](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/image-const-add-ici--b82a65c0864d8ece1ae597cb.md) | 101 | `result-track:b82a65c0864d8ece1ae597cb56d10542673a55694fd7b857e8999d213c97b18f` |
| 14 | `theorem` | [image_const_add_Ioi](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/image-const-add-ioi--7b11b695cc208d4471a9bb87.md) | 105 | `result-track:7b11b695cc208d4471a9bb879285210204e901f9581d804eb688c63052f2d849` |
| 15 | `theorem` | [image_const_add_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/image-const-add-icc--b6b068a1c672004333583aaa.md) | 109 | `result-track:b6b068a1c672004333583aaa6333e452cf2194851e72cd6a24edaec4b2b08662` |
| 16 | `theorem` | [image_const_add_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/image-const-add-ico--d841ac3319b697dd81bda71b.md) | 113 | `result-track:d841ac3319b697dd81bda71bf1d31d6640755c20f792585c296b29d04e2d5d19` |
| 17 | `theorem` | [image_const_add_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/image-const-add-ioc--b95a04bb09c216d1b9512c8b.md) | 117 | `result-track:b95a04bb09c216d1b9512c8b30d94c8d2f1c8c665015872d2d6bf5d1d423c96e` |
| 18 | `theorem` | [image_const_add_Ioo](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantab3c9682191b2f45656a6774404fbb823eb4ed77d7d69df728106cc735bb2944.lean/declarations/image-const-add-ioo--a9b45418125cca5eabf7305b.md) | 121 | `result-track:a9b45418125cca5eabf7305bdb04e370a54a367677e550f27e0b6fcee442636d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
