# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Basic.Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "101f00dc8f8be4e93d24cab460a9d6cba83ee260",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `101f00dc8f8be4e93d24cab460a9d6cba83ee260`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Scheme` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/basicopen--122c16356e34e4c1fede7542.md) | 44 | `declaration-track:122c16356e34e4c1fede754298b27e848a1c90f6d11d1961acc81fde77db8272` |
| 2 | `theorem` | [mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/mem-basicopen--6d1dd018c3979452eb3072a3.md) | 48 | `result-track:6d1dd018c3979452eb3072a3b1c581e98a27c73e0019343662b85f69fee0c714` |
| 3 | `theorem` | [basicOpen_one](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/basicopen-one--dee2a069c497cbc2fd080145.md) | 52 | `result-track:dee2a069c497cbc2fd080145660c15acb9b4011c20e63f36fb4d863ff18ac97b` |
| 4 | `theorem` | [basicOpen_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/basicopen-zero--af1083450fe604bc5d612a83.md) | 54 | `result-track:af1083450fe604bc5d612a839a13284072ac62f003e8a89af2cf7020b5781378` |
| 5 | `theorem` | [basicOpen_pow](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/basicopen-pow--9748a40c490ba8870b592086.md) | 56 | `result-track:9748a40c490ba8870b592086646c6e197ffe3de8598d08b5fa52d23bc28f3921` |
| 6 | `theorem` | [basicOpen_mul](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/basicopen-mul--e69e5215e74994d49375eb6b.md) | 59 | `result-track:e69e5215e74994d49375eb6b9e27f9fe13491b075d608ca09389a23954b145ab` |
| 7 | `theorem` | [basicOpen_mono](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/basicopen-mono--ad6abf1d4354784b10977203.md) | 62 | `result-track:ad6abf1d4354784b109772034568618484189251202ea53f506fd060524c0644` |
| 8 | `theorem` | [basicOpen_eq_iSup_proj](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/basicopen-eq-isup-proj--b62b1023f1e84ccca6cad931.md) | 65 | `result-track:b62b1023f1e84ccca6cad9315b555a80ded5464c1f6c12281cf13c2e08c028b3` |
| 9 | `theorem` | [isBasis_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/isbasis-basicopen--2311510dba0af53021fceef1.md) | 69 | `result-track:2311510dba0af53021fceef1a3708e93cc0e9ecb0f11b84e1041c877589bf8ee` |
| 10 | `lemma` | [iSup_basicOpen_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/isup-basicopen-eq-top--aad3ee246bf9dab7e84a9d1c.md) | 76 | `result-track:aad3ee246bf9dab7e84a9d1cc284bab9122a87e75ec861ff455b30c4279cd9ca` |
| 11 | `lemma` | [iSup_basicOpen_eq_top'](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/isup-basicopen-eq-top--e869eff565b6420848a27bdc.md) | 87 | `result-track:e869eff565b6420848a27bdc65d82960d658974d09e54a15062c622cc93de624` |
| 12 | `def` | [awayToSection](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/awaytosection--8597ec7310e03b83e9766de9.md) | 124 | `declaration-track:8597ec7310e03b83e9766de9cca15e2d18f99b8cda1c3a1e874e16c5c33fa466` |
| 13 | `def` | [basicOpenToSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/basicopentospec--2b04d0ee6d3d29cfb3f1c4de.md) | 130 | `declaration-track:2b04d0ee6d3d29cfb3f1c4de91c8fbadb6704f83777207f651ca492360cdd4af` |
| 14 | `lemma` | [basicOpenToSpec_app_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/basicopentospec-app-top--ba9a40bc113a925fb1297d6d.md) | 133 | `result-track:ba9a40bc113a925fb1297d6d2c899b7bee520798c0187d4e22fcb66a562395c7` |
| 15 | `def` | [toSpecZero](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/tospeczero--56afd55324059c35ff80510a.md) | 144 | `declaration-track:56afd55324059c35ff80510a227b466eb2447845580cee9827414a46bd506172` |
| 16 | `def` | [basicOpenIsoSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/basicopenisospec--b16fefcae49c295f593765ee.md) | 154 | `declaration-track:b16fefcae49c295f593765eed5fa539bdf6803d36b4718fa06eba846082274a9` |
| 17 | `def` | [basicOpenIsoAway](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/basicopenisoaway--73c1cb6b78e3677a396296dc.md) | 168 | `declaration-track:73c1cb6b78e3677a396296dc8ab5accd9251dc1c1cc874b04c70c555fd99ed89` |
| 18 | `def` | [awayι](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/away--a8968699ee988df2d2bca74f.md) | 178 | `declaration-track:a8968699ee988df2d2bca74f86005bd36f332fd90db839bb1616d19111bf5ac2` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/instance--4334327dc85db709df7f608a.md) | 181 | `declaration-track:4334327dc85db709df7f608a1690f97452994081389a922fda25118279be31dc` |
| 20 | `lemma` | [opensRange_awayι](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/opensrange-away--9ca6f6cebd5cb170e102f44f.md) | 184 | `result-track:9ca6f6cebd5cb170e102f44f1bc4c9128b5da3d8d0a7cb7f610ba7808bc0060a` |
| 21 | `lemma` | [isAffineOpen_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/isaffineopen-basicopen--1b8f8353ed429617a0f08281.md) | 189 | `result-track:1b8f8353ed429617a0f082818d311365da5e2a1cae327a7564d7757496d8ef45` |
| 22 | `lemma` | [awayι_toSpecZero](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/away-tospeczero--bdae58848d05204229392bc1.md) | 194 | `result-track:bdae58848d05204229392bc1420995f88fb41ecb414b275b8db3dfae385b0bb1` |
| 23 | `lemma` | [awayMap_awayToSection](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/awaymap-awaytosection--271f7871ddcf159391ef622d.md) | 210 | `result-track:271f7871ddcf159391ef622d91f9caff934d0e544dc8e914458841afab5e2752` |
| 24 | `lemma` | [basicOpenToSpec_SpecMap_awayMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/basicopentospec-specmap-awaymap--bec6860059a6bd134b240233.md) | 228 | `result-track:bec6860059a6bd134b240233502bc9ec2e8901fe34a3f62c45e6248eecc808a2` |
| 25 | `lemma` | [SpecMap_awayMap_awayι](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/specmap-awaymap-away--8e7bea88bd817082d833515c.md) | 236 | `result-track:8e7bea88bd817082d833515c146ed646775cca2a520fb068fbf09345508b3063` |
| 26 | `def` | [pullbackAwayιIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/pullbackaway-iso--8841f40c4fb99eb19d532333.md) | 244 | `declaration-track:8841f40c4fb99eb19d532333507e03b3444ff9057b09c21e6180508d3c5207e9` |
| 27 | `lemma` | [pullbackAwayιIso_hom_awayι](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/pullbackaway-iso-hom-away--a085b63ec4add4d8f65ef88b.md) | 254 | `result-track:a085b63ec4add4d8f65ef88baaf00fcc398238cfb120e2ed90dc52407e4d1948` |
| 28 | `lemma` | [pullbackAwayιIso_hom_SpecMap_awayMap_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/pullbackaway-iso-hom-specmap-awaymap-left--c7a290c42f3b53416872aca7.md) | 261 | `result-track:c7a290c42f3b53416872aca7d5e79f0da85492ddccdd81f7b461ca9cd20aa80d` |
| 29 | `lemma` | [pullbackAwayιIso_hom_SpecMap_awayMap_right](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/pullbackaway-iso-hom-specmap-awaymap-right--d4ac3d16f45687ffb1e2164b.md) | 268 | `result-track:d4ac3d16f45687ffb1e2164bc9026739926b920b615115cbda2b512331ef29bc` |
| 30 | `lemma` | [pullbackAwayιIso_inv_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/pullbackaway-iso-inv-fst--0487d5953f2e0a805138edc0.md) | 278 | `result-track:0487d5953f2e0a805138edc0eb50afce31fa7e69106d658e672fa6219acd0b9e` |
| 31 | `lemma` | [pullbackAwayιIso_inv_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/pullbackaway-iso-inv-snd--c0718b56db45e3df61ea10a5.md) | 284 | `result-track:c0718b56db45e3df61ea10a55bb08a2f5e02b9cbcc2fecd1d9ecb6b78f7c728e` |
| 32 | `def` | [openCoverOfISupEqTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/opencoverofisupeqtop--eb73cc159a173d5a955f31b2.md) | 293 | `declaration-track:eb73cc159a173d5a955f31b26f29d65a65621249bc7f918ba90cf5bde5e50fad` |
| 33 | `def` | [affineOpenCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/affineopencover--fa82ac65711d42aa6327545c.md) | 308 | `declaration-track:fa82ac65711d42aa6327545c12fdd0822a6c4bce00c134a750b4aab66f193b09` |
| 34 | `def` | [stalkIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/declarations/stalkiso--5b4d0de2c903b856ee572c66.md) | 326 | `declaration-track:5b4d0de2c903b856ee572c669bb4e5313dcd53667576546eda947df6d22c4447` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
