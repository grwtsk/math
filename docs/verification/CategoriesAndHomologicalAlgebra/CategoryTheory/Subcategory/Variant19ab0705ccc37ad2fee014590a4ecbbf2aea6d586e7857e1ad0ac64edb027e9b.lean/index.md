# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subcategory.Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca0729a5abffdef769a006662679e2309e612ff5",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca0729a5abffdef769a006662679e2309e612ff5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.CalculusOfFractions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Triangulated` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Localization` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/subcategory--9b10cc5ec9e793887218bfc3.md) | 56 | `declaration-track:9b10cc5ec9e793887218bfc3019f3d3fc67061550b572d2181ffb0a64e8f7b85` |
| 2 | `lemma` | [zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/zero--ecc68c4d4bc4620240b090f1.md) | 68 | `result-track:ecc68c4d4bc4620240b090f17899ddda017d5987f3aeab69e4d396c67252665c` |
| 3 | `def` | [isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/isoclosure--1d2bcab7f2e7a000e6120554.md) | 73 | `declaration-track:1d2bcab7f2e7a000e61205545df2e29287c6784be7b058fd8954f1150fe1369c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/instance--eadb6fc2942e62d752820f03.md) | 91 | `declaration-track:eadb6fc2942e62d752820f0312c3e8b2d7373011567c0711330306f034724507` |
| 5 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/mk--16aeff27bda9871293bc1b05.md) | 102 | `declaration-track:16aeff27bda9871293bc1b05bc93c61960fe673aacc73bd00d92ad7b26451973` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/instance--e3c702e5e3e3bb90f3911790.md) | 108 | `declaration-track:e3c702e5e3e3bb90f3911790112e122669178a5d33c59dfecdd3e560683c75ef` |
| 7 | `lemma` | [ext₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/ext--50ba514dfb44476c0256e1f7.md) | 116 | `result-track:50ba514dfb44476c0256e1f7a0c49841f4dc714f1250684a879efee29d0bd5b3` |
| 8 | `def` | [W](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/w--173640609df97c6014319a07.md) | 123 | `declaration-track:173640609df97c6014319a0754106d3a40c16e8f96dd992a9bc83c76bb003edf` |
| 9 | `lemma` | [W_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/w-iff--2e21290e559cb00e1b1d5f9d.md) | 126 | `result-track:2e21290e559cb00e1b1d5f9d7ba4ecadf66a3b39c9bfaa4dbda7192525a3e3dc` |
| 10 | `lemma` | [W_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/w-iff--fe23f14314a6889002997c84.md) | 130 | `result-track:fe23f14314a6889002997c84c16dc22f06bccd81dceab692a9b2e137be20009c` |
| 11 | `lemma` | [W.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/w-mk--6ec0dcb2311134918ef84449.md) | 140 | `result-track:6ec0dcb2311134918ef844496bc8cfb9b277d15a92dfe5e6c0f9ae959ba0f70a` |
| 12 | `lemma` | [W.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/w-mk--85f3549f895cbaa720fe49dc.md) | 143 | `result-track:85f3549f895cbaa720fe49dcc94dd40e429e29992af3ebd6122adf7e01a52c31` |
| 13 | `lemma` | [isoClosure_W](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/isoclosure-w--dd8d6737b50d66b195d3aa5a.md) | 147 | `result-track:dd8d6737b50d66b195d3aa5ab3d3f22520a27b54a1687e86052844f083592243` |
| 14 | `instance` | [respectsIso_W](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/respectsiso-w--590b78ae3a2a0b457a2b598d.md) | 156 | `declaration-track:590b78ae3a2a0b457a2b598dd851bfdc721bb3f7be38e7b8bc6885a1fd7ebbd2` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/instance--860b34073ea028dc6e856a40.md) | 168 | `declaration-track:860b34073ea028dc6e856a4057ed551c00206cee61bc5485e2983fb64183ad79` |
| 16 | `lemma` | [W_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/w-of-isiso--883268dc761db26582cb72dc.md) | 172 | `result-track:883268dc761db26582cb72dc809fc793d0242c2d2c29c1eb22635c7ca833642c` |
| 17 | `lemma` | [smul_mem_W_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/smul-mem-w-iff--7158bec592b62e452fea2119.md) | 176 | `result-track:7158bec592b62e452fea21190acf83c9aae15272995405e67dc1d9af735785fe` |
| 18 | `lemma` | [W.shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/w-shift--848955633025b1ec419c47f6.md) | 182 | `result-track:848955633025b1ec419c47f6eed57271981f884392d6edffdbc22eb9bcadb348` |
| 19 | `lemma` | [W.unshift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/w-unshift--f61f9f08b889dba0d75b0ec5.md) | 187 | `result-track:f61f9f08b889dba0d75b0ec5188f9ba010f4d8f3a83e6e32fbb9cffac8cdeb9b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/instance--c32ee57a44883b1aaae2550e.md) | 191 | `declaration-track:c32ee57a44883b1aaae2550e119a9f51a446d60963c0467ff60e13d77bbf6ae0` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/instance--3a65b32b81f0598a3beda25c.md) | 196 | `declaration-track:3a65b32b81f0598a3beda25ccd1fb759349c8e06e6c9a3f1cbac94992f32f7ee` |
| 22 | `lemma` | [mem_W_iff_of_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/mem-w-iff-of-distinguished--00541f84a8b5733c9eb6299a.md) | 205 | `result-track:00541f84a8b5733c9eb6299a703b3056bf2ffcf14a61a24ec654734e82f89447` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/instance--bb40fafc2dda065143640677.md) | 215 | `declaration-track:bb40fafc2dda065143640677f39527442627dcb4659e6201fa92f8255984910e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/instance--e22d5c7a340a727ee2d4b5c6.md) | 233 | `declaration-track:e22d5c7a340a727ee2d4b5c6cfc94d15d3aa7fbf657d7681446ba22b8ad0392f` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/instance--a76077d17a25d7e321934e57.md) | 252 | `declaration-track:a76077d17a25d7e321934e5731bbdf3d6998981e4abec60b4bd46beff37bdf33` |
| 26 | `lemma` | [ext₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/ext--d4e29f77c693af7ce208ae82.md) | 267 | `result-track:d4e29f77c693af7ce208ae827841f40aa2e8514b71a84f913aaba77eb45d57a0` |
| 27 | `lemma` | [ext₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/ext--18edeacd55daf12ee530a24d.md) | 271 | `result-track:18edeacd55daf12ee530a24d99a40fd6e6ee5dfb0d1006fdc9b1aaee4cb60161` |
| 28 | `lemma` | [ext₁'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/ext--b99d18aae067085f88400d6d.md) | 275 | `result-track:b99d18aae067085f88400d6d8f0802cca97e4e04f3aaa06b6bb6cdf72e24818e` |
| 29 | `lemma` | [ext₃'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant19ab0705ccc37ad2fee014590a4ecbbf2aea6d586e7857e1ad0ac64edb027e9b.lean/declarations/ext--84c901a8d8f0c9da734c1fc0.md) | 279 | `result-track:84c901a8d8f0c9da734c1fc0a33d0fc240a3368c8bbd0c53741ca517d0e10e40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
