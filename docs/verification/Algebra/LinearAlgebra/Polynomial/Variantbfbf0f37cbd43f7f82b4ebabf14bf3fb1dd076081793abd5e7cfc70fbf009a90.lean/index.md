# Verification target: GRWTSK.Algebra.LinearAlgebra.Polynomial.Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e55fdea81e3b2aecfe8bcf90c2f5c41389eabaf",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e55fdea81e3b2aecfe8bcf90c2f5c41389eabaf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean.json)

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
| 1 | `def` | [toMvPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial--5b41939f4c511c8873433f02.md) | 91 | `declaration-track:5b41939f4c511c8873433f021b8d7e9221a0afc5e2007b09a0f8001296b0eaa0` |
| 2 | `lemma` | [toMvPolynomial_eval_eq_apply](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-eval-eq-apply--91eb12f5cb71c9cb12843a0c.md) | 94 | `result-track:91eb12f5cb71c9cb12843a0ce7596ac427e85de069f62f20ce16c8576d89724c` |
| 3 | `lemma` | [toMvPolynomial_map](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-map--88ad5ee0b5fb301f673722fd.md) | 99 | `result-track:88ad5ee0b5fb301f673722fdfac18cb092f844fc2cff87b56e2613d774a7afb2` |
| 4 | `lemma` | [toMvPolynomial_isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-ishomogeneous--02fd3e278b79d85d5fedd7ff.md) | 103 | `result-track:02fd3e278b79d85d5fedd7ff56c44cb03e638fdbae00d169c1d71f87b419b01b` |
| 5 | `lemma` | [toMvPolynomial_totalDegree_le](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-totaldegree-le--e86060e2b572366d2a9b0971.md) | 110 | `result-track:e86060e2b572366d2a9b09719156acc53aa104b2d303f221802ce946a40958ee` |
| 6 | `lemma` | [toMvPolynomial_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-constantcoeff--076c7f2de336cd87927b7855.md) | 115 | `result-track:076c7f2de336cd87927b7855bf4639b884be0cffb23ef8fc9059a265405518ea` |
| 7 | `lemma` | [toMvPolynomial_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-zero--3531c3ae06feb3124fc48a45.md) | 121 | `result-track:3531c3ae06feb3124fc48a45c63c37054452380de7c715b690cb8bccbe4e4996` |
| 8 | `lemma` | [toMvPolynomial_one](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-one--675f4a3984268727ddec93ae.md) | 125 | `result-track:675f4a3984268727ddec93ae0bc14fad6054009b79eed4c77dc0fd7d7858cfc7` |
| 9 | `lemma` | [toMvPolynomial_add](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-add--a50319e29099e29929e83af0.md) | 133 | `result-track:a50319e29099e29929e83af0330f5164829802484c8730d64e088457c5091958` |
| 10 | `lemma` | [toMvPolynomial_mul](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-mul--1bc2dc2fce8d7681d1975025.md) | 139 | `result-track:1bc2dc2fce8d7681d19750255aaa550f5ca3f20bed88090bc438e26fd79a4c25` |
| 11 | `def` | [toMvPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial--1bdad7790288a7e5da1109de.md) | 167 | `declaration-track:1bdad7790288a7e5da1109deecd60bed79f1f7760b303560e4c963de5ccb15d3` |
| 12 | `lemma` | [toMvPolynomial_eval_eq_apply](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-eval-eq-apply--2bc35160cccdb0cc90721160.md) | 171 | `result-track:2bc35160cccdb0cc90721160855169ae4b915161234b5ba9f65c4037b30eb6c3` |
| 13 | `lemma` | [toMvPolynomial_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-basechange--3d255d768bb0cd4ac5a69052.md) | 177 | `result-track:3d255d768bb0cd4ac5a69052d873d195e0c4585c4087fcc6d84cf1fd9262c784` |
| 14 | `lemma` | [toMvPolynomial_isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-ishomogeneous--2022e292806f73ec384dc18e.md) | 182 | `result-track:2022e292806f73ec384dc18eb10b4c778d8925e213a44558d6ee3099006b2d35` |
| 15 | `lemma` | [toMvPolynomial_totalDegree_le](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-totaldegree-le--f6d4ead6c3f44956106c5e63.md) | 186 | `result-track:f6d4ead6c3f44956106c5e633d2409ae0f860e5bb6456be33ebc0ac7891588a0` |
| 16 | `lemma` | [toMvPolynomial_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-constantcoeff--27c99c36a4cd5deb1e4020d6.md) | 191 | `result-track:27c99c36a4cd5deb1e4020d690dd28d17097253015b348202e3cd50e34bce37d` |
| 17 | `lemma` | [toMvPolynomial_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-zero--f6dd1cafc18f05d4a9e2a3e4.md) | 196 | `result-track:f6dd1cafc18f05d4a9e2a3e4f8d1045242a48b50b62728685c2b08dda7f9bee7` |
| 18 | `lemma` | [toMvPolynomial_id](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-id--6edf772a43d997586583bc99.md) | 200 | `result-track:6edf772a43d997586583bc997fb2eaf005e74f7149c1a6e0c2fd91eb8cc8b0ed` |
| 19 | `lemma` | [toMvPolynomial_add](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-add--31cd5c0308cd57a0064c1830.md) | 203 | `result-track:31cd5c0308cd57a0064c183073d3582c9d1ba20926abb31eae201102852bf651` |
| 20 | `lemma` | [toMvPolynomial_comp](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/tomvpolynomial-comp--3cc869bc6cc6bcbdfd79bdee.md) | 216 | `result-track:3cc869bc6cc6bcbdfd79bdee6624b5476d43da87d1a584f11263b908da8fff5e` |
| 21 | `def` | [polyCharpolyAux](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpolyaux--34216a95e2420a8201909b3b.md) | 248 | `declaration-track:34216a95e2420a8201909b3b6bcc222ecaae21ce4392fc615bd61aa9fcd93fca` |
| 22 | `lemma` | [polyCharpolyAux_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpolyaux-basechange--a94f6bafa4da190fb6a2ee20.md) | 253 | `result-track:a94f6bafa4da190fb6a2ee20fe59fc521af9edbf88e8ad16de0a0c492be4addf` |
| 23 | `lemma` | [polyCharpolyAux_map_eq_toMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpolyaux-map-eq-tomatrix-charpoly--1c764641d4c00a81f79192db.md) | 285 | `result-track:1c764641d4c00a81f79192db4dd762f5bb2b3ea81d450f81b34f808eda39ffc7` |
| 24 | `lemma` | [polyCharpolyAux_eval_eq_toMatrix_charpoly_coeff](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpolyaux-eval-eq-tomatrix-charpoly-coeff--f8c9d0b2b47e7284cdda35c9.md) | 296 | `result-track:f8c9d0b2b47e7284cdda35c9cb037c24c2bcc45968c41efeac340347993b119d` |
| 25 | `lemma` | [polyCharpolyAux_map_eq_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpolyaux-map-eq-charpoly--9cb3d50a5698fceb906c8102.md) | 302 | `result-track:9cb3d50a5698fceb906c8102699169b61b73814a18dd9b64dfc96638968ea729` |
| 26 | `lemma` | [polyCharpolyAux_coeff_eval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpolyaux-coeff-eval--dfefb9d0b76c847a4345943c.md) | 309 | `result-track:dfefb9d0b76c847a4345943ce20d2d0cc10ecc44bdd43db6fb83a1948d282086` |
| 27 | `lemma` | [polyCharpolyAux_map_eval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpolyaux-map-eval--312e3969623e9f28b53995ed.md) | 315 | `result-track:312e3969623e9f28b53995edf5b9290f2bf2fe8c0bc7e7999701ee1286c4b829` |
| 28 | `lemma` | [polyCharpolyAux_map_aeval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpolyaux-map-aeval--88414dcc591dd2538daa4666.md) | 323 | `result-track:88414dcc591dd2538daa4666cb7a88437af1952bf185527f320622a7fae0a6a3` |
| 29 | `lemma` | [polyCharpolyAux_basisIndep](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpolyaux-basisindep--0a86cfd56b93d7e0be98b991.md) | 344 | `result-track:0a86cfd56b93d7e0be98b9914ab873fbfbf07bea708444d527940d1615d30f09` |
| 30 | `def` | [polyCharpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly--78d9f8cec3d329ed5f36f759.md) | 371 | `declaration-track:78d9f8cec3d329ed5f36f759a3f1f1333c179e654fb240a06a81c0f7683ae598` |
| 31 | `lemma` | [polyCharpoly_eq_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly-eq-of-basis--8acc367b18bd023690070b16.md) | 374 | `result-track:8acc367b18bd023690070b161a7363b3d6239a2719993b3d0b70a171abc1e462` |
| 32 | `lemma` | [polyCharpoly_monic](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly-monic--87e40e2b6059e26ce3ffa443.md) | 380 | `result-track:87e40e2b6059e26ce3ffa443d349b297f6cc7a1b9941f787548b264e7236c81f` |
| 33 | `lemma` | [polyCharpoly_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly-ne-zero--79d0284a6d0bed8f181e7c24.md) | 383 | `result-track:79d0284a6d0bed8f181e7c2424b3678b3fb19798f64451442220c13b4b2ceeec` |
| 34 | `lemma` | [polyCharpoly_natDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly-natdegree--d9f10648d389aa4e06ec571e.md) | 387 | `result-track:d9f10648d389aa4e06ec571ee0dbc04c62ddf9e537a38823f16f5c6a9445ef84` |
| 35 | `lemma` | [polyCharpoly_coeff_isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly-coeff-ishomogeneous--aa5de10f76f1fad4fc4cc936.md) | 392 | `result-track:aa5de10f76f1fad4fc4cc936f85f909aea457c573443c7021710487adecc3344` |
| 36 | `lemma` | [polyCharpoly_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly-basechange--7de417d2a629acd065acabfe.md) | 401 | `result-track:7de417d2a629acd065acabfecb31195a3f81952f39bb717204c3f9ee4cd4bb35` |
| 37 | `lemma` | [polyCharpoly_map_eq_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly-map-eq-charpoly--8a9554706ad84992f632854d.md) | 409 | `result-track:8a9554706ad84992f632854d819eb68f834917694b8f92e20999d75fce1318dd` |
| 38 | `lemma` | [polyCharpoly_coeff_eval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly-coeff-eval--5d28b70c09b2029a9830d539.md) | 414 | `result-track:5d28b70c09b2029a9830d53934afa1f05fa74d8f0f511332d278aebbe9e69ad6` |
| 39 | `lemma` | [polyCharpoly_coeff_eq_zero_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly-coeff-eq-zero-of-basis--f0205e018559bdca02e4cfe1.md) | 418 | `result-track:f0205e018559bdca02e4cfe1a4b3970686d95648a4a136b10e1d9f62bcafbd18` |
| 40 | `lemma` | [polyCharpoly_coeff_eq_zero_iff_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly-coeff-eq-zero-iff-of-basis--04eba020e225437725daaea1.md) | 429 | `result-track:04eba020e225437725daaea1bd553f25ed8b599f292213d9869489bead86dfe8` |
| 41 | `def` | [nilRankAux](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/nilrankaux--fc88b4e714a9a6a07839e905.md) | 444 | `declaration-track:fc88b4e714a9a6a07839e905700b6af2a615b46731c69e94c2ad3b036e312d12` |
| 42 | `lemma` | [polyCharpoly_coeff_nilRankAux_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly-coeff-nilrankaux-ne-zero--9e29de8ad64ae8ceaf3131bb.md) | 447 | `result-track:9e29de8ad64ae8ceaf3131bb07fe6717d086420484b4dfdf83822fc90665e8e5` |
| 43 | `lemma` | [nilRankAux_le](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/nilrankaux-le--06697ebc3198e99a33f11486.md) | 452 | `result-track:06697ebc3198e99a33f114867f5e235d48357345b44d0f163110dcad57a10dc2` |
| 44 | `lemma` | [nilRankAux_basis_indep](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/nilrankaux-basis-indep--f2f461e445d7130190ab96b3.md) | 458 | `result-track:f2f461e445d7130190ab96b35c5d6825aea5a78f96cf1cd629dca7f5b31b6613` |
| 45 | `def` | [nilRank](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/nilrank--18557f85c0e560e78da383e2.md) | 474 | `declaration-track:18557f85c0e560e78da383e2e144fb2b682bd98574268ee1ae285115a55fa0ff` |
| 46 | `lemma` | [nilRank_eq_polyCharpoly_natTrailingDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/nilrank-eq-polycharpoly-nattrailingdegree--63697f05f56b1e2cf83c880d.md) | 480 | `result-track:63697f05f56b1e2cf83c880d350125abcaf8cd0722a5f6ed4ea441b6c348223d` |
| 47 | `lemma` | [polyCharpoly_coeff_nilRank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/polycharpoly-coeff-nilrank-ne-zero--e9dc83b9b192ae968be8d432.md) | 484 | `result-track:e9dc83b9b192ae968be8d43293cacd25194b6cd5fab5c6088b7affb9b9aa8923` |
| 48 | `lemma` | [nilRank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/nilrank-le-card--77e4c1b8d88645ebee42663c.md) | 491 | `result-track:77e4c1b8d88645ebee42663c15631f60708360dfd9f8470504d37222b0a8a0e2` |
| 49 | `lemma` | [nilRank_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/nilrank-le-finrank--7c8d7685cc9f3d2eff180186.md) | 497 | `result-track:7c8d7685cc9f3d2eff180186d6dad6f1eae54314543237fdf0c49e7d69904739` |
| 50 | `lemma` | [nilRank_le_natTrailingDegree_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/nilrank-le-nattrailingdegree-charpoly--ccefb11b5a238626ec1857da.md) | 500 | `result-track:ccefb11b5a238626ec1857da29c052683fa6a23d7b20f22d2b334f9116fb01c7` |
| 51 | `def` | [IsNilRegular](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/isnilregular--a0743beb1ac36c7ee3025fb9.md) | 517 | `declaration-track:a0743beb1ac36c7ee3025fb9687bf321e601975d4c664dfcdd6f756a01b1eabd` |
| 52 | `lemma` | [isNilRegular_def](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/isnilregular-def--09d08b9433f3f6c26a9ac0b2.md) | 522 | `result-track:09d08b9433f3f6c26a9ac0b2e41612273144b36666153e4aa59b2886ceec85bf` |
| 53 | `lemma` | [isNilRegular_iff_coeff_polyCharpoly_nilRank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/isnilregular-iff-coeff-polycharpoly-nilrank-ne-zero--35b9d8659bf9df029d83d448.md) | 525 | `result-track:35b9d8659bf9df029d83d448458c9e07060f1599b779e80b883cb907b15dcd7e` |
| 54 | `lemma` | [isNilRegular_iff_natTrailingDegree_charpoly_eq_nilRank](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/isnilregular-iff-nattrailingdegree-charpoly-eq-nilrank--98724017a5d32fa445c00f7e.md) | 531 | `result-track:98724017a5d32fa445c00f7e4526899b99a7266b7c05ceac83f39ad3cb19f2c3` |
| 55 | `lemma` | [exists_isNilRegular_of_finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/exists-isnilregular-of-finrank-le-card--5dc24fa8ef2fc1d45bf8efc8.md) | 549 | `result-track:5dc24fa8ef2fc1d45bf8efc8aee0f380e62498da5aa963e63561eb84f28307f6` |
| 56 | `lemma` | [exists_isNilRegular](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/declarations/exists-isnilregular--bbd44e16427aba9ebd2df7db.md) | 567 | `result-track:bbd44e16427aba9ebd2df7dba8e6513cee4390b7d1d96d75389191929cee1b1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
