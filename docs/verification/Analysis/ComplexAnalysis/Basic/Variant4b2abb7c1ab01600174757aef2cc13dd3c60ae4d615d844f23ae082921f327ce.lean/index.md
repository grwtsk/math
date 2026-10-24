# Verification target: GRWTSK.Analysis.ComplexAnalysis.Basic.Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04ea612c3dd435563d0d19d0b0169cbd630c33cd",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04ea612c3dd435563d0d19d0b0169cbd630c33cd`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UpperHalfPlane](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/upperhalfplane--da33fe320d036feaf1389914.md) | 20 | `declaration-track:da33fe320d036feaf138991436b0eed78af5634b0d60d5294e3daf453d7f610c` |
| 2 | `def` | [coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/coe--aee86da604be2179f222ce6d.md) | 30 | `declaration-track:aee86da604be2179f222ce6d01e9d28a086796587803e3b541be6e320d41c164` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/instance--4f2c91bac81d2a16cb52946c.md) | 32 | `declaration-track:4f2c91bac81d2a16cb52946ca8966fa51b8619551cec285d5e1409c48ffb460a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/instance--69ec8f4cbe71bb25a942d3f6.md) | 34 | `declaration-track:69ec8f4cbe71bb25a942d3f66d1c4d1aaac6e1fe310f213eac70a6db6ae23dbd` |
| 5 | `theorem` | [ext](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/ext--f2a306ff82d67311cc2614fa.md) | 37 | `result-track:f2a306ff82d67311cc2614faa7fd7a9fa0722c95bd1f360eba9eb3a79e1ac91e` |
| 6 | `theorem` | [ext_iff'](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/ext-iff--5b5d616e11fed76919c8a908.md) | 39 | `result-track:5b5d616e11fed76919c8a908703bdde7a3064407c2f9ec2dfc2ed352f01714b9` |
| 7 | `instance` | [canLift](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/canlift--f00206edca56e21e7afbb500.md) | 41 | `declaration-track:f00206edca56e21e7afbb50099fff1e73c960f79c106ae7cc8ccbfe07a68bc2b` |
| 8 | `def` | [im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/im--dd11ee0f4a99fce3691d2931.md) | 45 | `declaration-track:dd11ee0f4a99fce3691d2931e8255685fdb3f59af3706cfd2e142647b7081ed2` |
| 9 | `def` | [re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/re--233bd7b1cdc189e66b4e0b82.md) | 49 | `declaration-track:233bd7b1cdc189e66b4e0b824d234b3864db6afe00a9f61de1e9bb748bc7d561` |
| 10 | `theorem` | [ext'](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/ext--f0e83eb2c1a24f0030e9557d.md) | 53 | `result-track:f0e83eb2c1a24f0030e9557da767428428f9ab4b72cc2268b7de33a619b70985` |
| 11 | `def` | [mk](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/mk--2cc62fee41f3545212fe48ab.md) | 58 | `declaration-track:2cc62fee41f3545212fe48abf319d38b557753b0988f83f337d0591b373395cf` |
| 12 | `theorem` | [coe_im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/coe-im--bead04bfba6c19bc1a5050ea.md) | 62 | `result-track:bead04bfba6c19bc1a5050ea9666b90b7006064cccfa729691b574affd90bbfc` |
| 13 | `theorem` | [coe_re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/coe-re--0471391b06dd9eeb8bbdd667.md) | 66 | `result-track:0471391b06dd9eeb8bbdd667e0c13e0bf9be247e00a170cd06a08bea7db248f9` |
| 14 | `theorem` | [mk_re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/mk-re--47d393c5fbdb8582d91392a1.md) | 70 | `result-track:47d393c5fbdb8582d91392a1e0258ea670d1512e44fa565eb9fa97e169898d55` |
| 15 | `theorem` | [mk_im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/mk-im--3b3185f9cb730131dba3ed7a.md) | 74 | `result-track:3b3185f9cb730131dba3ed7a270196f17ef7f6dcdb93b47f4b9b6f3ff3653968` |
| 16 | `theorem` | [coe_mk](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/coe-mk--6c638bed890b8b5885f04bac.md) | 78 | `result-track:6c638bed890b8b5885f04bac6642e1038b63802e211ce46f7e150d758663376f` |
| 17 | `lemma` | [coe_mk_subtype](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/coe-mk-subtype--40ee871c7fce7bac6d6323fa.md) | 82 | `result-track:40ee871c7fce7bac6d6323fad1109589c09b685d958c6b11a8490a1bee9fc0f5` |
| 18 | `theorem` | [mk_coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/mk-coe--bab7a46a09b287e3d7f1d32e.md) | 87 | `result-track:bab7a46a09b287e3d7f1d32e8b53043cb7b9c3a431376f99f446041ea9724efe` |
| 19 | `theorem` | [re_add_im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/re-add-im--08b2ece66cd4afc9e48c52b1.md) | 90 | `result-track:08b2ece66cd4afc9e48c52b16a998efa2319895dcebbdf517287fa1dfefd6cf7` |
| 20 | `theorem` | [im_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/im-pos--00d7adef97f83f57c73afdce.md) | 93 | `result-track:00d7adef97f83f57c73afdcea2a297e603cde1d73a847ff6398a71e11928a97c` |
| 21 | `theorem` | [im_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/im-ne-zero--bcf195ff67c59bf76df4d74e.md) | 96 | `result-track:bcf195ff67c59bf76df4d74ea7b7514ad9833491a1958be46caebf3fc6bc0a7c` |
| 22 | `theorem` | [ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/ne-zero--7f6a0eba2f6438d15deaa16f.md) | 99 | `result-track:7f6a0eba2f6438d15deaa16f32674196d639947db01be38b9ba5b4ddda4ef5d4` |
| 23 | `def` | [I](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/i--46fd5bb62e5bb7d207bb9bf9.md) | 103 | `declaration-track:46fd5bb62e5bb7d207bb9bf973ca22df7edd5007154271976d8e0413ed7ff03e` |
| 24 | `lemma` | [I_im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/i-im--25ff5e5e6941b0bd83011887.md) | 106 | `result-track:25ff5e5e6941b0bd83011887cd8c7030b27d584eb13508bccaa4c0c5c6136511` |
| 25 | `lemma` | [I_re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/i-re--bd6775b92a60a90a569038b5.md) | 109 | `result-track:bd6775b92a60a90a569038b5221a1694669190b8b34515480b30c1d0d50d6053` |
| 26 | `lemma` | [coe_I](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/coe-i--fc41ea90eb9ea668433d4d53.md) | 112 | `result-track:fc41ea90eb9ea668433d4d53c92ddd037cb8487b4e86bf334206369ceaf90c2b` |
| 27 | `def` | [evalUpperHalfPlaneIm](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/evalupperhalfplaneim--806f130de09687391461ecb5.md) | 122 | `declaration-track:806f130de09687391461ecb5e7a447914909c1f237cedabf2165a39703008b28` |
| 28 | `def` | [evalUpperHalfPlaneCoe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/evalupperhalfplanecoe--bc8b00e27bb3e4ce5f95bd19.md) | 131 | `declaration-track:bc8b00e27bb3e4ce5f95bd19784b3674abdcca752e18031372d1cc1a329e5f01` |
| 29 | `theorem` | [normSq_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/normsq-pos--a219bc3eeaff60ecdf54b207.md) | 142 | `result-track:a219bc3eeaff60ecdf54b207e1ca232a84d291158ddcce2c5ec3a10d442cf806` |
| 30 | `theorem` | [normSq_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/normsq-ne-zero--1a8a951fd758a53e37053ba3.md) | 145 | `result-track:1a8a951fd758a53e37053ba3750d995092de157e2bd994084b03cc105586d8cb` |
| 31 | `theorem` | [im_inv_neg_coe_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/im-inv-neg-coe-pos--70c7c6e8dac86858503dc239.md) | 148 | `result-track:70c7c6e8dac86858503dc2398eebe33a629b83fb7d76fed2b2acda985039d854` |
| 32 | `lemma` | [ne_nat](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/ne-nat--cc41bb95bcac10a101ccccbb.md) | 151 | `result-track:cc41bb95bcac10a101ccccbb2a06212282d6653cdbcd44f4c4da2e2ef119ab55` |
| 33 | `lemma` | [ne_int](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/ne-int--4dd26dd250cffeee919f5d51.md) | 156 | `result-track:4dd26dd250cffeee919f5d51e029bd8cb8aae808b6c73e40dc2d95480a9aec15` |
| 34 | `instance` | [posRealAction](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/posrealaction--1f715ccbc4406998230b73fb.md) | 163 | `declaration-track:1f715ccbc4406998230b73fb807d13e239c32272c00fce6cbd3edb0f73edb028` |
| 35 | `theorem` | [coe_pos_real_smul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/coe-pos-real-smul--821c3917687a0f2a6a8df7b3.md) | 171 | `result-track:821c3917687a0f2a6a8df7b39b30c3fb6c32185d74f29bb5e6e31d99c53e227f` |
| 36 | `theorem` | [pos_real_im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/pos-real-im--db3ab66adbb8ab5338423162.md) | 175 | `result-track:db3ab66adbb8ab533842316257d660f2ae477732436a18e23356c63054e7b091` |
| 37 | `theorem` | [pos_real_re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/pos-real-re--47555b87ec91f887c6e8fa4b.md) | 179 | `result-track:47555b87ec91f887c6e8fa4b0c505c594a2d76a466e4055586c0ae64ce8df89d` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/instance--bcd74bfa53d5696857b7ff28.md) | 186 | `declaration-track:bcd74bfa53d5696857b7ff2897f836546754aa54003c05a91537621bd1f5cce6` |
| 39 | `theorem` | [coe_vadd](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/coe-vadd--63a300ab87a08faef0cbef19.md) | 194 | `result-track:63a300ab87a08faef0cbef19cce521746a36efa42ba36a831d2303aa023de8aa` |
| 40 | `theorem` | [vadd_re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/vadd-re--6cd86416f970384982ddb8c1.md) | 198 | `result-track:6cd86416f970384982ddb8c124d25abfa8305a3979a000b0e9ed9015c39b3dc1` |
| 41 | `theorem` | [vadd_im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant4b2abb7c1ab01600174757aef2cc13dd3c60ae4d615d844f23ae082921f327ce.lean/declarations/vadd-im--777ec391d081db50b664addc.md) | 202 | `result-track:777ec391d081db50b664addc6466bb6d5665274307bb2b2394add17e28b13729` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
