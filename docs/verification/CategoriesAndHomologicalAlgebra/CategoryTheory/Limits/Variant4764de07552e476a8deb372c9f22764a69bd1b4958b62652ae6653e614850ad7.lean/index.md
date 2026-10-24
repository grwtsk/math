# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2eb92b621205d4c9c17cf32155b7495096a36a8c",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2eb92b621205d4c9c17cf32155b7495096a36a8c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorialityRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/functorialityrightadjoint--4563e66ddf354638a6cd29e2.md) | 60 | `declaration-track:4563e66ddf354638a6cd29e2df74a8650369573269b33bce6620e0e2970f531e` |
| 2 | `def` | [functorialityUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/functorialityunit--eba394f0a9e8a6fe5a87fdfb.md) | 71 | `declaration-track:eba394f0a9e8a6fe5a87fdfbfd60eea0d78fbfd0e62c6c2ce0c53a3862bb0864` |
| 3 | `def` | [functorialityCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/functorialitycounit--9c3fdf789c3b88ddeadfd5df.md) | 80 | `declaration-track:9c3fdf789c3b88ddeadfd5dfe8a3661e0eb80251fc46f1442fa74b0a166e48c2` |
| 4 | `def` | [functorialityAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/functorialityadjunction--df2490733d5082450b946236.md) | 85 | `declaration-track:df2490733d5082450b946236ee7ea7c173d1c64a1c8cc4dc20d20c74bbeaabcd` |
| 5 | `lemma` | [leftAdjoint_preservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/leftadjoint-preservescolimits--c2c94a3639a0e75fa3694f14.md) | 92 | `result-track:c2c94a3639a0e75fa3694f14403ebd42fea870bc4d4f7c2b4673bd906c351dc8` |
| 6 | `lemma` | [leftAdjointPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/leftadjointpreservescolimits--e42337cb8171b71ab022718b.md) | 102 | `result-track:e42337cb8171b71ab022718be5e753db4f786a162b9cf7e799dd1aa14e1dd0ff` |
| 7 | `instance` | [colim_preservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/colim-preservescolimits--19acf59749399280b19cee0b.md) | 106 | `declaration-track:19acf59749399280b19cee0bb45fa3b7c4514a661f9d0db9f281c42e3431a9cd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/instance--26e4da9826735bd92f9c6ecf.md) | 111 | `declaration-track:26e4da9826735bd92f9c6ecf426d76ea5a607865bf84652c7d5c2d9714a3c377` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/instance--2a63f4679f2848329398f481.md) | 117 | `declaration-track:2a63f4679f2848329398f4811305cad8fba39648e0027d9c3a2ccedf4b0979b7` |
| 10 | `lemma` | [isEquivalenceReflectsColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/isequivalencereflectscolimits--fff84e3ea3076361955662fb.md) | 127 | `result-track:fff84e3ea3076361955662fb19da5f2e3290d11446307ea86a92191cc180efbe` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/instance--786ef58068e90328fe6fb2a8.md) | 132 | `declaration-track:786ef58068e90328fe6fb2a8ebf05e6b44b91be7532ee35d80db7003c048d9fc` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/example--c4c742e8c2de61afb57f25be.md) | 146 | `declaration-track:c4c742e8c2de61afb57f25be6c83abd7803c107e527d7c324e1e1921219f1f14` |
| 13 | `theorem` | [hasColimit_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/hascolimit-comp-equivalence--337fc9fdc26a50fa5c98a41d.md) | 150 | `result-track:337fc9fdc26a50fa5c98a41d1f1f445ff3da09569a03d0ee50488ac96d87d94e` |
| 14 | `theorem` | [hasColimit_of_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/hascolimit-of-comp-equivalence--2e5bc1e4216fe9616b82af36.md) | 156 | `result-track:2e5bc1e4216fe9616b82af3628b3947beb1aa7acbe5bc3119b36ebf9b606f453` |
| 15 | `theorem` | [hasColimitsOfShape_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/hascolimitsofshape-of-equivalence--b3c458b325e4890ccf0569ee.md) | 163 | `result-track:b3c458b325e4890ccf0569ee45a1f52e6b30c7abf45343534be2a98c6b1606fd` |
| 16 | `theorem` | [has_colimits_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/has-colimits-of-equivalence--540fb14dabf867e876f98f0f.md) | 168 | `result-track:540fb14dabf867e876f98f0fa975fce31d41a724ea5a0db9907f6dc1db5f1553` |
| 17 | `def` | [functorialityLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/functorialityleftadjoint--40558b1c62db2a83fafb3786.md) | 182 | `declaration-track:40558b1c62db2a83fafb3786ff0b4423581357546202bb0b212f9ce8aff8889a` |
| 18 | `def` | [functorialityUnit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/functorialityunit--6956a26adcd64d23f26f5ce7.md) | 193 | `declaration-track:6956a26adcd64d23f26f5ce77ae68e8031edacb96e7e00c8e2085e4159118328` |
| 19 | `def` | [functorialityCounit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/functorialitycounit--d06d01632912b7621ff5e65a.md) | 202 | `declaration-track:d06d01632912b7621ff5e65a9fbaead685917640309aca7565c5d42a69e151fa` |
| 20 | `def` | [functorialityAdjunction'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/functorialityadjunction--141b1b4a46c4d662087c6c32.md) | 207 | `declaration-track:141b1b4a46c4d662087c6c321531fad0cee758e0060b6285ef557bcec059c28a` |
| 21 | `lemma` | [rightAdjoint_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/rightadjoint-preserveslimits--c2fee62dda71feb01c7f620a.md) | 214 | `result-track:c2fee62dda71feb01c7f620a4617814ab9996e06a0e229d0f8f504f74a4d37a6` |
| 22 | `lemma` | [rightAdjointPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/rightadjointpreserveslimits--d6f9548e8ed9a70f6e84003d.md) | 224 | `result-track:d6f9548e8ed9a70f6e84003d10fafb2efc4acf5a54794866d9561ba97058bb2e` |
| 23 | `instance` | [lim_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/lim-preserveslimits--29ff8c10651b051aeee2358a.md) | 227 | `declaration-track:29ff8c10651b051aeee2358a347397cbf2bf43cc0adbb8e59506d81d9f88cc02` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/instance--9bf10c76d30cb5e83381077b.md) | 232 | `declaration-track:9bf10c76d30cb5e83381077b74dbcd394f2b745cfafc9097442360507fd77fda` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/instance--66b5dae83209fc1d19ef92a0.md) | 238 | `declaration-track:66b5dae83209fc1d19ef92a0837d15eaac1ca40ed1767240ec4412258bff146c` |
| 26 | `lemma` | [isEquivalenceReflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/isequivalencereflectslimits--8d31f2cd99c5b5110d7fbd17.md) | 248 | `result-track:8d31f2cd99c5b5110d7fbd1709ff0691258591bba87e5c394cc2a2d38543ecef` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/instance--0b4ea90ab83f73850abab4eb.md) | 253 | `declaration-track:0b4ea90ab83f73850abab4eb99a2c5c899ae2ff137934a571a587b7bc4cfa83e` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/example--d340d520286d7d7f44570278.md) | 266 | `declaration-track:d340d520286d7d7f44570278a958a318650c5048d32f6149012def8ecb391d85` |
| 29 | `theorem` | [hasLimit_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/haslimit-comp-equivalence--45c73dc10931e409b2a80f2d.md) | 270 | `result-track:45c73dc10931e409b2a80f2d7071eadc8bdf7292142c8cae3e7253295bdf821b` |
| 30 | `theorem` | [hasLimit_of_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/haslimit-of-comp-equivalence--a21070fe1d5097787f1a004c.md) | 275 | `result-track:a21070fe1d5097787f1a004cdda6e33350c3eeb0432328daf20ae4a20d5562b2` |
| 31 | `theorem` | [hasLimitsOfShape_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/haslimitsofshape-of-equivalence--fd03bdfeccdca39972da2385.md) | 282 | `result-track:fd03bdfeccdca39972da23856c47ea3468727ca5057b909c19834eeac8c8773f` |
| 32 | `theorem` | [has_limits_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/has-limits-of-equivalence--ce92f3dbb760c554d897e34d.md) | 287 | `result-track:ce92f3dbb760c554d897e34dd30357aa6b43a34d7cfd11febd272d0de7c2f1f5` |
| 33 | `def` | [coconesIsoComponentHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/coconesisocomponenthom--28556a30d8c477756725a87b.md) | 295 | `declaration-track:28556a30d8c477756725a87bac671055981422e3ca0c2ef3b8364e390b21587f` |
| 34 | `def` | [coconesIsoComponentInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/coconesisocomponentinv--c71ea3b80291d3661d3a9605.md) | 304 | `declaration-track:c71ea3b80291d3661d3a96050d0a953b0bb6342aa361c3f13b98792ece9d8041` |
| 35 | `def` | [conesIsoComponentHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/conesisocomponenthom--357490f750c370dcb8b9be43.md) | 313 | `declaration-track:357490f750c370dcb8b9be43d904d7ebe00d3f11e9c16462cb0672478bb11d8e` |
| 36 | `def` | [conesIsoComponentInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/conesisocomponentinv--d42a144b4311f73d26233153.md) | 322 | `declaration-track:d42a144b4311f73d262331536ea6c518f43eb4536cd119e57b899bd574a11180` |
| 37 | `def` | [coconesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/coconesiso--e18baf34d1072b88232652e3.md) | 341 | `declaration-track:e18baf34d1072b88232652e320126a38ee18a5bd6063d2ecbfd921a92f2de9f6` |
| 38 | `def` | [conesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/conesiso--7ba62ec4622816a4381e426c.md) | 353 | `declaration-track:7ba62ec4622816a4381e426c552f66c5a6b112732ff7b5400e2f664b364c863d` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/instance--de8a8908159b166f50dcf5ad.md) | 366 | `declaration-track:de8a8908159b166f50dcf5ad40b0657dc050d8b306b50c3d65da6a69935f0692` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/instance--eee97dac22343b8f39c4bdc7.md) | 369 | `declaration-track:eee97dac22343b8f39c4bdc77e87a86922506dc94eec80828e532c076c737340` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/instance--4f0d35717aae37fb96227054.md) | 371 | `declaration-track:4f0d35717aae37fb962270549a26434a718abd114c6a0ea67da907abc126653b` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/declarations/instance--39cfca2b8eb03a8c6de37da4.md) | 374 | `declaration-track:39cfca2b8eb03a8c6de37da4e0efa6ff6c949db3990c31d967db59738b97205b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
