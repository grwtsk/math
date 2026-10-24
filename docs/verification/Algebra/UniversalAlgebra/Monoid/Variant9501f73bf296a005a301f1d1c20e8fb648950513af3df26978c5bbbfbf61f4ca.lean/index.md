# Verification target: GRWTSK.Algebra.UniversalAlgebra.Monoid.Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d16f33edfc7696357647730067f327e0ffedecf3",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d16f33edfc7696357647730067f327e0ffedecf3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Intervals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Cancel.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ici_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/ici-add-bij--6f3adb9243248a981d896bc3.md) | 28 | `result-track:6f3adb9243248a981d896bc331a4009dd482f21a8973302b6cd0484146fd25b4` |
| 2 | `theorem` | [Ioi_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/ioi-add-bij--2c71eb57144cca9a20397bab.md) | 36 | `result-track:2c71eb57144cca9a20397bab290c98e01808d0672317333ed1839cbbb6ef5e82` |
| 3 | `theorem` | [Icc_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/icc-add-bij--7c60821257d2279fd27cea47.md) | 45 | `result-track:7c60821257d2279fd27cea47c71a3fa1be886d09f88e5cc86c68b656ddbd1626` |
| 4 | `theorem` | [Ioo_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/ioo-add-bij--8677d119553a4c6a0ffc265e.md) | 52 | `result-track:8677d119553a4c6a0ffc265ecbf95417da0e32ce02445990efd76ea6eaf079fd` |
| 5 | `theorem` | [Ioc_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/ioc-add-bij--599bc17f8a431ca896330adb.md) | 59 | `result-track:599bc17f8a431ca896330adbe63244e0524062240b4236c2ece85138816e4881` |
| 6 | `theorem` | [Ico_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/ico-add-bij--9cdd0ee3deaabefeead908cc.md) | 66 | `result-track:9cdd0ee3deaabefeead908cc172a93cd720d42fa86535bd039ad77d1bd518189` |
| 7 | `theorem` | [image_add_const_Ici](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/image-add-const-ici--f299d0496b8d408c7d894f7f.md) | 79 | `result-track:f299d0496b8d408c7d894f7fc0bfe758732d3a325260ea2d471bc3db836cec25` |
| 8 | `theorem` | [image_add_const_Ioi](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/image-add-const-ioi--21eed62ae94b71c6b2528dde.md) | 84 | `result-track:21eed62ae94b71c6b2528ddee126be540cf3a088e8a8c9c12e6796f1d6825150` |
| 9 | `theorem` | [image_add_const_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/image-add-const-icc--f91a10edc4c79cafd79f4bb2.md) | 89 | `result-track:f91a10edc4c79cafd79f4bb25967ddad1e4b15e144fe5a6b2d61db9f7cc1ce91` |
| 10 | `theorem` | [image_add_const_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/image-add-const-ico--dbd8d2544deb9a36aa55c75c.md) | 94 | `result-track:dbd8d2544deb9a36aa55c75c96bf32ec54d77ece874c582eb1deb72bea3940b4` |
| 11 | `theorem` | [image_add_const_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/image-add-const-ioc--ecdc583c993a8366756f7e1c.md) | 99 | `result-track:ecdc583c993a8366756f7e1c2987be6bd10bc9e772cfb45041c2c6e2ca37be0f` |
| 12 | `theorem` | [image_add_const_Ioo](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/image-add-const-ioo--90204b6ec02d2deaab5a734f.md) | 104 | `result-track:90204b6ec02d2deaab5a734f019af0f40c11e4f23b473ccb060597cad01db667` |
| 13 | `theorem` | [image_const_add_Ici](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/image-const-add-ici--5c8d425b84f5bdfb320c5357.md) | 114 | `result-track:5c8d425b84f5bdfb320c53579ffa6577ab552ecc35a6491115b5c5d79844c793` |
| 14 | `theorem` | [image_const_add_Ioi](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/image-const-add-ioi--2b3e3532d2c9b7c69a8cce61.md) | 119 | `result-track:2b3e3532d2c9b7c69a8cce618ddccaae8cdebc19c987bc8801b5a5817d33c0e9` |
| 15 | `theorem` | [image_const_add_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/image-const-add-icc--d57c4fc05242e1f73bbc50d4.md) | 124 | `result-track:d57c4fc05242e1f73bbc50d4e8ebc419a42f0e4b72db58c2da21823df76656a2` |
| 16 | `theorem` | [image_const_add_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/image-const-add-ico--98ab3937fd70cbb9997f2cb5.md) | 129 | `result-track:98ab3937fd70cbb9997f2cb5f9db2e70c42352bbc440a9d7cb2d1fc51da6a7af` |
| 17 | `theorem` | [image_const_add_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/image-const-add-ioc--3822cd2aaf4a4e5034fa3344.md) | 134 | `result-track:3822cd2aaf4a4e5034fa33446f738addf6036e1654589ada282950354f01ea3c` |
| 18 | `theorem` | [image_const_add_Ioo](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variant9501f73bf296a005a301f1d1c20e8fb648950513af3df26978c5bbbfbf61f4ca.lean/declarations/image-const-add-ioo--bac103944834d11829389e86.md) | 139 | `result-track:bac103944834d11829389e868cd0220e497d0eaaf38eb72bcda46e3177d4c6df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
