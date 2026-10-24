# Verification target: GRWTSK.Algebra.GroupTheory.Even.Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff9861c1bb9783439653f1083a8ee97df73feb95",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff9861c1bb9783439653f1083a8ee97df73feb95`.

Source path: `GRWTSK/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Even` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Sqrt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [even_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/even-iff--2c61871f85d85b08862cb7f6.md) | 30 | `result-track:2c61871f85d85b08862cb7f634a55ee00070450c0f65326912f41dc962a674aa` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/instance--e226de6fe269c8253f6394c2.md) | 34 | `declaration-track:e226de6fe269c8253f6394c2410020e729eb80449ec0e7a8b55aec20afd53401` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/instance--920be033fc63246685230170.md) | 37 | `declaration-track:920be033fc6324668523017040ddd00763a5abdcd5ebb416e586aa951da423d9` |
| 4 | `lemma` | [not_even_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/not-even-iff--bf91163975855dd8acaf37e1.md) | 41 | `result-track:bf91163975855dd8acaf37e175564380fc18a72c21c8c6938e94979004ed2582` |
| 5 | `lemma` | [two_dvd_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/two-dvd-ne-zero--d1cb35cd777246ce80425209.md) | 43 | `result-track:d1cb35cd777246ce80425209d7cbe442f8035d563957e8c83fb0ca007ce6b7dd` |
| 6 | `lemma` | [not_even_one](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/not-even-one--5a9a2469352ff28fe00225d9.md) | 46 | `result-track:5a9a2469352ff28fe00225d9e3133f34180fcb077142910d063040d0e8787f98` |
| 7 | `lemma` | [even_add](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/even-add--757444dfe6202279adbeaffb.md) | 48 | `result-track:757444dfe6202279adbeaffb83a862e1b7dc55e6cb936361172197f4edc33c6c` |
| 8 | `lemma` | [even_add_one](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/even-add-one--9a70dfd401066c86f8b0dbe5.md) | 52 | `result-track:9a70dfd401066c86f8b0dbe5591ceaf8caf4f68d9e93319d06d0f6ffbf7865d7` |
| 9 | `lemma` | [succ_mod_two_eq_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/succ-mod-two-eq-zero-iff--c292a1eadaba12515483fe12.md) | 54 | `result-track:c292a1eadaba12515483fe12518b2740aa06e0fc1996668dc386ad5129903d8a` |
| 10 | `lemma` | [succ_mod_two_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/succ-mod-two-eq-one-iff--8cfe3c3f97fe31e3fbdd6a75.md) | 57 | `result-track:8cfe3c3f97fe31e3fbdd6a75ceadbcdb9ee46bcaa48f7b0f93a7e940287c3df5` |
| 11 | `lemma` | [two_not_dvd_two_mul_add_one](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/two-not-dvd-two-mul-add-one--926abb38845526b1d3f1d21c.md) | 60 | `result-track:926abb38845526b1d3f1d21c2bc509757ffabc151d417a2f05924f2da3f73569` |
| 12 | `lemma` | [two_not_dvd_two_mul_sub_one](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/two-not-dvd-two-mul-sub-one--93ac21f2d988cab69722c32e.md) | 62 | `result-track:93ac21f2d988cab69722c32ef1bbea6bfd9c6360f5fbdf6c047e419f5ba6e590` |
| 13 | `lemma` | [even_sub](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/even-sub--367460dd23c16d37ebc57ce9.md) | 65 | `result-track:367460dd23c16d37ebc57ce92490d29751c94eef2935fe2f8e75e83616b19a67` |
| 14 | `lemma` | [even_mul](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/even-mul--503f8a7ef877970dc90dbafb.md) | 69 | `result-track:503f8a7ef877970dc90dbafb91b60e7c1e72f51f359b36f1876c1cf5b243ecad` |
| 15 | `lemma` | [even_pow](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/even-pow--99dd022cc493fd71a27eeb9c.md) | 75 | `result-track:99dd022cc493fd71a27eeb9cdf2faba1aea8756a00cb54726a7bc9e43fcdec6c` |
| 16 | `lemma` | [even_pow'](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/even-pow--7cda8727a51a81dcf5236df0.md) | 78 | `result-track:7cda8727a51a81dcf5236df0580e23136cf4c4951d07d4860cfe54c71f6510f7` |
| 17 | `lemma` | [even_mul_succ_self](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/even-mul-succ-self--95feac6addebae1d64055473.md) | 80 | `result-track:95feac6addebae1d6405547351a428b96a75a5af0f56a3dae88d040f54d2394b` |
| 18 | `lemma` | [even_mul_pred_self](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/even-mul-pred-self--bf081d7fc20ea7ef16856ec5.md) | 82 | `result-track:bf081d7fc20ea7ef16856ec569fb86d8c31f9dd799e5c6328e92733c949762ef` |
| 19 | `lemma` | [two_mul_div_two_of_even](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/two-mul-div-two-of-even--2f50f1beabe2271a95883dad.md) | 86 | `result-track:2f50f1beabe2271a95883daddb643042330d0c56cf5a41d34bd3a53a6bc0e0bf` |
| 20 | `lemma` | [div_two_mul_two_of_even](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/div-two-mul-two-of-even--6bc5687d969456d0611178af.md) | 89 | `result-track:6bc5687d969456d0611178af8b917b5617dfdebf7af865413c5a7873d37f911c` |
| 21 | `theorem` | [one_lt_of_ne_zero_of_even](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/one-lt-of-ne-zero-of-even--55674aea34a07141390df916.md) | 92 | `result-track:55674aea34a07141390df916558a1a3a0a815b3ab42f47de17599f33a9e5e293` |
| 22 | `theorem` | [add_one_lt_of_even](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/add-one-lt-of-even--8b1dcd29d316db51bce9a35c.md) | 98 | `result-track:8b1dcd29d316db51bce9a35c52af412a32ee26a554c02bf99271979acb7edea3` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/example--9b5a9bd28a8a4692ca83db19.md) | 105 | `declaration-track:9b5a9bd28a8a4692ca83db19ea54ac23b19afe6c08d628e7cb4ce8b37f0099bd` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0681082afbf38c86f238dc595d492714ee5ccc2fb2ae16c6e3da2b0e50145db5.lean/declarations/example--22c771873807fae0d69bba49.md) | 107 | `declaration-track:22c771873807fae0d69bba49e620f1a167433b930f1001fc5f2b8322e1fa8725` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
