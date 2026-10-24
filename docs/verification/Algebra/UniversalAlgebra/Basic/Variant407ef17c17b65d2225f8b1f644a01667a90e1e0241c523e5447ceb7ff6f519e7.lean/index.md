# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2598bf0b32560e86ad04b4eb746814cf3f2aa85b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2598bf0b32560e86ad04b4eb746814cf3f2aa85b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.SuccPred` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharZero.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.WithTop` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.WithTop` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ENat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/enat--0f31c3d6e90f5bf910ee206a.md) | 29 | `declaration-track:0f31c3d6e90f5bf910ee206a2b2c022395fca20eb3b8a47a809ad5019d3df058` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/instance--e06c1736cdf96c50af12b687.md) | 48 | `declaration-track:e06c1736cdf96c50af12b687e5b08a64421901697a69737610bc2bfa7fa100bb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/instance--22bbc67cd26aa73a28b56179.md) | 49 | `declaration-track:22bbc67cd26aa73a28b561792db21253efb458dea3e47f0bc761a87ad15e0d93` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/instance--b1862901c4a92c7ba9b253c5.md) | 50 | `declaration-track:b1862901c4a92c7ba9b253c56ac00ba2b4197f0797855eb71312d235024caef9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/instance--f362f6703c6226e1a769b983.md) | 51 | `declaration-track:f362f6703c6226e1a769b983f2d867ad7e0ee8ba4dc95ae8b46b4e53f8717457` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/instance--61bef599219bb5863a1cdb1c.md) | 52 | `declaration-track:61bef599219bb5863a1cdb1c23ef502be8b17d7a71d6f91928bfd9877795525f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/instance--2fb3ff821b7bfc1bfc21e85b.md) | 53 | `declaration-track:2fb3ff821b7bfc1bfc21e85bfdd411c757cabca0f6e29f6aec7b977532b3116d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/instance--480af1168f44374d73101041.md) | 54 | `declaration-track:480af1168f44374d73101041f99c3e25de580839081d636f8b9f860b296b04be` |
| 9 | `theorem` | [some_eq_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/some-eq-coe--e5c11435b215e5619fb37f04.md) | 60 | `result-track:e5c11435b215e5619fb37f0481e484c8959ff79b0e8af283a1397b3445852b50` |
| 10 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/coe-zero--730d998c1384bc49efb13665.md) | 64 | `result-track:730d998c1384bc49efb136652c568b93738e3f3b4c5e63ce319f0e5836a98cdb` |
| 11 | `theorem` | [coe_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/coe-one--cf68f036b286a04a4f479e37.md) | 70 | `result-track:cf68f036b286a04a4f479e37bff3edd4c9f73587bb12b1d9077ac04465bc623d` |
| 12 | `theorem` | [coe_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/coe-add--4dfd53fe646a6aa454aa46e0.md) | 76 | `result-track:4dfd53fe646a6aa454aa46e03e32f981b6b1e49781e702704a41157d1b8baa1c` |
| 13 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/coe-sub--45b1cc9a9545ab1d998046e2.md) | 81 | `result-track:45b1cc9a9545ab1d998046e288a426035b5f28b9d6e455fed19d555d0ab062e5` |
| 14 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/coe-mul--e82999c1fc080fd28c796854.md) | 87 | `result-track:e82999c1fc080fd28c796854ee4314dca11ff4f876548d389f9ed7d59031daf8` |
| 15 | `instance` | [canLift](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/canlift--e17980d62464bfe3d0675f33.md) | 91 | `declaration-track:e17980d62464bfe3d0675f33e55e52368f8c24ff722b6056248c5e8d787e9332` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/instance--6c3442b7dc78258ee28f2498.md) | 95 | `declaration-track:6c3442b7dc78258ee28f24982303c45d8ada344dcf72457d3e98a602a18dbe59` |
| 17 | `def` | [toNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/tonat--47f2d230982283536497c1c0.md) | 100 | `declaration-track:47f2d230982283536497c1c0c3dd6630d4e7ec35b0eb3299c8baec2fb21f3bc1` |
| 18 | `theorem` | [toNat_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/tonat-coe--faebf5b87fbf9e149ce92fbf.md) | 109 | `result-track:faebf5b87fbf9e149ce92fbf85b742eeece6d8f99963ceee6c47928baa3feeb5` |
| 19 | `theorem` | [toNat_top](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/tonat-top--1bd699c53b144a7ca797b35b.md) | 114 | `result-track:1bd699c53b144a7ca797b35b6654aa2d192240d63198aa5b0ba454882560b691` |
| 20 | `def` | [recTopCoe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/rectopcoe--e42f844580fd34497a3f3a0f.md) | 121 | `declaration-track:e42f844580fd34497a3f3a0f28118caa114c3efb0611ddb034855e018de9b47b` |
| 21 | `theorem` | [recTopCoe_top](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/rectopcoe-top--210876f37f20d8e2fd402cad.md) | 127 | `result-track:210876f37f20d8e2fd402cad62e4460cbcae7d4165afe7a00f877669ae82fd28` |
| 22 | `theorem` | [recTopCoe_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/rectopcoe-coe--b10ed9926d17ebf556bcb3f9.md) | 133 | `result-track:b10ed9926d17ebf556bcb3f951d21e78feb1ef1f431f1ec210ff5c50fade31d9` |
| 23 | `theorem` | [top_ne_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/top-ne-coe--e67c6e60a4ff0e4b241b0552.md) | 139 | `result-track:e67c6e60a4ff0e4b241b05522eee4beceda74c533f3857f9194af806832373a9` |
| 24 | `theorem` | [coe_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/coe-ne-top--c408a0b8a1577a3c53f9a29d.md) | 144 | `result-track:c408a0b8a1577a3c53f9a29d4414ea2680a6d34b6b05f1c82dbbf931936b356c` |
| 25 | `theorem` | [top_sub_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/top-sub-coe--7ab73bc241d09252b04fa440.md) | 149 | `result-track:7ab73bc241d09252b04fa440cc7b04c0e429f448e0ea0d9c10d23094a67ef57e` |
| 26 | `theorem` | [sub_top](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/sub-top--febab3b65c00ddf2f2f76839.md) | 153 | `result-track:febab3b65c00ddf2f2f768397aa71c12642a6e43184e7ddcef70b2bec04dd5a9` |
| 27 | `theorem` | [coe_toNat_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/coe-tonat-eq-self--1d1e4c9d4ec4619d4fc9769e.md) | 157 | `result-track:1d1e4c9d4ec4619d4fc9769ecf0accc01f9992ed10664aa70cc51e6a419e14d9` |
| 28 | `theorem` | [coe_toNat_le_self](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/coe-tonat-le-self--0f9e55b44c55dd9925efa349.md) | 164 | `result-track:0f9e55b44c55dd9925efa3497cb7d5c82d87f6a5cfa03b4571c8165159be9f2c` |
| 29 | `theorem` | [toNat_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/tonat-add--5d0dde35a651509004c97596.md) | 168 | `result-track:5d0dde35a651509004c97596a947d5c112cff93b27c5b1bae9aca36d0313a2b6` |
| 30 | `theorem` | [toNat_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/tonat-sub--fa4afda8476bff1033b577c8.md) | 174 | `result-track:fa4afda8476bff1033b577c860d78b8940d62dbcc648e212b18d6bb5475799f7` |
| 31 | `theorem` | [toNat_eq_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/tonat-eq-iff--fb8e722a211e86ef04426a32.md) | 181 | `result-track:fb8e722a211e86ef04426a3224a581005ce9bc5a889b6e49af4aaf5fcdf61bc5` |
| 32 | `theorem` | [succ_def](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/succ-def--895d8cbeb0f54f4858cc47c7.md) | 186 | `result-track:895d8cbeb0f54f4858cc47c735d92b181fe2b7464235f59b88febe2c7a357afe` |
| 33 | `theorem` | [add_one_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/add-one-le-of-lt--f98cd5946ed69d0d975c717e.md) | 189 | `result-track:f98cd5946ed69d0d975c717e2cc3b764ffcee2afee9a8c259dd4cb7e3d159fff` |
| 34 | `theorem` | [add_one_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/add-one-le-iff--a0938d7d9165e520725038e4.md) | 193 | `result-track:a0938d7d9165e520725038e40fbffeaf8e3471529f744f556891aec60363a45e` |
| 35 | `theorem` | [one_le_iff_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/one-le-iff-pos--4b83b84dc16d5f9e7919d612.md) | 197 | `result-track:4b83b84dc16d5f9e7919d6121865b974385324b20d5f6aaedf301f8bac140e66` |
| 36 | `theorem` | [one_le_iff_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/one-le-iff-ne-zero--bfb9dcfbcd150645f275f545.md) | 201 | `result-track:bfb9dcfbcd150645f275f545af305d2d48c2831b1cfc7a0d83dd29f30288e548` |
| 37 | `theorem` | [le_of_lt_add_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/le-of-lt-add-one--4e483d6fdcae5c47b0a16234.md) | 205 | `result-track:4e483d6fdcae5c47b0a16234deafbbb1df189920609284960bea7f1ab9aa7bbc` |
| 38 | `theorem` | [le_coe_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/le-coe-iff--29900c013bbf00b9a371f8d4.md) | 209 | `result-track:29900c013bbf00b9a371f8d4fa75cd6a1c0d6251d0152558d6426eba5776750c` |
| 39 | `theorem` | [nat_induction](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant407ef17c17b65d2225f8b1f644a01667a90e1e0241c523e5447ceb7ff6f519e7.lean/declarations/nat-induction--b0c54097cc160788602eeb1c.md) | 213 | `result-track:b0c54097cc160788602eeb1c0d34ee2af3856333fb3dc3941f56b42f9b9fb3b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
