# Verification target: GRWTSK.Analysis.SpecialFunctions.Artanh.Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4646d9f50c85758b8278e4c6572eb76a252c918c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4646d9f50c85758b8278e4c6572eb76a252c918c`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh--596669b835cb67a0fd0f463c.md) | 60 | `declaration-track:596669b835cb67a0fd0f463cfc351738eae80334ec8262a1f9d437c58f59e9b9` |
| 2 | `theorem` | [artanh_eq_half_log](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-eq-half-log--8a71cb6f732793f4e20210c6.md) | 63 | `result-track:8a71cb6f732793f4e20210c6f75ff503d4cb1c849930bc4b1a42ed6395df55f3` |
| 3 | `theorem` | [exp_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/exp-artanh--936a170002417067260ef0bd.md) | 67 | `result-track:936a170002417067260ef0bd3dcc39c2120fbfe5832db81d9a92a033a9862689` |
| 4 | `theorem` | [artanh_zero](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-zero--d842cbe1c438ae289f7d4baa.md) | 71 | `result-track:d842cbe1c438ae289f7d4baae748452db42c59a6f5ae495a5f3e053fc44fab61` |
| 5 | `theorem` | [sinh_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/sinh-artanh--4ccba62022806a3519cf6a5a.md) | 73 | `result-track:4ccba62022806a3519cf6a5a3612e95f566425264f05274238290dafff5a088f` |
| 6 | `theorem` | [cosh_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/cosh-artanh--7c3d522cf7ea9b11344ba46d.md) | 78 | `result-track:7c3d522cf7ea9b11344ba46d25109e41a9872412933c7f50a4d4e0d08b836aa3` |
| 7 | `theorem` | [tanh_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/tanh-artanh--c6250c51e8e5ec8fdefb255f.md) | 84 | `result-track:c6250c51e8e5ec8fdefb255fa4f5d220cfebe2a397df0e537ba5d4529792cf71` |
| 8 | `theorem` | [artanh_tanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-tanh--8709569abe67f03bd8f8b112.md) | 89 | `result-track:8709569abe67f03bd8f8b11249f61aaa4cd3a05dbfa7acdcfaf6c815dab36b7a` |
| 9 | `theorem` | [strictMonoOn_one_add_div_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/strictmonoon-one-add-div-one-sub--48edeefb357a7b7fdf1b3696.md) | 97 | `result-track:48edeefb357a7b7fdf1b36966e9c79f8fd790d4fe6093fcecc5e04efc4b6a13d` |
| 10 | `theorem` | [strictMonoOn_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/strictmonoon-artanh--1dd561a4cf797fc572ae5127.md) | 103 | `result-track:1dd561a4cf797fc572ae5127634dcd259356ab3312cf76ed0de19e662e40877e` |
| 11 | `theorem` | [artanh_le_artanh_iff](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-le-artanh-iff--370fd992bbe6bc082f0c7c6e.md) | 108 | `result-track:370fd992bbe6bc082f0c7c6e60e75bb359b5b7f14a08670e5376fb0c22e7642e` |
| 12 | `theorem` | [artanh_lt_artanh_iff](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-lt-artanh-iff--e5363f30631dde733b291189.md) | 112 | `result-track:e5363f30631dde733b2911892d90c5bec3f655541342c3270fd43db6121c3e34` |
| 13 | `theorem` | [artanh_le_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-le-artanh--8fbe6f02eb2b7ec672e2bad1.md) | 116 | `result-track:8fbe6f02eb2b7ec672e2bad10830dd1855bdc1c519bf45fb93bb584cc996e8ab` |
| 14 | `theorem` | [artanh_lt_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-lt-artanh--67fef36e2224442208a03075.md) | 120 | `result-track:67fef36e2224442208a0307505a27e5829c703f4a772f454942334e9e7fcacf3` |
| 15 | `theorem` | [artanh_eq_zero_iff](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-eq-zero-iff--ba18ca3e5edc746f6c3ed2ff.md) | 124 | `result-track:ba18ca3e5edc746f6c3ed2ff9f51c9e3b9611feac8a47e4bdc9da49cef590625` |
| 16 | `theorem` | [artanh_pos](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-pos--fd62cab199f6f278afef7050.md) | 127 | `result-track:fd62cab199f6f278afef70500918410df1c439b833b4f5821577ab9a81dd354b` |
| 17 | `theorem` | [artanh_neg](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-neg--f0b4655a33de26f1388b39a0.md) | 131 | `result-track:f0b4655a33de26f1388b39a0e5fb06e366d16c854f9e6dce665d767de81acd46` |
| 18 | `theorem` | [artanh_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-nonneg--9722195662cdfae69ec92815.md) | 135 | `result-track:9722195662cdfae69ec92815e3166c6f1136a33edbbe9e5f93e05c0ee4836bb2` |
| 19 | `theorem` | [artanh_nonpos](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-nonpos--7654f190a075cfc0db84cd7e.md) | 142 | `result-track:7654f190a075cfc0db84cd7e910d9669f93019dc0d1e1a2be0d6a769f28db517` |
| 20 | `def` | [tanhPartialEquiv](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/tanhpartialequiv--e683fea1eaaf3fbe9f6ee4d1.md) | 150 | `declaration-track:e683fea1eaaf3fbe9f6ee4d1c594cd64f95af30fc6444ebec36a37bef02b0be3` |
| 21 | `theorem` | [tanh_bijOn](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/tanh-bijon--4692ba1cdbdd20e54ddba939.md) | 160 | `result-track:4692ba1cdbdd20e54ddba939e111426a754ec904e3d804c84405c43d63b4db1d` |
| 22 | `theorem` | [tanh_injective](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/tanh-injective--d8609980d13bc648056e1094.md) | 162 | `result-track:d8609980d13bc648056e10945ed4560e69f30cdfae766b48ee3dff05dfe78065` |
| 23 | `theorem` | [tanh_surjOn](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/tanh-surjon--ed6b33849550e06c457f043c.md) | 164 | `result-track:ed6b33849550e06c457f043c207e20fb7eb08cd89377998765ef7348439d3ef9` |
| 24 | `theorem` | [artanh_bijOn](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-bijon--75159097600ef5467f007f22.md) | 166 | `result-track:75159097600ef5467f007f2233e415fe4183d1ea4e93d50d0b16ed51c78eae44` |
| 25 | `theorem` | [artanh_injOn](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-injon--2e8038b4a2b5c2ff8a67b813.md) | 168 | `result-track:2e8038b4a2b5c2ff8a67b8130f3e9867e38932085f5aa33b91dd9b85dc9b8bdb` |
| 26 | `theorem` | [artanh_surjOn](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Varianteeab772633fe2180fb251ed1888770cf1b30b7f95ab5ee5c94cde4ce4c625da7.lean/declarations/artanh-surjon--77c431783e9282fa049deb9d.md) | 170 | `result-track:77c431783e9282fa049deb9d86ac30ead442e5dbc9ed911916fbb5f4424e34db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
