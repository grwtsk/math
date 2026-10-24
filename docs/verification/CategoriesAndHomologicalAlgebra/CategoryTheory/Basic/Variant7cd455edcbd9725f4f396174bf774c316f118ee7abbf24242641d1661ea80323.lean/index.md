# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5c9ee065547606baa92aa5826e9daa8a55403f8",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5c9ee065547606baa92aa5826e9daa8a55403f8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Univariate.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MvPFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/mvpfunctor--8d38426a155d21dc20389df7.md) | 26 | `declaration-track:8d38426a155d21dc20389df726ad9c48746e3cb841be8ce5b1848b8e26cae8ca` |
| 2 | `def` | [Obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/obj--7ff550f4d1ae2b35f3690333.md) | 40 | `declaration-track:7ff550f4d1ae2b35f3690333456f3d53edde4ae15f82eea79aeb2d850004afbf` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/instance--5ba6c3ff3f938d27b183c144.md) | 43 | `declaration-track:5ba6c3ff3f938d27b183c144a43cd49c7e4ce5be2291d359eec1a67bd684eb53` |
| 4 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/map--9ed62ebf1111abfed67720c1.md) | 47 | `declaration-track:9ed62ebf1111abfed67720c1b59284c70ccb4b4e453793a8a63ac22d8946c978` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/instance--f9c156fdcea0a6b3a88a6c5f.md) | 49 | `declaration-track:f9c156fdcea0a6b3a88a6c5f9f0f796853baa8bf0055827ea500875de466e7a5` |
| 6 | `instance` | [Obj.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/obj-inhabited--7828288aeae504d21377f04d.md) | 52 | `declaration-track:7828288aeae504d21377f04da59fa77da73aba2d6562e7837a97dbae974a6ca2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/instance--59a230d6417f468e96fe82bc.md) | 56 | `declaration-track:59a230d6417f468e96fe82bcc7e2625599cd09ac379feabdb7322a885b699ac0` |
| 8 | `theorem` | [map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/map-eq--e81a02ddf3f3616b8fcd5d0c.md) | 59 | `result-track:e81a02ddf3f3616b8fcd5d0c477731dd17d6a7ba2c6cf8639d15f6a4c78190df` |
| 9 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/id-map--858fb02c311827c0315de0d3.md) | 63 | `result-track:858fb02c311827c0315de0d31ab3c83057b4ef77cc9d22959cff6d281d2b5ed3` |
| 10 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/comp-map--3a711b2a7980d8e5be68e9a5.md) | 66 | `result-track:3a711b2a7980d8e5be68e9a5e398313b0cf2c4c9feb84f1fcc15bafaad6ff605` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/instance--54a143e15aa60bba8006d4bd.md) | 70 | `declaration-track:54a143e15aa60bba8006d4bdf59e5536042bdaf0b89660097405d28ca59cfdab` |
| 12 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/const--ad53390642bf7a5e9f917143.md) | 75 | `declaration-track:ad53390642bf7a5e9f917143b4671ef1c8f616e50e9b57aadc0ac5dcaead4b98` |
| 13 | `def` | [const.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/const-mk--4fec22a2e7764ea6aef03e83.md) | 84 | `declaration-track:4fec22a2e7764ea6aef03e8390ac9899e2e84c58a29719a555809bc8b6f9e2d8` |
| 14 | `def` | [const.get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/const-get--6adcd31e863c3bc7e87efa75.md) | 90 | `declaration-track:6adcd31e863c3bc7e87efa7503ecc5a77eb26fb9479a7653c21f4cb6e6e12379` |
| 15 | `theorem` | [const.get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/const-get-map--c152d809568e67b2dd1c12e4.md) | 94 | `result-track:c152d809568e67b2dd1c12e4576eae0bdeae706f9b91339487c82535b091d95b` |
| 16 | `theorem` | [const.get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/const-get-mk--e09cea729288b6e674910be2.md) | 99 | `result-track:e09cea729288b6e674910be2fb89d7880a91f890d389abaae7fa97bfce86c248` |
| 17 | `theorem` | [const.mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/const-mk-get--ae815d238500297deec2c77c.md) | 102 | `result-track:ae815d238500297deec2c77c4f2af6e4482ad091c622326d614fc77f62661956` |
| 18 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/comp--7abf9b03a7bf5531557e0f93.md) | 110 | `declaration-track:7abf9b03a7bf5531557e0f9350238e9b5a05d267ae4d4015c26aacc31e01ba32` |
| 19 | `def` | [comp.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/comp-mk--6d6f6da876cdcceb6da67f95.md) | 117 | `declaration-track:6d6f6da876cdcceb6da67f95fd7d8f524a21e1295e9e60d239c5764d1bb77fdd` |
| 20 | `def` | [comp.get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/comp-get--619dd66d53648d04485a0da4.md) | 121 | `declaration-track:619dd66d53648d04485a0da42ea0713ac589ca84493e76fe3e523ef499f2e720` |
| 21 | `theorem` | [comp.get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/comp-get-map--d499d5a358446083d4da6f99.md) | 124 | `result-track:d499d5a358446083d4da6f99860db56c1f2cfda83f799913438c2260a6b72440` |
| 22 | `theorem` | [comp.get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/comp-get-mk--7a8dc7467118b00b45be8e83.md) | 129 | `result-track:7a8dc7467118b00b45be8e8341123378971737d7a3b2284bb1bfa514205dc393` |
| 23 | `theorem` | [comp.mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/comp-mk-get--9c0464965736882d53c9d88f.md) | 133 | `result-track:9c0464965736882d53c9d88f78d30219fe5f0edf48fb7b5889b9513b45517a49` |
| 24 | `theorem` | [liftP_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/liftp-iff--0b6fe1f507e5e60b41a10629.md) | 139 | `result-track:0b6fe1f507e5e60b41a106295a929252d8f5c218e21949750ac3cdf43bc73816` |
| 25 | `theorem` | [liftP_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/liftp-iff--5f9b22055e213c05e35cce0f.md) | 151 | `result-track:5f9b22055e213c05e35cce0f2ca340199cf4f7b34697b920b630c8f36d569040` |
| 26 | `theorem` | [liftR_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/liftr-iff--ccf620528bc03e3667cc37f8.md) | 159 | `result-track:ccf620528bc03e3667cc37f8e7de8a43475183e6ceb1c46d1349db84205a7e4a` |
| 27 | `theorem` | [supp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/supp-eq--04135b0644d6079017b20136.md) | 182 | `result-track:04135b0644d6079017b20136dc7549fc9db281eff7c43f5a6b3345d0ea7e97e1` |
| 28 | `def` | [drop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/drop--0368eb8c93ed22492090cdf3.md) | 208 | `declaration-track:0368eb8c93ed22492090cdf32ccc68af09cd119e0424113ed2b2d9c8b94ee9a3` |
| 29 | `def` | [last](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/last--c2c3b6abe4ad919b8ade4d84.md) | 214 | `declaration-track:c2c3b6abe4ad919b8ade4d841e25fcae9ac945f4a471a90b000913fa5c78a441` |
| 30 | `abbrev` | [appendContents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7cd455edcbd9725f4f396174bf774c316f118ee7abbf24242641d1661ea80323.lean/declarations/appendcontents--640d5c32b4d5d0e3449770d2.md) | 219 | `declaration-track:640d5c32b4d5d0e3449770d27dd43a341d72aae560a6a68e1d1d41a86b0082d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
