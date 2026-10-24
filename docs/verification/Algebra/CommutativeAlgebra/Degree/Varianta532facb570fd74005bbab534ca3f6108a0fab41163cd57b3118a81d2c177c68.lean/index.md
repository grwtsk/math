# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Degree.Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b08cc3443c80e96cb7937a4156abb816c5f01d9",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b08cc3443c80e96cb7937a4156abb816c5f01d9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.DivisionPolynomial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ComputeDegree` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [natDegree_Ψ₂Sq_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-sq-le--c751d7a6f1b04751f7f6930c.md) | 61 | `result-track:c751d7a6f1b04751f7f6930c12b23f232b5dbec3d256e9a785fd01a1ba4150e9` |
| 2 | `lemma` | [coeff_Ψ₂Sq](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff-sq--6eb67c1c76e5e1411466573e.md) | 66 | `result-track:6eb67c1c76e5e1411466573e05285320924d31e2b17157b8b3a3ec60edec4e31` |
| 3 | `lemma` | [coeff_Ψ₂Sq_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff-sq-ne-zero--99f1309f5889afa71e29c3ae.md) | 70 | `result-track:99f1309f5889afa71e29c3aeff8998b69c7ba70a2e8a9a3617a990e9ce649efd` |
| 4 | `lemma` | [natDegree_Ψ₂Sq](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-sq--49a857eabb34f24e1745f8fb.md) | 74 | `result-track:49a857eabb34f24e1745f8fb8f46d4cc8895cf9e1581296d90d343f85851b381` |
| 5 | `lemma` | [natDegree_Ψ₂Sq_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-sq-pos--f6e66938d975680089a53f16.md) | 77 | `result-track:f6e66938d975680089a53f169a09dabc0d6240a8b34c8cd1490cc85eb10a44d9` |
| 6 | `lemma` | [leadingCoeff_Ψ₂Sq](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/leadingcoeff-sq--21cb050c84abf972c836fb9a.md) | 81 | `result-track:21cb050c84abf972c836fb9aa2de6b0860ba89ac3a39abfa11a448e39ce32a05` |
| 7 | `lemma` | [Ψ₂Sq_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/sq-ne-zero--424e969724306039415eae42.md) | 84 | `result-track:424e969724306039415eae4202823f643d449e2dd067c76b07c0d02bf8e16470` |
| 8 | `lemma` | [natDegree_Ψ₃_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-le--bf9f2a1e18439c06963d8a5a.md) | 91 | `result-track:bf9f2a1e18439c06963d8a5aace45a2b0b114bf1bbc0053021d74f69d362ba2e` |
| 9 | `lemma` | [coeff_Ψ₃](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff--39b692ebba7e7d3d594bec12.md) | 96 | `result-track:39b692ebba7e7d3d594bec12c461d0a13eac82cc8f50453c50140d99a10ca05d` |
| 10 | `lemma` | [coeff_Ψ₃_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff-ne-zero--35f57fe48614922f1169b2f6.md) | 100 | `result-track:35f57fe48614922f1169b2f6c865166e351972c1bf4cc53a0639bddbf66979ca` |
| 11 | `lemma` | [natDegree_Ψ₃](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree--a525db5a5ddbb84b71d866ff.md) | 104 | `result-track:a525db5a5ddbb84b71d866ffb815202e986079500792f9b19d7f1a761f0d69dd` |
| 12 | `lemma` | [natDegree_Ψ₃_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-pos--0d00117b265fd4b470820409.md) | 107 | `result-track:0d00117b265fd4b4708204096cbb483aa103c9d7257bd64edb958ab036790c44` |
| 13 | `lemma` | [leadingCoeff_Ψ₃](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/leadingcoeff--6b138110636aeabeccb1b151.md) | 111 | `result-track:6b138110636aeabeccb1b151aa16f9a015bc557439a7289db88552cb97069213` |
| 14 | `lemma` | [Ψ₃_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/ne-zero--18fa13243b79cfe8902caa13.md) | 114 | `result-track:18fa13243b79cfe8902caa13db194bb41f2a456e0dbfdfa70ad2f289bdda4884` |
| 15 | `lemma` | [natDegree_preΨ₄_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-pre-le--7fe5dfd1caef185bbe948adf.md) | 121 | `result-track:7fe5dfd1caef185bbe948adf5d656ec8aea671e8175491dd998464a4bfc9749d` |
| 16 | `lemma` | [coeff_preΨ₄](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff-pre--2f3668891d12f747505e2f1e.md) | 126 | `result-track:2f3668891d12f747505e2f1e7b081beb14a171575cdebba5a9b9ed9243ede6cd` |
| 17 | `lemma` | [coeff_preΨ₄_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff-pre-ne-zero--23832c77a5e34b91b2f33c86.md) | 130 | `result-track:23832c77a5e34b91b2f33c86398bbc77ab19bcc252a21f7bbf5570858826e3db` |
| 18 | `lemma` | [natDegree_preΨ₄](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-pre--883ae98c5ad7126126d319ea.md) | 134 | `result-track:883ae98c5ad7126126d319ea127bfd9620797b776439e1d47a4e833bb6fbdecd` |
| 19 | `lemma` | [natDegree_preΨ₄_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-pre-pos--1743e8f33263dae2f6fd2899.md) | 137 | `result-track:1743e8f33263dae2f6fd289915fbb16c5dbc37ecf250d9b921bd3f371db51cec` |
| 20 | `lemma` | [leadingCoeff_preΨ₄](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/leadingcoeff-pre--e8f78ea88b0dd83a5a1736a6.md) | 141 | `result-track:e8f78ea88b0dd83a5a1736a61c218dd672847b5208f86398a89f476f025722ef` |
| 21 | `lemma` | [preΨ₄_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/pre-ne-zero--80c7463ef05ad33c65de686e.md) | 144 | `result-track:80c7463ef05ad33c65de686eee951900712fad7cefbe569018447e60e5e3c805` |
| 22 | `def` | [expDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/expdegree--a066328d87673a29732c601a.md) | 151 | `declaration-track:a066328d87673a29732c601a19b4370dc696e80d5d335c2a5b6b5dd131ae6f89` |
| 23 | `lemma` | [expDegree_cast](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/expdegree-cast--18e51f54067ab63ec5a4001c.md) | 154 | `result-track:18e51f54067ab63ec5a4001cd0b2cd181b454dc48745ab4aa21373ddf87f8677` |
| 24 | `lemma` | [expDegree_rec](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/expdegree-rec--6612df9d2dce66acd407fac0.md) | 166 | `result-track:6612df9d2dce66acd407fac0c49447181c407ea2cfa2311717c4f06ff389304f` |
| 25 | `def` | [expCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/expcoeff--4bfcd2349784cc3599337149.md) | 179 | `declaration-track:4bfcd2349784cc35993371490f58fe96e80aa8de0fc9d7672cd7102bfbba9ada` |
| 26 | `lemma` | [expCoeff_cast](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/expcoeff-cast--ae69589af431aa4e30817ec2.md) | 182 | `result-track:ae69589af431aa4e30817ec2ac14e0bf94567ea793861042342443ef64351a12` |
| 27 | `lemma` | [expCoeff_rec](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/expcoeff-rec--d4dcc777eae1c82a309070e7.md) | 185 | `result-track:d4dcc777eae1c82a309070e76a2510739b7d3eccfd1e9df2a0fe194191d73aa5` |
| 28 | `lemma` | [natDegree_coeff_preΨ'](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-coeff-pre--6415e7c7dfb5c201f1eaff40.md) | 196 | `result-track:6415e7c7dfb5c201f1eaff404551827a3e2de940c2bed013154f48acb1df42dd` |
| 29 | `lemma` | [natDegree_preΨ'_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-pre-le--f4fe152eee3b6361502d77e7.md) | 229 | `result-track:f4fe152eee3b6361502d77e77cf91bda722b4d33482677e9782fa3710166998a` |
| 30 | `lemma` | [coeff_preΨ'](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff-pre--b4598590e19314f9140363db.md) | 233 | `result-track:b4598590e19314f9140363db139f3a05a4dec94fd497eb255aae07ca7840c2a4` |
| 31 | `lemma` | [coeff_preΨ'_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff-pre-ne-zero--8dcec35233a46b34f647b08e.md) | 238 | `result-track:8dcec35233a46b34f647b08e496db115ed554b8ee765497dc4a305e812a87038` |
| 32 | `lemma` | [natDegree_preΨ'](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-pre--f75f4cca92015e7a5e47fb3b.md) | 246 | `result-track:f75f4cca92015e7a5e47fb3b5f77bdec47965a251b3bc5616f62751c9c3553be` |
| 33 | `lemma` | [natDegree_preΨ'_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-pre-pos--902150200db1f873d767551b.md) | 250 | `result-track:902150200db1f873d767551b058e6f15468f118c86be253f29ce4b3ac4369cae` |
| 34 | `lemma` | [leadingCoeff_preΨ'](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/leadingcoeff-pre--4a537cb16b914a0e12bb4764.md) | 255 | `result-track:4a537cb16b914a0e12bb47642578e7ad0eb33fee4d9ea6af98af7e2281d69cf5` |
| 35 | `lemma` | [preΨ'_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/pre-ne-zero--7c6219647e8fbbe8665b1821.md) | 259 | `result-track:7c6219647e8fbbe8665b1821384ac426c4ab97eaca7aeb7f840edd62122bb2e2` |
| 36 | `lemma` | [natDegree_preΨ_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-pre-le--2ac0754fc1faa0afa90636d3.md) | 268 | `result-track:2ac0754fc1faa0afa90636d31460c284b07ad38d73b2ccd4d578d73c1d68a960` |
| 37 | `lemma` | [coeff_preΨ](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff-pre--a9674eeaa07c589d7e70e18e.md) | 275 | `result-track:a9674eeaa07c589d7e70e18e406d059f44f1f1e8b598416783f1172215849475` |
| 38 | `lemma` | [coeff_preΨ_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff-pre-ne-zero--607021e48d581280440c8b64.md) | 285 | `result-track:607021e48d581280440c8b64243be117010bbe49d476d7ba71cab4f7166ef3ed` |
| 39 | `lemma` | [natDegree_preΨ](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-pre--be26b9f61975254712b8f8d4.md) | 294 | `result-track:be26b9f61975254712b8f8d4a1936353c3784fdc1ed2164e33e9fb75a9926e17` |
| 40 | `lemma` | [natDegree_preΨ_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-pre-pos--e52a6f3ec3cb2ab30f417da9.md) | 298 | `result-track:e52a6f3ec3cb2ab30f417da9d172f377c2aeec879082e31facd9c874971d0187` |
| 41 | `lemma` | [leadingCoeff_preΨ](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/leadingcoeff-pre--810c5133e813d2579260226c.md) | 306 | `result-track:810c5133e813d2579260226c2d0dbdfd8081b10752afd06869a2e71b918de000` |
| 42 | `lemma` | [preΨ_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/pre-ne-zero--1f0a6c3b3446ba3d19f8e79c.md) | 310 | `result-track:1f0a6c3b3446ba3d19f8e79c43aa52a1eb1741ae1e34d3e498804ed02cef8425` |
| 43 | `lemma` | [natDegree_coeff_ΨSq_ofNat](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-coeff-sq-ofnat--3efb895198d1693efa3f5516.md) | 320 | `result-track:3efb895198d1693efa3f5516a66d856fe1f2b5fe8d1e49539defdd0670ccf040` |
| 44 | `lemma` | [natDegree_ΨSq_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-sq-le--f575980126ee4ae9935d9cfe.md) | 341 | `result-track:f575980126ee4ae9935d9cfefc64028e9f21428ad5c75bc169cf0c88d299b750` |
| 45 | `lemma` | [coeff_ΨSq](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff-sq--a2d0400da70db332541d2c74.md) | 347 | `result-track:a2d0400da70db332541d2c749fc8cda75497117d05e972dd9cdb6dd17d5d8ae0` |
| 46 | `lemma` | [coeff_ΨSq_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff-sq-ne-zero--5a9304f0fb2b6e3a1d50fe71.md) | 352 | `result-track:5a9304f0fb2b6e3a1d50fe711085695a58dd5a903121e16789d8ec76be718d55` |
| 47 | `lemma` | [natDegree_ΨSq](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-sq--1552a6b2a02acb83323eb347.md) | 357 | `result-track:1552a6b2a02acb83323eb34737ebb1118f4671ee715fb31d128ff5946727d394` |
| 48 | `lemma` | [natDegree_ΨSq_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-sq-pos--9fd4203f0098f1d988a8d604.md) | 361 | `result-track:9fd4203f0098f1d988a8d604e3116bb281199b41a13bfe4ed305527de5c08f79` |
| 49 | `lemma` | [leadingCoeff_ΨSq](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/leadingcoeff-sq--ab0c07f951d2fb9167933837.md) | 366 | `result-track:ab0c07f951d2fb9167933837ee285c8ea2a5f42c5358f67a895887def228531a` |
| 50 | `lemma` | [ΨSq_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/sq-ne-zero--df8c70a3790e915c50fc40ca.md) | 370 | `result-track:df8c70a3790e915c50fc40ca0a1f22e7749699ff1c68bc7c545065128a3882d9` |
| 51 | `lemma` | [natDegree_coeff_Φ_ofNat](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-coeff-ofnat--d6f1e40d303996f062c212cc.md) | 384 | `result-track:d6f1e40d303996f062c212cc7bfcb4c8d5048047bb172a5fce7033d4f846f49d` |
| 52 | `lemma` | [natDegree_Φ_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-le--5c331493534e2c4f06463ae5.md) | 416 | `result-track:5c331493534e2c4f06463ae5beeb700f539635b22fb2101ef66badba55c50f53` |
| 53 | `lemma` | [coeff_Φ](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff--4475b6084aa5173548942915.md) | 422 | `result-track:4475b6084aa5173548942915ccf917e78cecea3dd60efb998240a0966d9034aa` |
| 54 | `lemma` | [coeff_Φ_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/coeff-ne-zero--facd3567482d5fc6c789250e.md) | 427 | `result-track:facd3567482d5fc6c789250ee0b89b75f29867abdddd947b803871d6b6c938e8` |
| 55 | `lemma` | [natDegree_Φ](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree--f544c7a4ef7cba7b043f74ed.md) | 431 | `result-track:f544c7a4ef7cba7b043f74ed7a2cd90628ae8a2a63c520163823a65131d046ae` |
| 56 | `lemma` | [natDegree_Φ_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/natdegree-pos--270b4864abdbde853593ce76.md) | 434 | `result-track:270b4864abdbde853593ce769b4e59ea40e4fbe3e8d50100333a909ffa6616af` |
| 57 | `lemma` | [leadingCoeff_Φ](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/leadingcoeff--bc771faf6d26eef9ca201b43.md) | 438 | `result-track:bc771faf6d26eef9ca201b436717c7f513ae7aea8c98eb3bbe93b23c3087ddeb` |
| 58 | `lemma` | [Φ_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Varianta532facb570fd74005bbab534ca3f6108a0fab41163cd57b3118a81d2c177c68.lean/declarations/ne-zero--d25a2d32868feee09271f3f5.md) | 441 | `result-track:d25a2d32868feee09271f3f5422f5506db32e34c07d950c44001eaac5eebcb98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
