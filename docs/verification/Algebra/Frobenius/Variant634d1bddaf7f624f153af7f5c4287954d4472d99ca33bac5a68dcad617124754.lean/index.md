# Verification target: GRWTSK.Algebra.Frobenius.Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ea93b0c41b922140d168b0ec6fff4e801ba9761",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/index.md) · [Full source](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ea93b0c41b922140d168b0ec6fff4e801ba9761`.

Source path: `GRWTSK/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Multiplicity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frobeniusPolyRat](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobeniuspolyrat--8f1392ac6181410db6768313.md) | 77 | `declaration-track:8f1392ac6181410db676831398dd4299262b5bba3b4af50bcd73640ebe6bd905` |
| 2 | `theorem` | [bind₁_frobeniusPolyRat_wittPolynomial](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/bind-frobeniuspolyrat-wittpolynomial--8fcc8fc4f13ae83841944647.md) | 81 | `result-track:8fcc8fc4f13ae8384194464711c0fb4d7a017ef6f182b9c905c0f44535578f1a` |
| 3 | `def` | [pnat_multiplicity](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/pnat-multiplicity--8e3cfd3798cae1ab1a6dec5c.md) | 89 | `declaration-track:8e3cfd3798cae1ab1a6dec5c2d552584746165cd9dc474de303865c0ac0e30db` |
| 4 | `def` | [frobeniusPolyAux](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobeniuspolyaux--2111e3ee205457359e3f9f99.md) | 98 | `declaration-track:2111e3ee205457359e3f9f9983a6f3a426f2f88e7a4a275a582931223e24d975` |
| 5 | `theorem` | [frobeniusPolyAux_eq](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobeniuspolyaux-eq--2f1569b6ce6db976aac2c3f7.md) | 107 | `result-track:2f1569b6ce6db976aac2c3f760127203799b3ae6757e278262fb7b77842a0a44` |
| 6 | `def` | [frobeniusPoly](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobeniuspoly--79dc4702ddbe5d5210307bbe.md) | 119 | `declaration-track:79dc4702ddbe5d5210307bbe4c4884331ff15ed1c5ea1394e50aa8360d64e876` |
| 7 | `theorem` | [map_frobeniusPoly.key₁](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/map-frobeniuspoly-key--829255a5d364477ac115bd4d.md) | 133 | `result-track:829255a5d364477ac115bd4d65b63e96229c7a60ad78386031618b23f7133154` |
| 8 | `theorem` | [map_frobeniusPoly.key₂](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/map-frobeniuspoly-key--9e352da08a96972ea192baa8.md) | 141 | `result-track:9e352da08a96972ea192baa81548a71b3ad39efcf2ed39797dad733b5abc8a41` |
| 9 | `theorem` | [map_frobeniusPoly](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/map-frobeniuspoly--2321cbee19045d5b9ab05751.md) | 153 | `result-track:2321cbee19045d5b9ab05751080a6bdde2cee55ea940df31440cead2fd329fb8` |
| 10 | `theorem` | [frobeniusPoly_zmod](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobeniuspoly-zmod--0102e11e83dc2cf07b5cd343.md) | 207 | `result-track:0102e11e83dc2cf07b5cd343fc2897ab8a14e681d6bba3d023d966d965c392d2` |
| 11 | `theorem` | [bind₁_frobeniusPoly_wittPolynomial](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/bind-frobeniuspoly-wittpolynomial--eef2990e07b6cbd3c76f592a.md) | 214 | `result-track:eef2990e07b6cbd3c76f592aea0feb591ab90bda60406fc5e9dd2a4f3119f412` |
| 12 | `def` | [frobeniusFun](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobeniusfun--79d795afe643274c4c55dd15.md) | 225 | `declaration-track:79d795afe643274c4c55dd15348750e2790a1acec791160638807997fa83a66d` |
| 13 | `theorem` | [coeff_frobeniusFun](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/coeff-frobeniusfun--03f43a6f78bdf39120e91bd8.md) | 229 | `result-track:03f43a6f78bdf39120e91bd8c30a39085329b5c6f41a25d37802b16024a2aa14` |
| 14 | `instance` | [frobeniusFun_isPoly](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobeniusfun-ispoly--b0b85fd957ef50955f8b43a0.md) | 240 | `declaration-track:b0b85fd957ef50955f8b43a0ff9d20674db7790497e78874c60832ed493b7a62` |
| 15 | `theorem` | [ghostComponent_frobeniusFun](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/ghostcomponent-frobeniusfun--fbc82cdd5bc7aab1cc6fe365.md) | 247 | `result-track:fbc82cdd5bc7aab1cc6fe365aa1a6b2e8d2efd53f43b27e05a0869b0352c2fa2` |
| 16 | `def` | [frobenius](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobenius--34c27831402cf11fe397a43d.md) | 260 | `declaration-track:34c27831402cf11fe397a43ded3f11fc6a826f1876cc88cabc036517fbb2124d` |
| 17 | `theorem` | [coeff_frobenius](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/coeff-frobenius--23fe08c2d98cabf7ad9c2468.md) | 280 | `result-track:23fe08c2d98cabf7ad9c246827c32d41e9f2d8817d8591ce51edb950de24d9b4` |
| 18 | `theorem` | [ghostComponent_frobenius](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/ghostcomponent-frobenius--3625158dfe8a2ed7bc706683.md) | 286 | `result-track:3625158dfe8a2ed7bc706683d47565415b1edb23d95e33a583c8cc9c13245c04` |
| 19 | `instance` | [frobenius_isPoly](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobenius-ispoly--722e446c1d1e72841d6ddd7b.md) | 295 | `declaration-track:722e446c1d1e72841d6ddd7b35f3fe628d9a62ee4628bb575421d9f8754800ce` |
| 20 | `theorem` | [coeff_frobenius_charP](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/coeff-frobenius-charp--fabf075d57a8a2b9f24d8553.md) | 304 | `result-track:fabf075d57a8a2b9f24d8553614f2f359bbaf36050da5684664e99180454b2ed` |
| 21 | `theorem` | [frobenius_eq_map_frobenius](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobenius-eq-map-frobenius--9c616ed2c7f76d6cb4152096.md) | 320 | `result-track:9c616ed2c7f76d6cb4152096ecc18c0edfbc9f362e4527e6385e040731b60060` |
| 22 | `theorem` | [frobenius_zmodp](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobenius-zmodp--dc4a951b2839ee63636faf91.md) | 326 | `result-track:dc4a951b2839ee63636faf919b5bac716e59ed51269b2169a8d15543baf269c0` |
| 23 | `def` | [frobeniusEquiv](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobeniusequiv--ac0c546947ba4a376ff47bf6.md) | 334 | `declaration-track:ac0c546947ba4a376ff47bf622fcbe9aaee9eddce0605aa9d6994753f16b1bfe` |
| 24 | `theorem` | [frobenius_bijective](../../../../mathematics/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/declarations/frobenius-bijective--404e5ff3628e4904713dc8ae.md) | 346 | `result-track:404e5ff3628e4904713dc8aeff538d981af3c2e4f5f970c854f1a3ec2e8a85b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
