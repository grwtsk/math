# Verification target: GRWTSK.Algebra.LinearAlgebra.Finsupp.Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7faf232aec5aff97cf97cc7b28b4b977b90dcaf9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7faf232aec5aff97cf97cc7b28b4b977b90dcaf9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finsupp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeAbelianGroup` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeAbelianGroup.toFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/freeabeliangroup-tofinsupp--49c17d419220c5e9f87a9c0f.md) | 38 | `declaration-track:49c17d419220c5e9f87a9c0ff3f1a9dc7ca40f4af235ac241e26009dce98c413` |
| 2 | `def` | [Finsupp.toFreeAbelianGroup](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/finsupp-tofreeabeliangroup--5a03f93e668d94b9a32ca704.md) | 42 | `declaration-track:5a03f93e668d94b9a32ca704935968743faa00be865b0a3a4ed27862612216c2` |
| 3 | `theorem` | [Finsupp.toFreeAbelianGroup_comp_singleAddHom](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/finsupp-tofreeabeliangroup-comp-singleaddhom--335a9fb7dda73ad0fb07a310.md) | 48 | `result-track:335a9fb7dda73ad0fb07a310ff1184cd2bb0361615796f18264c67eea4b2ac10` |
| 4 | `theorem` | [FreeAbelianGroup.toFinsupp_comp_toFreeAbelianGroup](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/freeabeliangroup-tofinsupp-comp-tofreeabeliangroup--6e058aa81402bf2f82f8a73d.md) | 56 | `result-track:6e058aa81402bf2f82f8a73d6c98444c2e951cb554493e38c9cf094f7d187867` |
| 5 | `theorem` | [Finsupp.toFreeAbelianGroup_comp_toFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/finsupp-tofreeabeliangroup-comp-tofinsupp--5511288cb01e4d915046dc9c.md) | 64 | `result-track:5511288cb01e4d915046dc9ca98269533b31dbf183f9d6030a3c6f55bc57c691` |
| 6 | `theorem` | [Finsupp.toFreeAbelianGroup_toFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/finsupp-tofreeabeliangroup-tofinsupp--5fde93157007955ed183f71c.md) | 72 | `result-track:5fde93157007955ed183f71c8f0f817da263a4d64182091704e35d628cbb31c7` |
| 7 | `theorem` | [toFinsupp_of](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/tofinsupp-of--5e41424894e5223e7efec80c.md) | 81 | `result-track:5e41424894e5223e7efec80c8f5c97f64bf770dba29734341dc7138e391b6cea` |
| 8 | `theorem` | [toFinsupp_toFreeAbelianGroup](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/tofinsupp-tofreeabeliangroup--60743cc90f86319148b3135f.md) | 85 | `result-track:60743cc90f86319148b3135fc63a1a922594024482ca4fc1003578438b5d3e08` |
| 9 | `def` | [equivFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/equivfinsupp--b2e5fa495cf9b3a33fbd281b.md) | 93 | `declaration-track:b2e5fa495cf9b3a33fbd281b23ead9d6d59aa0c74239a0c6fd64ab8b58cc2418` |
| 10 | `def` | [coeff](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/coeff--e7055b9660d3f23e6b8c12ed.md) | 104 | `declaration-track:e7055b9660d3f23e6b8c12ed94bba0f7cf520e4a40816d11072b477a06d03cbf` |
| 11 | `def` | [support](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/support--5f6e369a4b01d746dfc01e20.md) | 109 | `declaration-track:5f6e369a4b01d746dfc01e20270783fedd15fd62cb58be51337c34ca3f5fa3f8` |
| 12 | `theorem` | [mem_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/mem-support-iff--37996ddf2366f5ccd51ba75e.md) | 112 | `result-track:37996ddf2366f5ccd51ba75ead5730fed19c647a6d38d51457bc770d106bebfb` |
| 13 | `theorem` | [notMem_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/notmem-support-iff--0f53e3d903ddbf81d2b5f209.md) | 116 | `result-track:0f53e3d903ddbf81d2b5f20973798883171a96fa33a7b8f450fc7ec1f0c84bd2` |
| 14 | `theorem` | [support_zero](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/support-zero--2ba262a4746501c5b44b370e.md) | 123 | `result-track:2ba262a4746501c5b44b370ea17fb6c955d7d2c78a481b8aae33fa644b8475f7` |
| 15 | `theorem` | [support_of](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/support-of--382a62d99f44400f73f8a68a.md) | 127 | `result-track:382a62d99f44400f73f8a68af51da438c9f2514952d5b68ba29ccd91026c3f7a` |
| 16 | `theorem` | [support_neg](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/support-neg--74c36b8b4ed108d3eeb71aa2.md) | 131 | `result-track:74c36b8b4ed108d3eeb71aa2f4bd98b5f8c7d158b02a03553536aba179556bfd` |
| 17 | `theorem` | [support_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/support-zsmul--e4bfd50b7a380ddefb703749.md) | 135 | `result-track:e4bfd50b7a380ddefb703749b4bf8fc3892c7dedc605b8cf985ac0dfaa195e3f` |
| 18 | `theorem` | [support_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/support-nsmul--8b3b49ac147c2dd4b3ee5c9e.md) | 142 | `result-track:8b3b49ac147c2dd4b3ee5c9ee522677933479513f4b25bda8c67a5d18e00196d` |
| 19 | `theorem` | [support_add](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant81b317b781ea6b9d19775198a51a3030cb4fff00f2eee32e6b4c7d2c2ab33c78.lean/declarations/support-add--805683fdfc5e6b8bf8822ead.md) | 148 | `result-track:805683fdfc5e6b8bf8822eadecda0c56f3946b889d629636e9f4f0cbd794c089` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
