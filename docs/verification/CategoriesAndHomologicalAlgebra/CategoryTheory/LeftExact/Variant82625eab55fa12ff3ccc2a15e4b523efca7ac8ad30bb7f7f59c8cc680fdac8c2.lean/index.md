# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftExact.Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f65f4e819e8b04036ce102c785361dd52cf28daf",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f65f4e819e8b04036ce102c785361dd52cf28daf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adhesive` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.ConcreteSheafification` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coneCompEvaluationOfConeCompDiagramFunctorCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/conecompevaluationofconecompdiagramfunctorcompevaluation--4a722b8be25f9f5cd95ce797.md) | 41 | `declaration-track:4a722b8be25f9f5cd95ce797d9465ccac4bed2806733e8a474eafb56d1ea2043` |
| 2 | `def` | [liftToDiagramLimitObjAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/lifttodiagramlimitobjaux--a565c5cdb71957264400487d.md) | 56 | `declaration-track:a565c5cdb71957264400487de26bf9d9ff426424b0b022c870d98de6ee0613c9` |
| 3 | `lemma` | [liftToDiagramLimitObjAux_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/lifttodiagramlimitobjaux-fac--ee120d745d9ffd98295d629d.md) | 65 | `result-track:ee120d745d9ffd98295d629d2195f02d9e58a26e90052bff090b023b163e5fc9` |
| 4 | `abbrev` | [liftToDiagramLimitObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/lifttodiagramlimitobj--274fb8c644c51b9c97fd2ed1.md) | 75 | `declaration-track:274fb8c644c51b9c97fd2ed171ddd68488f55070fb9706ffdf3afaa25c1b1449` |
| 5 | `instance` | [preservesLimit_diagramFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/preserveslimit-diagramfunctor--f5692f487e27bb300f103916.md) | 89 | `declaration-track:f5692f487e27bb300f1039167bf63b394c4f46ae57d34e0dbec1ed0ba48afd64` |
| 6 | `instance` | [preservesLimitsOfShape_diagramFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/preserveslimitsofshape-diagramfunctor--cbb653180069c512042d17fe.md) | 111 | `declaration-track:cbb653180069c512042d17fe5fc17d2a48808998ae0f0f2bfa33db6a2584a76b` |
| 7 | `instance` | [preservesLimits_diagramFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/preserveslimits-diagramfunctor--58b9f98e72ce57092785207d.md) | 116 | `declaration-track:58b9f98e72ce57092785207d9e94f0314f69397aabd14de3fc019ff0caf1002e` |
| 8 | `def` | [liftToPlusObjLimitObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/lifttoplusobjlimitobj--762002140591c8b15b7a736a.md) | 128 | `declaration-track:762002140591c8b15b7a736a8cb9d0267180e357e2efba92fec2755cfde1a2b6` |
| 9 | `theorem` | [liftToPlusObjLimitObj_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/lifttoplusobjlimitobj-fac--b104eb31053e4057f36116f8.md) | 157 | `result-track:b104eb31053e4057f36116f8ec729400523d470d33ddf29b9a96e16985c78981` |
| 10 | `instance` | [preservesLimitsOfShape_plusFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/preserveslimitsofshape-plusfunctor--a823867f4367a9c4e98b1f5c.md) | 182 | `declaration-track:a823867f4367a9c4e98b1f5c1fbae6f7327cb6d43f23dcdb96b4a54998398511` |
| 11 | `instance` | [preserveFiniteLimits_plusFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/preservefinitelimits-plusfunctor--b422cc402155b3e6ba20d1d7.md) | 210 | `declaration-track:b422cc402155b3e6ba20d1d770d26930694788c474d4f1f6e30533b2823108cb` |
| 12 | `instance` | [preservesLimitsOfShape_sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/preserveslimitsofshape-sheafification--922ebf6b76128bebdd195d6c.md) | 218 | `declaration-track:922ebf6b76128bebdd195d6c439b8ff3a9cd014f1b4847708c0002d549b98f45` |
| 13 | `instance` | [preservesFiniteLimits_sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/preservesfinitelimits-sheafification--a17a50d8339b046de3cb8a49.md) | 224 | `declaration-track:a17a50d8339b046de3cb8a4953e28efcfd0948a0e670e0fdc8423e97936d22d9` |
| 14 | `instance` | [preservesLimitsOfShape_presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/preserveslimitsofshape-presheaftosheaf--68164bc606330cc1a0cabf45.md) | 246 | `declaration-track:68164bc606330cc1a0cabf4596631ad0e512face69490eaac8ee4993e2bceec0` |
| 15 | `instance` | [preservesfiniteLimits_presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/preservesfinitelimits-presheaftosheaf--d869fa0f0e62f9c69c752d42.md) | 265 | `declaration-track:d869fa0f0e62f9c69c752d4228c8f5a75ca709ee9255e1adf925f69488224f34` |
| 16 | `def` | [plusPlusSheafIsoPresheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/plusplussheafisopresheaftosheaf--819358c1f31a457b0f88db20.md) | 274 | `declaration-track:819358c1f31a457b0f88db206bcdc9940f489593e2011fa46148a36fc38a73a5` |
| 17 | `def` | [plusPlusFunctorIsoSheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/plusplusfunctorisosheafification--90ab9fe75a2bebd29eb3df34.md) | 278 | `declaration-track:90ab9fe75a2bebd29eb3df348f59988d0707720cba83cef4fa579b6dc870feb7` |
| 18 | `def` | [plusPlusIsoSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/plusplusisosheafify--0a348bcbae565e9783c3150d.md) | 282 | `declaration-track:0a348bcbae565e9783c3150db8412e1cd0f99263f01d9ad8b75274edc83d3d12` |
| 19 | `lemma` | [toSheafify_plusPlusIsoSheafify_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/tosheafify-plusplusisosheafify-hom--7779e1d5a1b2c5cf9081b1fa.md) | 286 | `result-track:7779e1d5a1b2c5cf9081b1fae2e447ba5d28a8380d2004d4154012d8dc41866e` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/instance--e792de335dcfb77ced7d808d.md) | 294 | `declaration-track:e792de335dcfb77ced7d808d166565c6cd6531049d4c729c4415e138c77d9240` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/instance--7478259333ce5b3444d7d35c.md) | 300 | `declaration-track:7478259333ce5b3444d7d35c9d5c9317aae35e56cb47bb9931920b8cc0456920` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/instance--6686d97aa00dcf6af6677c88.md) | 304 | `declaration-track:6686d97aa00dcf6af6677c8892696e48cb58e156da0f2d2a32e2a2808489fd53` |
| 23 | `instance` | [SheafOfTypes.finitary_extensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/sheafoftypes-finitary-extensive--a33cbc285d02f1b0b98ca1ab.md) | 308 | `declaration-track:a33cbc285d02f1b0b98ca1abe19eee2e7afce5e342821e1e8a828355f2dcd459` |
| 24 | `instance` | [SheafOfTypes.adhesive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/sheafoftypes-adhesive--3ca44d0a61348bf5b894b882.md) | 312 | `declaration-track:3ca44d0a61348bf5b894b882dad05847e5412a11218af5b2956c0c7e9215ccbe` |
| 25 | `instance` | [SheafOfTypes.balanced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/declarations/sheafoftypes-balanced--96844eda6d751a99b432fd9d.md) | 316 | `declaration-track:96844eda6d751a99b432fd9d908d5a356b4ae8e20dbc46201bd88f208e1a51d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
