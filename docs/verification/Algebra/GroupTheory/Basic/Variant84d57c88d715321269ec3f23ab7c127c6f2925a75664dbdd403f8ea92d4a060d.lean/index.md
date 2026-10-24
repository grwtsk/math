# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2c8a0406a07fb87f2405802d0a67ef8b6986873",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2c8a0406a07fb87f2405802d0a67ef8b6986873`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.AddTorsor.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [singleton_vsub_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/singleton-vsub-self--0c69bc90efb5c13f1de485be.md) | 27 | `result-track:0c69bc90efb5c13f1de485bec6bc4233424d77af8f667504ff35428ab6ce69aa` |
| 2 | `theorem` | [vsub_left_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/vsub-left-cancel--b9151a29ae4a3ee07c26e5fd.md) | 34 | `result-track:b9151a29ae4a3ee07c26e5fd1c50a753f9b89c618a71b077ccc689f2da1607d7` |
| 3 | `theorem` | [vsub_left_cancel_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/vsub-left-cancel-iff--da026e68f1514e615f9a6a7d.md) | 40 | `result-track:da026e68f1514e615f9a6a7ddfa04a349e3b0831a92ccc69b86f468d8ff7b1e9` |
| 4 | `theorem` | [vsub_left_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/vsub-left-injective--33cae13ca7c67b06bf770900.md) | 44 | `result-track:33cae13ca7c67b06bf7709001633f5996861c9e55cb976c5b4e54a279830c633` |
| 5 | `theorem` | [vsub_right_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/vsub-right-cancel--cafb4cf85454c5a664096f68.md) | 49 | `result-track:cafb4cf85454c5a664096f685fcfb23dce7d7e83ffa7a88a633be8fe2d90ecee` |
| 6 | `theorem` | [vsub_right_cancel_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/vsub-right-cancel-iff--0393c6a247d0a8eeb96c5962.md) | 56 | `result-track:0393c6a247d0a8eeb96c5962c861bc32015cb52b14dc066fc124285a2d86202e` |
| 7 | `theorem` | [vsub_right_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/vsub-right-injective--eb37e4c2c395a4cc1995b60f.md) | 61 | `result-track:eb37e4c2c395a4cc1995b60f6cec01fcada8ccaafbbbf6a7ba58022d799b3929` |
| 8 | `theorem` | [vsub_sub_vsub_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/vsub-sub-vsub-cancel-left--25021c141688658de5f45391.md) | 72 | `result-track:25021c141688658de5f45391197c49f3c0b909122a99c0d84f40f4c1205a5f64` |
| 9 | `theorem` | [vadd_vsub_vadd_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/vadd-vsub-vadd-cancel-left--e9f7b41dfa83a8d20d36c894.md) | 76 | `result-track:e9f7b41dfa83a8d20d36c89455d9509c6dbb5854a16bcaa3b0a5ea1cecf52023` |
| 10 | `theorem` | [vsub_vadd_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/vsub-vadd-comm--eeb499b889a6cd36128a8d66.md) | 79 | `result-track:eeb499b889a6cd36128a8d668700dacb0efe9cd13080c7d2f61638d5d2bb6f09` |
| 11 | `theorem` | [vadd_eq_vadd_iff_sub_eq_vsub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/vadd-eq-vadd-iff-sub-eq-vsub--606fff0353da2eda4c4131ae.md) | 83 | `result-track:606fff0353da2eda4c4131ae6cdaae8a1422084a4a481b6bb1419c3da21af1cc` |
| 12 | `theorem` | [vsub_sub_vsub_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/vsub-sub-vsub-comm--9029b3d9c5e76d3ee2c87881.md) | 87 | `result-track:9029b3d9c5e76d3ee2c878817bc4d01c8d9db3d0726116786cee10dec67a2cd9` |
| 13 | `lemma` | [vadd_set_vsub_vadd_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/vadd-set-vsub-vadd-set--3b800dee7de0c33123fa598f.md) | 92 | `result-track:3b800dee7de0c33123fa598fede76a42a5b5e58651cb6efad636946f9cdcafca` |
| 14 | `instance` | [instAddTorsor](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/instaddtorsor--f29e0f10e167294dca3be7ac.md) | 103 | `declaration-track:f29e0f10e167294dca3be7ac795b9f6de354de1b18e66363276178a91c4dbc82` |
| 15 | `theorem` | [fst_vadd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/fst-vadd--2da7e4abdcef322407070bba.md) | 112 | `result-track:2da7e4abdcef322407070bbaf6079067822de236511b8cccf008d71367d06e4a` |
| 16 | `theorem` | [snd_vadd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/snd-vadd--d1a351b6f7d8c88045a0aeb8.md) | 116 | `result-track:d1a351b6f7d8c88045a0aeb8cbda1bbff387230f31fc7426a9a05660183804ac` |
| 17 | `theorem` | [mk_vadd_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/mk-vadd-mk--781d986e87a7e752300b4aef.md) | 120 | `result-track:781d986e87a7e752300b4aefbbc376ab386a38490b89709c57aab0401c99649a` |
| 18 | `theorem` | [fst_vsub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/fst-vsub--fccaa374b61dea4db00e02af.md) | 124 | `result-track:fccaa374b61dea4db00e02af870452c44aca00e392e7198cd911e565edaa17d2` |
| 19 | `theorem` | [snd_vsub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/snd-vsub--a41665dd37306cf5c4b86163.md) | 128 | `result-track:a41665dd37306cf5c4b86163f0a371364ca912bd95e9838b58bd6c03cab673e1` |
| 20 | `theorem` | [mk_vsub_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/mk-vsub-mk--bcb13dd8fc2b5b9b0d249866.md) | 132 | `result-track:bcb13dd8fc2b5b9b0d24986689351da3badcfe7b6afb5cdbf8b1527a12b6ea50` |
| 21 | `instance` | [instAddTorsor](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/instaddtorsor--37878e7230420728ccae7329.md) | 147 | `declaration-track:37878e7230420728ccae7329b4640454d522388f37bfc72781916dec1513d4a4` |
| 22 | `theorem` | [constVAdd_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/constvadd-zero--987801d76d04525e6343eac7.md) | 162 | `result-track:987801d76d04525e6343eac7c9bdc0978ac48304c46616184ae9d962276666f8` |
| 23 | `theorem` | [constVAdd_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/constvadd-add--5b8ad1e86ec05e99c8606508.md) | 168 | `result-track:5b8ad1e86ec05e99c8606508abc025447d2b6d6e5ad72db7ebe2ba5b2c6fc138` |
| 24 | `def` | [constVAddHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/constvaddhom--89691e33a178b7dbdc9ab422.md) | 172 | `declaration-track:89691e33a178b7dbdc9ab4221eb94aa728d4e4b3a72c1c204d40d853eea01f1b` |
| 25 | `theorem` | [left_vsub_pointReflection](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/left-vsub-pointreflection--fa3af8b360a1b38aaaed9082.md) | 182 | `result-track:fa3af8b360a1b38aaaed9082fcae75b1ca03bd0f0ba5aed1b5d092ef4bf60265` |
| 26 | `theorem` | [right_vsub_pointReflection](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/right-vsub-pointreflection--ca9ef09237c8267b12a5f48b.md) | 186 | `result-track:ca9ef09237c8267b12a5f48b1f06d33d51b49e6ed755fa76ddd583d9938553c9` |
| 27 | `theorem` | [pointReflection_fixed_iff_of_injective_two_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/pointreflection-fixed-iff-of-injective-two-nsmul--433d139d0a00c5e9caa35560.md) | 191 | `result-track:433d139d0a00c5e9caa3556044f1ad45aaa30e6a65090a45c3f7219d4ae2517c` |
| 28 | `theorem` | [injective_pointReflection_left_of_injective_two_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/declarations/injective-pointreflection-left-of-injective-two-nsmul--acfbf01230a8df6970da156b.md) | 199 | `result-track:acfbf01230a8df6970da156be39c704ca95ed6072b8844d2a00080807230eddd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
