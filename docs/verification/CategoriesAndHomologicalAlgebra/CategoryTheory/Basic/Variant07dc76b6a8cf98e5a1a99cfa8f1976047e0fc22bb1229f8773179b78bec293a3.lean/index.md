# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55c6e08dd51d20b2e282768d7343bf034f6d8bb2",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55c6e08dd51d20b2e282768d7343bf034f6d8bb2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean.json)

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
| 1 | `structure` | [MvPFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/mvpfunctor--dbbdbb15a2ff23cb7183e770.md) | 27 | `declaration-track:dbbdbb15a2ff23cb7183e770788d6f3b214a8954e857dc32a3aaa91c20736ff0` |
| 2 | `def` | [Obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/obj--4fdb1bc08710c249df05292b.md) | 41 | `declaration-track:4fdb1bc08710c249df05292b5ae8f77f424930d11132f9a14158ae621f473ad3` |
| 3 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/map--7d3f650f4755c64481a778ff.md) | 46 | `declaration-track:7d3f650f4755c64481a778ff582ad1e9e12211f5c6e8cba85e0e43adb765eed6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/instance--a92bc2f0ef71c62ae1c94114.md) | 49 | `declaration-track:a92bc2f0ef71c62ae1c941140148c5294fb5a22d77435b34fab01969d5a6cbae` |
| 5 | `instance` | [Obj.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/obj-inhabited--297d00708e89327ea6d2dc6d.md) | 52 | `declaration-track:297d00708e89327ea6d2dc6d8e237405257eb3dd74ddc9a1e4b404808c4c35eb` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/instance--d0cb4f12b7c0a2911b68fd36.md) | 57 | `declaration-track:d0cb4f12b7c0a2911b68fd36d4e4fa517f52d8d3066abe8a6b313b0973e2e9b8` |
| 7 | `theorem` | [map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/map-eq--fb1649a61ab38bfbe86b3454.md) | 60 | `result-track:fb1649a61ab38bfbe86b3454ff43ca1aa9b9694d453983e459212840423b6d3c` |
| 8 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/id-map--50bd8f99434627129f0de7f5.md) | 65 | `result-track:50bd8f99434627129f0de7f549817f2309ebce5b042255c5860b2b583ef2c242` |
| 9 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/comp-map--f269e6772c1b2236c37f1677.md) | 69 | `result-track:f269e6772c1b2236c37f167759580f15ba3e5704c987b6754a90cbb0b46218a6` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/instance--f7285f6b7980801647900ceb.md) | 74 | `declaration-track:f7285f6b7980801647900ceb340fc7a726ad54a883feb272c00ae193d409c7f1` |
| 11 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/const--9452734a9eb21bc9ce45076e.md) | 79 | `declaration-track:9452734a9eb21bc9ce45076ebf0199ce5e6a681720161ad3cfd39f9fb006f9fa` |
| 12 | `def` | [const.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/const-mk--88b611cf921afff4ad6e670c.md) | 89 | `declaration-track:88b611cf921afff4ad6e670cae31e5530209349d2252be49ffca2274286b2127` |
| 13 | `def` | [const.get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/const-get--2ad3272750be25bd5b400046.md) | 96 | `declaration-track:2ad3272750be25bd5b4000461c034ad35fbec6657bdb38d35d91533b742217b0` |
| 14 | `theorem` | [const.get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/const-get-map--0716d2d098c5a71b736f84f7.md) | 101 | `result-track:0716d2d098c5a71b736f84f7f2de253f2c75f7da6fb1e7378293dd21efe3ad3f` |
| 15 | `theorem` | [const.get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/const-get-mk--59ff9df249a7e61abb56a8a5.md) | 107 | `result-track:59ff9df249a7e61abb56a8a58157502cbc3d94eebde516f0a8022b1ce0ff507e` |
| 16 | `theorem` | [const.mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/const-mk-get--e18c07f42586620ecb033845.md) | 111 | `result-track:e18c07f42586620ecb033845d6cc591e5572ec8710750f34abe709f25dbd3846` |
| 17 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/comp--bd66db7af6c1c42c82b6b5e6.md) | 120 | `declaration-track:bd66db7af6c1c42c82b6b5e6a10a719a47d22f5993881d722b875b6e09f7dc4a` |
| 18 | `def` | [comp.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/comp-mk--f112c9d89d342cbcd399c73f.md) | 129 | `declaration-track:f112c9d89d342cbcd399c73f705864772b8d131cb314af7a14bb7bee770da4a0` |
| 19 | `def` | [comp.get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/comp-get--86d97fe158490c8c4a81d190.md) | 134 | `declaration-track:86d97fe158490c8c4a81d190c5203e774945e09689757adf39eaac708e098a54` |
| 20 | `theorem` | [comp.get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/comp-get-map--fc5c98ec847db66fda6c559c.md) | 138 | `result-track:fc5c98ec847db66fda6c559c87085ee4017959226e6038221173f1fba95c7eee` |
| 21 | `theorem` | [comp.get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/comp-get-mk--073b9416e7d25be5feb86abe.md) | 144 | `result-track:073b9416e7d25be5feb86abed933d3c7eb201d266f19ab27a690042855575971` |
| 22 | `theorem` | [comp.mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/comp-mk-get--7b5d5f22391ea9fef3a359cb.md) | 149 | `result-track:7b5d5f22391ea9fef3a359cbf5e829310b0a5397bafefc0fec6643e2eacc389e` |
| 23 | `theorem` | [liftP_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/liftp-iff--a1fbe4a14e05d21a7a522745.md) | 156 | `result-track:a1fbe4a14e05d21a7a522745eeafe0058964682457cc27a555f01ff192cb0c75` |
| 24 | `theorem` | [liftP_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/liftp-iff--8594fb8054047413d84212fe.md) | 169 | `result-track:8594fb8054047413d84212fe97d96703423b74b8defe3b07a9385ea17f588e9d` |
| 25 | `theorem` | [liftR_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/liftr-iff--bb30b2f99b8c54b760dfcf8f.md) | 178 | `result-track:bb30b2f99b8c54b760dfcf8f15890b35f9798f31ffc8c2024a2d2b64b8bd97a5` |
| 26 | `theorem` | [supp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/supp-eq--443786e453d79b0b463aa442.md) | 202 | `result-track:443786e453d79b0b463aa44257f170dfe985845ab6c2a0ef10077e33dd67a494` |
| 27 | `def` | [drop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/drop--ff16d3b314f785fda96264c3.md) | 229 | `declaration-track:ff16d3b314f785fda96264c3faed571a5ef5249968e2d2515ca111672e894db6` |
| 28 | `def` | [last](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/last--c5a83148ac5fbd9d18af3cab.md) | 236 | `declaration-track:c5a83148ac5fbd9d18af3cab6b9eb3278753ef18140878290ab3858dc0ca063d` |
| 29 | `def` | [appendContents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant07dc76b6a8cf98e5a1a99cfa8f1976047e0fc22bb1229f8773179b78bec293a3.lean/declarations/appendcontents--49c9ca3e6f50f75a6ef6545d.md) | 244 | `declaration-track:49c9ca3e6f50f75a6ef6545d2cee40eccbbb39dded631cf8f4fd2f2573e1577c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
