# Verification target: GRWTSK.Algebra.UniversalAlgebra.Monoid.Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d8238cf984bd44150b953f179e11835463ff68f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d8238cf984bd44150b953f179e11835463ff68f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ici_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/ici-add-bij--9119a568d6fc42945a60fecb.md) | 35 | `result-track:9119a568d6fc42945a60fecb5b2a63fe888ff09b2bde4236c9cca4cbdeefa47c` |
| 2 | `theorem` | [Ioi_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/ioi-add-bij--ddc41cfc7c3075394c3d8c1b.md) | 42 | `result-track:ddc41cfc7c3075394c3d8c1b0f80ae91230e1762462d8dc23cfb296d970dc0c4` |
| 3 | `theorem` | [Icc_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/icc-add-bij--8c7ae6996bbc95fcdc388774.md) | 50 | `result-track:8c7ae6996bbc95fcdc388774648292985c06e0e63e3fb7564f020b46f8a313bf` |
| 4 | `theorem` | [Ioo_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/ioo-add-bij--c27364dbc7b77659d0ea2494.md) | 56 | `result-track:c27364dbc7b77659d0ea24942c824f49bf15c36553d8eecb456a946a906fb442` |
| 5 | `theorem` | [Ioc_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/ioc-add-bij--98f0e3107b588fec17baee55.md) | 62 | `result-track:98f0e3107b588fec17baee553ca696ca56f335a1908131184219cceba3763bab` |
| 6 | `theorem` | [Ico_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/ico-add-bij--54567f7cf604eba62f46b8d1.md) | 68 | `result-track:54567f7cf604eba62f46b8d1a24a63676932c81d371e464b5ae164777c9fb2de` |
| 7 | `theorem` | [image_add_const_Ici](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/image-add-const-ici--be76f8f3965c91b6a803a4c9.md) | 80 | `result-track:be76f8f3965c91b6a803a4c9a7eb019c73292c14e449d66268911ede3a03b710` |
| 8 | `theorem` | [image_add_const_Ioi](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/image-add-const-ioi--b607e7e1cdf9c80bb58c1360.md) | 84 | `result-track:b607e7e1cdf9c80bb58c136075c68a03fd6d59270396a57336d5c78a7c9d26e0` |
| 9 | `theorem` | [image_add_const_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/image-add-const-icc--9a7578fde3bb0c99d477a139.md) | 88 | `result-track:9a7578fde3bb0c99d477a1391d067352ffab0ef58401df72a3c2242b106c513f` |
| 10 | `theorem` | [image_add_const_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/image-add-const-ico--677f2cf5abaeb2cc2abb6b2b.md) | 92 | `result-track:677f2cf5abaeb2cc2abb6b2b448cec6e1abd10ce45e2a3dff479020e606fd0d3` |
| 11 | `theorem` | [image_add_const_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/image-add-const-ioc--5193c886a0c79558107025bb.md) | 96 | `result-track:5193c886a0c79558107025bb09da8eb08340a3c5bce2e2dc6dba8c9146061262` |
| 12 | `theorem` | [image_add_const_Ioo](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/image-add-const-ioo--3eecd0802fcb71eaf7b6650c.md) | 100 | `result-track:3eecd0802fcb71eaf7b6650c2260d08c3b12c502bc0ec356626be24ddda2ca3e` |
| 13 | `theorem` | [image_const_add_Ici](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/image-const-add-ici--8085990ba35c08a9c4ce51fb.md) | 109 | `result-track:8085990ba35c08a9c4ce51fb35cbb8b41509a53b9530856ad9688d1fab89e7d6` |
| 14 | `theorem` | [image_const_add_Ioi](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/image-const-add-ioi--e36081bdea9790f14c249502.md) | 113 | `result-track:e36081bdea9790f14c249502886f45e2f2518156de0c6a9d80f09e139b499b3f` |
| 15 | `theorem` | [image_const_add_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/image-const-add-icc--a0be2fbfc4da9678c02f7605.md) | 117 | `result-track:a0be2fbfc4da9678c02f7605f975332e2f40d18f8798ee1c28714fd02f521c84` |
| 16 | `theorem` | [image_const_add_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/image-const-add-ico--7ab50730a55f483ec57ee555.md) | 121 | `result-track:7ab50730a55f483ec57ee555cf102954d1822a8b33019ada50fddc3a36919445` |
| 17 | `theorem` | [image_const_add_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/image-const-add-ioc--7689c3f00ee8fb6aabc47e76.md) | 125 | `result-track:7689c3f00ee8fb6aabc47e765d6260f1b9953396fa4846b6965771a3a7f2646d` |
| 18 | `theorem` | [image_const_add_Ioo](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantf8fafd048bc3d602f221dad7939f3b8eb84a085f3d7ecca1479c9a5331b04aeb.lean/declarations/image-const-add-ioo--fec28a1d5c1a332443b0bc1c.md) | 129 | `result-track:fec28a1d5c1a332443b0bc1c8d0db9f1ddbb5f4507b3e987601529f9959f77e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
