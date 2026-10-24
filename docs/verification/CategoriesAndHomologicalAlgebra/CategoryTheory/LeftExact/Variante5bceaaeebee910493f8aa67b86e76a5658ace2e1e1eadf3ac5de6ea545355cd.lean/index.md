# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftExact.Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "794db4ef68761ea2a6b6c99800c7dde1d0f6f065",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `794db4ef68761ea2a6b6c99800c7dde1d0f6f065`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adhesive` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.ConcreteSheafification` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coneCompEvaluationOfConeCompDiagramFunctorCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/conecompevaluationofconecompdiagramfunctorcompevaluation--8d95d2a94523d0ece8255931.md) | 33 | `declaration-track:8d95d2a94523d0ece825593163b0bd46a5afcad0910a44cdbed7a84ca07be077` |
| 2 | `def` | [liftToDiagramLimitObjAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/lifttodiagramlimitobjaux--1c1ba2551444d7f84c03026d.md) | 48 | `declaration-track:1c1ba2551444d7f84c03026d6e1a3bad6f422b6aa533a0fb12a3be459de81922` |
| 3 | `lemma` | [liftToDiagramLimitObjAux_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/lifttodiagramlimitobjaux-fac--29b9d76f18936bc25bf3d9ae.md) | 57 | `result-track:29b9d76f18936bc25bf3d9ae49de406f44efc1e4a58a56c0e114dcef0c54e7ce` |
| 4 | `abbrev` | [liftToDiagramLimitObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/lifttodiagramlimitobj--4eb6e99cc7f2d68310d04998.md) | 67 | `declaration-track:4eb6e99cc7f2d68310d049982d383b09b69198d40515185801efe968a2466c23` |
| 5 | `instance` | [preservesLimit_diagramFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/preserveslimit-diagramfunctor--23e428aa8027f39c3039800d.md) | 81 | `declaration-track:23e428aa8027f39c3039800d209767361bc0e2aafbb9bb215c071fc454df04b5` |
| 6 | `instance` | [preservesLimitsOfShape_diagramFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/preserveslimitsofshape-diagramfunctor--aa7f6b65f30f99d06e7e9145.md) | 103 | `declaration-track:aa7f6b65f30f99d06e7e9145da28ba9d006c71a29acd45104d50ad1095e7adb9` |
| 7 | `instance` | [preservesLimits_diagramFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/preserveslimits-diagramfunctor--2d250bce705278a278959bc6.md) | 108 | `declaration-track:2d250bce705278a278959bc67c8a760864aea58536a3dfe25d73c3bc00ecb844` |
| 8 | `def` | [liftToPlusObjLimitObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/lifttoplusobjlimitobj--03b2e004686910e4654b1758.md) | 120 | `declaration-track:03b2e004686910e4654b1758ecfa0da3ec4da7907de2c47b7caaf4e60806722b` |
| 9 | `theorem` | [liftToPlusObjLimitObj_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/lifttoplusobjlimitobj-fac--5173b90350a37a47a91c93c7.md) | 149 | `result-track:5173b90350a37a47a91c93c7bb249d6adc7f3d67bd3cdd5c89c732c0389a1ee3` |
| 10 | `instance` | [preservesLimitsOfShape_plusFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/preserveslimitsofshape-plusfunctor--8ff794e54a1fadddf930fb78.md) | 174 | `declaration-track:8ff794e54a1fadddf930fb7888b64ca66579b3bc58c66c62d1748ce90de49087` |
| 11 | `instance` | [preserveFiniteLimits_plusFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/preservefinitelimits-plusfunctor--23b7489ee4e14e703ec7d661.md) | 202 | `declaration-track:23b7489ee4e14e703ec7d6612fc4a50afca5f76290664f4ab0a52ddf7c6a08e0` |
| 12 | `instance` | [preservesLimitsOfShape_sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/preserveslimitsofshape-sheafification--61d6cd4a1f5debadefbadee7.md) | 210 | `declaration-track:61d6cd4a1f5debadefbadee7994b293513118437bee73c30e6a6e86c95d936e6` |
| 13 | `instance` | [preservesFiniteLimits_sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/preservesfinitelimits-sheafification--674a37695d8b846404354f7f.md) | 216 | `declaration-track:674a37695d8b846404354f7f7bb07cf3ce94242d0586c8f979e43fdd90ff1271` |
| 14 | `instance` | [preservesLimitsOfShape_presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/preserveslimitsofshape-presheaftosheaf--3bd3d736c1860ce19797491f.md) | 238 | `declaration-track:3bd3d736c1860ce19797491fedf0c0bf403b4922fc8925d1410c217d6d5099cd` |
| 15 | `instance` | [preservesfiniteLimits_presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/preservesfinitelimits-presheaftosheaf--5b44874c5a727a9886d9db9b.md) | 257 | `declaration-track:5b44874c5a727a9886d9db9b7a9d9873f66d40fbd20e2f39383ac39ccbf784d8` |
| 16 | `def` | [plusPlusSheafIsoPresheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/plusplussheafisopresheaftosheaf--555a9a33507e1135157d0490.md) | 266 | `declaration-track:555a9a33507e1135157d049070ef0d3e30f27329cb9f45b3825c5f4e336107cc` |
| 17 | `def` | [plusPlusFunctorIsoSheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/plusplusfunctorisosheafification--94ad4e8bab3d19ca48fb75a9.md) | 270 | `declaration-track:94ad4e8bab3d19ca48fb75a931afabcdab9b91a3cb5e336261d96f51e40bfc85` |
| 18 | `def` | [plusPlusIsoSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/plusplusisosheafify--a3477fd874debf16d254196c.md) | 274 | `declaration-track:a3477fd874debf16d254196c4421bf65d63b8d7e01b8a796c68db49f8f04a195` |
| 19 | `lemma` | [toSheafify_plusPlusIsoSheafify_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/tosheafify-plusplusisosheafify-hom--b19f08fe92c889d6e55ddab0.md) | 278 | `result-track:b19f08fe92c889d6e55ddab076d5682ef52dc2c25c1bedfa307e706ced40d45c` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/instance--345dca11004a50bbc23a2407.md) | 286 | `declaration-track:345dca11004a50bbc23a2407ad7896ecb44add1611a22392106ef7800ddafb9c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/instance--2b314752232ae36f1634d401.md) | 292 | `declaration-track:2b314752232ae36f1634d40106ad0baa4cbd5c4c08489a391afd734600d7ae73` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/instance--afef1ec06daff8326a9886df.md) | 296 | `declaration-track:afef1ec06daff8326a9886dfea27e624ec8e93b0d62a8d09b75a5402126b4857` |
| 23 | `instance` | [SheafOfTypes.finitary_extensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/sheafoftypes-finitary-extensive--60d14cd6fdf655e214b86c90.md) | 300 | `declaration-track:60d14cd6fdf655e214b86c905bcc172eade2e25ff8e21c4e11e6ad8cf7a6eb1e` |
| 24 | `instance` | [SheafOfTypes.adhesive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/sheafoftypes-adhesive--a4238116eb46105daa8a077d.md) | 304 | `declaration-track:a4238116eb46105daa8a077d057b263948559199c9cd96f0bb067761a2e1f610` |
| 25 | `instance` | [SheafOfTypes.balanced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante5bceaaeebee910493f8aa67b86e76a5658ace2e1e1eadf3ac5de6ea545355cd.lean/declarations/sheafoftypes-balanced--fe5e0565a02e1053955a0580.md) | 308 | `declaration-track:fe5e0565a02e1053955a0580c96bd6c1597b52089e066edc199d37f2b86fa4b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
