# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "967d4430c4fc192382369f22d680c3b101ca6a7f",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `967d4430c4fc192382369f22d680c3b101ca6a7f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.MvPolynomial.Counit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Invertible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/mapfun--b4a3c36b58e2cef42ddd88e4.md) | 71 | `declaration-track:b4a3c36b58e2cef42ddd88e443fecb0dc2fa9c37e305ad3063721f2c92a1b528` |
| 2 | `theorem` | [injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/injective--2cbd38595fecf29bb8cf9bd0.md) | 77 | `result-track:2cbd38595fecf29bb8cf9bd036bd4a5a230c2ca27eeb21ec59380c1c051b5233` |
| 3 | `theorem` | [surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/surjective--fcf6dacb256fa8115fa3fbb8.md) | 83 | `result-track:fcf6dacb256fa8115fa3fbb8553472e394492ba67273504dc1a32301385423f7` |
| 4 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/macro--e82138fa7daea80247f8668f.md) | 93 | `declaration-track:e82138fa7daea80247f8668f77c1cb3e07481b55787eeeab438c95a59acbc013` |
| 5 | `theorem` | [zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/zero--24ca32a191c5248c47b85c20.md) | 106 | `result-track:24ca32a191c5248c47b85c208518a3e45a181ee3825e4615024e3f26f6520e72` |
| 6 | `theorem` | [one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/one--a1bfbda3a60a9b64e945a1d1.md) | 109 | `result-track:a1bfbda3a60a9b64e945a1d14a7cd26684e71f7438561ba4e873eaa6adb92478` |
| 7 | `theorem` | [add](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/add--33439e859b63cd22ce6e01e7.md) | 112 | `result-track:33439e859b63cd22ce6e01e782820c1a73c21e87b01f7e7605616f4d14bed300` |
| 8 | `theorem` | [sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/sub--a30b8d0e51b347cc97a1f4ef.md) | 115 | `result-track:a30b8d0e51b347cc97a1f4efdc05659cd1a0572d1b2d4f6aa9447933066a3ad7` |
| 9 | `theorem` | [mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/mul--a115f89e62bde76f2693b89a.md) | 118 | `result-track:a115f89e62bde76f2693b89a6faa8d7e82fec174b732f28ea725cc7caca8bc46` |
| 10 | `theorem` | [neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/neg--e7166b5e0d64d00b07a0d586.md) | 121 | `result-track:e7166b5e0d64d00b07a0d586b3a52c87031d9d90e9b50e828365565c7c2517c7` |
| 11 | `theorem` | [nsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/nsmul--59fdc89806ffbb1cbf599529.md) | 124 | `result-track:59fdc89806ffbb1cbf59952970beaf6857bf59384a31a718883169a22b4f38e0` |
| 12 | `theorem` | [zsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/zsmul--f7a3e3f684b29215da001780.md) | 127 | `result-track:f7a3e3f684b29215da0017803e2aa4e1ee736dbd3a30809673fd217a2ede1e76` |
| 13 | `theorem` | [pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/pow--1b7c73e5ac37c7409ff33197.md) | 130 | `result-track:1b7c73e5ac37c7409ff33197af658f5078907fadf17a7ce7b0df3ec7df4fbd15` |
| 14 | `theorem` | [nat_cast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/nat-cast--9d4e0af0ad1695d71a2550f7.md) | 133 | `result-track:9d4e0af0ad1695d71a2550f790a044c5f1dbe5640fd8afb375db984ada6ae456` |
| 15 | `theorem` | [int_cast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/int-cast--fcc6076c201e12e68a2c0ad8.md) | 138 | `result-track:fcc6076c201e12e68a2c0ad8bd71fa9dba8337e4629091acc2f609c92aa48228` |
| 16 | `def` | [ghostFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostfun--7121da972439acfaa54134f9.md) | 154 | `declaration-track:7121da972439acfaa54134f93ad44ed21b172e7235d15b6648fb413f735213f0` |
| 17 | `elab` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/elab--21a9e80dee7ecf1092ed9cd4.md) | 162 | `declaration-track:21a9e80dee7ecf1092ed9cd47a7be205b7d3f60b27b8186c0c63619ea653bdbd` |
| 18 | `theorem` | [matrix_vecEmpty_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/matrix-vecempty-coeff--ab559042316c9ef9234af27e.md) | 181 | `result-track:ab559042316c9ef9234af27eb877871200c3e0aa52a196b88bc21c08e7f457b5` |
| 19 | `theorem` | [ghostFun_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostfun-zero--2feb65d518159058a92609bb.md) | 186 | `result-track:2feb65d518159058a92609bb5660ddf7480d10b2aa85acd18b2aea2322dc22f1` |
| 20 | `theorem` | [ghostFun_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostfun-one--7fcb1464949497b8955bde41.md) | 189 | `result-track:7fcb1464949497b8955bde41b10106b7da82901429e4fbe6394eed281ba1bf83` |
| 21 | `theorem` | [ghostFun_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostfun-add--191aa32e45829dd2305c4f4e.md) | 192 | `result-track:191aa32e45829dd2305c4f4e317318a79d8f9d01c43719edb0e3f260722e9841` |
| 22 | `theorem` | [ghostFun_nat_cast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostfun-nat-cast--2b2dae17643e842b731f7e0f.md) | 195 | `result-track:2b2dae17643e842b731f7e0f233f79463cc96e13fe329347c23ed60b6a22a430` |
| 23 | `theorem` | [ghostFun_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostfun-sub--fda382d85e135771cc454932.md) | 200 | `result-track:fda382d85e135771cc4549321cb6ea3e2cbc914dde458ab6343049d5abf36aa0` |
| 24 | `theorem` | [ghostFun_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostfun-mul--5b718793b1cb655ecaaf3bfe.md) | 203 | `result-track:5b718793b1cb655ecaaf3bfef64af2410bd6392d19ada5d2e2da173928531a05` |
| 25 | `theorem` | [ghostFun_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostfun-neg--fccf7424c2938de34bf9e4af.md) | 206 | `result-track:fccf7424c2938de34bf9e4af57beaf489f2e924b74b5e4ad5bffc0263445caa3` |
| 26 | `theorem` | [ghostFun_int_cast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostfun-int-cast--3a0978c9776043f7d2a4b8d4.md) | 208 | `result-track:3a0978c9776043f7d2a4b8d4c803ee5b1aa227a963d7b37747cf3bcdb07f9dde` |
| 27 | `theorem` | [ghostFun_nsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostfun-nsmul--9df06a02db632876e7410783.md) | 212 | `result-track:9df06a02db632876e741078345b504fe6452b8a2d4c81b51487bf0017bde836c` |
| 28 | `theorem` | [ghostFun_zsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostfun-zsmul--d89110e91ad4703f6532bdf1.md) | 217 | `result-track:d89110e91ad4703f6532bdf17e45c8facc5c2f9ae2ecd0f258050875166e3f09` |
| 29 | `theorem` | [ghostFun_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostfun-pow--60a18528085f9d409c53fb21.md) | 222 | `result-track:60a18528085f9d409c53fb2170d81d4120ac171150566750732ab81f12f4099d` |
| 30 | `def` | [ghostEquiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostequiv--0646da3e3ebc76f372b74d6f.md) | 231 | `declaration-track:0646da3e3ebc76f372b74d6fec7603ff38a18130315be003f03939a1346f4ddf` |
| 31 | `def` | [comm_ring_aux₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/comm-ring-aux--c3c405f80f57bfbe4631b476.md) | 248 | `declaration-track:c3c405f80f57bfbe4631b47636abf8163f02c4cd6e01db5d1053deab6c12b87f` |
| 32 | `def` | [comm_ring_aux₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/comm-ring-aux--c8ea87fcbcfa46b9786a5047.md) | 256 | `declaration-track:c8ea87fcbcfa46b9786a504727cecb9d1cc695f41fbdd1a8dc8c584b8235a0f6` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/instance--e719f7f0025ae90448e306f1.md) | 264 | `declaration-track:e719f7f0025ae90448e306f181e70c7b51f4dfee5ac6ff56d024871302bf4834` |
| 34 | `def` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/map--75d999db5c29c26172ee94f0.md) | 273 | `declaration-track:75d999db5c29c26172ee94f03cfee3241c9f4e88e116fe47c853da36d975156f` |
| 35 | `theorem` | [map_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/map-injective--f31ea1a0ca4ae450f423324b.md) | 281 | `result-track:f31ea1a0ca4ae450f423324ba5d6caa9c858df37c3abf614083be5167a88326d` |
| 36 | `theorem` | [map_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/map-surjective--0c7f50d4f117362b0bfded08.md) | 285 | `result-track:0c7f50d4f117362b0bfded088b6a021887977f297a7cd80bcef88ea177a1da19` |
| 37 | `theorem` | [map_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/map-coeff--1561d5c0885e789a6c0f9425.md) | 290 | `result-track:1561d5c0885e789a6c0f9425ed24c6a7f04601f7afda3f70e80534771b89e381` |
| 38 | `def` | [ghostMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostmap--135f4c67b91dd373d8f56d31.md) | 296 | `declaration-track:135f4c67b91dd373d8f56d318df36f8f44fea66f8a0b75f60c87a0051044637d` |
| 39 | `def` | [ghostComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostcomponent--aa6fb2d230e879253a416d84.md) | 306 | `declaration-track:aa6fb2d230e879253a416d848295e931b1c1110fe1ef01becf1258a344d5fca9` |
| 40 | `theorem` | [ghostComponent_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostcomponent-apply--fd8924c6d0247aec2a9f3b82.md) | 310 | `result-track:fd8924c6d0247aec2a9f3b822edc45a326cb483613d081982be404d562bf8656` |
| 41 | `theorem` | [ghostMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostmap-apply--edbe4b4c286b341d1e8863d5.md) | 315 | `result-track:edbe4b4c286b341d1e8863d54a4feb9ef8782072e9c6c4d903db4bc24fdd26fb` |
| 42 | `def` | [ghostEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostequiv--2980e0a1904dd7cc5a37564c.md) | 325 | `declaration-track:2980e0a1904dd7cc5a37564c681844240ec0ba8e2e089ffa92b11bc2b602b906` |
| 43 | `theorem` | [ghostEquiv_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostequiv-coe--ad486071f9b7ea6093d01abb.md) | 330 | `result-track:ad486071f9b7ea6093d01abba154117e7bacb903fc9bb40fbf4d605fbdb1a9b4` |
| 44 | `theorem` | [ghostMap.bijective_of_invertible](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/ghostmap-bijective-of-invertible--519ccff3687c157db46d5312.md) | 334 | `result-track:519ccff3687c157db46d53126bad09e2cb25ec3c8d503b4446f0b5c281812043` |
| 45 | `def` | [constantCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/constantcoeff--ed66fd60f97f8864da999242.md) | 342 | `declaration-track:ed66fd60f97f8864da999242d03f1982716dffce693d640aa50f581f1c2405a8` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantab6d768d506e1608e25a47a5456ff6e4b289d8a8055ffe1de914d8ccd657e3b0.lean/declarations/instance--bbec70bd8c58099f6ffd43b7.md) | 350 | `declaration-track:bbec70bd8c58099f6ffd43b7aeaa7b2367ae5449245a884a75dee3c1f36c4761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
