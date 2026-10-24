# Verification target: GRWTSK.Algebra.LinearAlgebra.AsTensorProduct.Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11615966bcf535215e3c8ebf2f9bd4886a739561",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11615966bcf535215e3c8ebf2f9bd4886a739561`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.DiagramLemmas.Four` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Exactness` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofTensorProductBil](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproductbil--7b4699422ceac49b5b309567.md) | 60 | `declaration-track:7b4699422ceac49b5b309567f4d517330f8e3a0faffd7ceafeff564e571db0ba` |
| 2 | `lemma` | [ofTensorProductBil_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproductbil-apply-apply--0cb00a8291a557b62f5e3fc0.md) | 72 | `result-track:0cb00a8291a557b62f5e3fc0b645130f24dd761bd870dd1f19b6db74063cb738` |
| 3 | `def` | [ofTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproduct--1205e6addbde05384e6592dc.md) | 78 | `declaration-track:1205e6addbde05384e6592dcf5d1ab8de93d505ad67c71d4550e774d93a8b859` |
| 4 | `lemma` | [ofTensorProduct_tmul](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproduct-tmul--bfb014f24802043c317773d2.md) | 82 | `result-track:bfb014f24802043c317773d267c53a3f8bfae8cff4e9867b8fba46d85c2bd354` |
| 5 | `lemma` | [ofTensorProduct_naturality](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproduct-naturality--9dabdca11f935884a4e2fdd7.md) | 88 | `result-track:9dabdca11f935884a4e2fdd7f6d3f322585da21f476a77d9da5d71846c4ba0ec` |
| 6 | `lemma` | [piEquivOfFintype_comp_ofTensorProduct_eq](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/piequivoffintype-comp-oftensorproduct-eq--9f0e75f3fb1249c0cd72c383.md) | 106 | `result-track:9f0e75f3fb1249c0cd72c3832278ecb3ef93ec023f95b794979f3b3f03897702` |
| 7 | `lemma` | [ofTensorProduct_eq](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproduct-eq--9f28cbc6407863a9e6f760af.md) | 114 | `result-track:9f28cbc6407863a9e6f760af4e95b8053bd5ef00d44f5e7bea4304385ce322a1` |
| 8 | `def` | [ofTensorProductInvOfPiFintype](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproductinvofpifintype--46f78ef6c12b68efe4b57321.md) | 121 | `declaration-track:46f78ef6c12b68efe4b57321b1bf415c3595897f9d65a938450f25e6e6129220` |
| 9 | `lemma` | [ofTensorProductInvOfPiFintype_comp_ofTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproductinvofpifintype-comp-oftensorproduct--a992310ceb12531f758a2fd5.md) | 127 | `result-track:a992310ceb12531f758a2fd55474f154158c7d9722768c7e8b67c58adde7a033` |
| 10 | `lemma` | [ofTensorProduct_comp_ofTensorProductInvOfPiFintype](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproduct-comp-oftensorproductinvofpifintype--3718dabe2aef61f8f0775f48.md) | 133 | `result-track:3718dabe2aef61f8f0775f48a19f5778991709d2812df40e2e85142a35a13aa8` |
| 11 | `def` | [ofTensorProductEquivOfPiFintype](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproductequivofpifintype--13ecd1576921c4b1d053f4e4.md) | 141 | `declaration-track:13ecd1576921c4b1d053f4e4a7b97bc068c5b092970b23ba15bb4031d332e7a8` |
| 12 | `lemma` | [ofTensorProduct_bijective_of_pi_of_fintype](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproduct-bijective-of-pi-of-fintype--c999e58de4fc0281d302b235.md) | 152 | `result-track:c999e58de4fc0281d302b235ceaf2287db4ffc37009f6090de53dcb645abbb04` |
| 13 | `lemma` | [ofTensorProduct_surjective_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproduct-surjective-of-finite--b1514685f3bca625341e2df8.md) | 162 | `result-track:b1514685f3bca625341e2df8a6690c215ee40b84d67c775a93762ee8029fa79b` |
| 14 | `def` | [lTensorKerIncl](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/ltensorkerincl--de39219db64bf998a2810698.md) | 217 | `declaration-track:de39219db64bf998a28106985f65a7fe1f8329aa4840d74aca3d3f1a0a1ce26e` |
| 15 | `def` | [lTensorf](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/ltensorf--5cb07166f64d82d17255db4b.md) | 222 | `declaration-track:5cb07166f64d82d17255db4b411212eca668041a5a6dcf39a0b6eb72fb6e298a` |
| 16 | `lemma` | [tens_exact](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/tens-exact--7d26f19126bf9f377d6f8062.md) | 231 | `result-track:7d26f19126bf9f377d6f8062b64845af54899376186583dcae6ac112c78dd8af` |
| 17 | `lemma` | [tens_surj](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/tens-surj--42a9cd395a6a90cd06925276.md) | 234 | `result-track:42a9cd395a6a90cd069252765b181aefb94b718707c3a822dba831f7e81f4a65` |
| 18 | `lemma` | [adic_exact](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/adic-exact--b917898965948e4002671124.md) | 237 | `result-track:b917898965948e4002671124716e9844c1bd67eadeed2d22dc7a5d25aac9a3fe` |
| 19 | `lemma` | [adic_surj](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/adic-surj--495fab2920f29556ea15064b.md) | 241 | `result-track:495fab2920f29556ea15064b1c87fa37720cb9ca7407e42eb4a78b00c6bf49e8` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/instance--55ed9551ce4a1c775aed9e70.md) | 247 | `declaration-track:55ed9551ce4a1c775aed9e70ae8adae6e1b8c5f68d4901dddab646deb5315f1e` |
| 21 | `def` | [firstRow](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/firstrow--4dc90c5f5d2e769717c22f8a.md) | 250 | `declaration-track:4dc90c5f5d2e769717c22f8a0f2202a2ba8fab236fd0b39bd61b1ead55328a7b` |
| 22 | `def` | [secondRow](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/secondrow--4db1ab8566239e65b772e23f.md) | 257 | `declaration-track:4db1ab8566239e65b772e23fe5c231cb14e55330f47700db9f8390413899fb31` |
| 23 | `lemma` | [firstRow_exact](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/firstrow-exact--1985e5b6d064c99a4423bc20.md) | 266 | `result-track:1985e5b6d064c99a4423bc207bb99f7bcc9aab0dc5da7c48ab53bbf7f6abacf9` |
| 24 | `lemma` | [secondRow_exact](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/secondrow-exact--143221a1ba8b12aef4fe3fc2.md) | 278 | `result-track:143221a1ba8b12aef4fe3fc29f426bb1035892188c6a8c946e0d88aea6d71284` |
| 25 | `def` | [firstRowToSecondRow](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/firstrowtosecondrow--400f555499d73865cad00d7e.md) | 291 | `declaration-track:400f555499d73865cad00d7eff246facd88e2c04f8948ecb29220a644a49e28f` |
| 26 | `lemma` | [ofTensorProduct_iso](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproduct-iso--4a134b3dece90910687fba95.md) | 303 | `result-track:4a134b3dece90910687fba952b8aa6de1ccdfd4b7aa6991fa2e9d65b2eae54b4` |
| 27 | `lemma` | [ofTensorProduct_bijective_of_map_from_fin](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproduct-bijective-of-map-from-fin--17de7606c419ccad6eefeec2.md) | 319 | `result-track:17de7606c419ccad6eefeec25670a4b61420bd8c89fca2ebc349c787e12da020` |
| 28 | `theorem` | [ofTensorProduct_bijective_of_finite_of_isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproduct-bijective-of-finite-of-isnoetherian--c84d702e41392e694be38f8f.md) | 331 | `result-track:c84d702e41392e694be38f8f2d25b803b6c35c80812c3b8a9524744c378b2655` |
| 29 | `def` | [ofTensorProductEquivOfFiniteNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproductequivoffinitenoetherian--0ca2f1adee224a39e597059d.md) | 339 | `declaration-track:0ca2f1adee224a39e597059dcc518508bd3a6e1e6b4ed4874257072508dab11b` |
| 30 | `lemma` | [coe_ofTensorProductEquivOfFiniteNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/coe-oftensorproductequivoffinitenoetherian--d2d55f7d1206caab8a4218b0.md) | 344 | `result-track:d2d55f7d1206caab8a4218b03f872ea1636ce43112589c4a5a84e7a22029afd9` |
| 31 | `lemma` | [ofTensorProductEquivOfFiniteNoetherian_apply](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproductequivoffinitenoetherian-apply--b3cbfa2959e21e1e39c57706.md) | 349 | `result-track:b3cbfa2959e21e1e39c577066be1ccdc987705859807b48ec512de87eb9229ac` |
| 32 | `lemma` | [ofTensorProductEquivOfFiniteNoetherian_symm_of](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/oftensorproductequivoffinitenoetherian-symm-of--2d191c19535ec9cf48a75ff3.md) | 355 | `result-track:2d191c19535ec9cf48a75ff31c57ee2737ad3352bef90391b3a7dcd5b81cf91b` |
| 33 | `lemma` | [tensor_map_id_left_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/tensor-map-id-left-eq-map--fcaf1b92d3ffb703dfdeebdb.md) | 368 | `result-track:fcaf1b92d3ffb703dfdeebdb5baf74566f144cca8db9922e043da314c3ed3b8e` |
| 34 | `lemma` | [tensor_map_id_left_injective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/tensor-map-id-left-injective-of-injective--4bb007d5e039c01af0363ab1.md) | 379 | `result-track:4bb007d5e039c01af0363ab13209c949ecaa148d95caea5fbf0f920fcee52001` |
| 35 | `instance` | [flat_of_isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/declarations/flat-of-isnoetherian--7b9fbb8f061d281a891f59cc.md) | 390 | `declaration-track:7b9fbb8f061d281a891f59cc0a783b0461c30eb5725bbe220a052e9f423c0a39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
