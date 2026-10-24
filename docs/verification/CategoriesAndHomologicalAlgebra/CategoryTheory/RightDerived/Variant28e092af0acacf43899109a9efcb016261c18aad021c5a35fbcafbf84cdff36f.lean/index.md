# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerived.Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96594270e51832241dd47f57e03ab6af24256598",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96594270e51832241dd47f57e03ab6af24256598`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.InjectiveResolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Additive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Homology` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Exact` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.rightDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/functor-rightderived--6113685adc169c2d0cf5f10e.md) | 66 | `declaration-track:6113685adc169c2d0cf5f10eedfd442be1f3852f639f507d3d28128a4486a09e` |
| 2 | `def` | [Functor.rightDerivedObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/functor-rightderivedobjiso--d93598994da9962629de3b2e.md) | 72 | `declaration-track:d93598994da9962629de3b2e2ad2b333d907bdd087d750e80eba2eb0e95c53c4` |
| 3 | `def` | [Functor.rightDerivedObjInjectiveZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/functor-rightderivedobjinjectivezero--93cbd45c3ee6c9ff87208f9c.md) | 84 | `declaration-track:93cbd45c3ee6c9ff87208f9c78309ca54c8c435b39c4c9b9aeb279e6736a8456` |
| 4 | `def` | [Functor.rightDerivedObjInjectiveSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/functor-rightderivedobjinjectivesucc--ce1a78fa1b27c44e5ff9803a.md) | 95 | `declaration-track:ce1a78fa1b27c44e5ff9803adf3dd7daa2313f0989fde5775ba08fdef94b2e89` |
| 5 | `theorem` | [Functor.rightDerived_map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/functor-rightderived-map-eq--068c1cd1a0ecbde1ebfd9dde.md) | 105 | `result-track:068c1cd1a0ecbde1ebfd9ddedf0d14c2a99de0cf0803029522bdfc69958808fc` |
| 6 | `def` | [NatTrans.rightDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/nattrans-rightderived--714b5af308a385f4240d80c3.md) | 129 | `declaration-track:714b5af308a385f4240d80c3665636440113a04e3683353f59816f7f486f49a1` |
| 7 | `theorem` | [NatTrans.rightDerived_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/nattrans-rightderived-id--355c77d75db960a04fad361a.md) | 136 | `result-track:355c77d75db960a04fad361a7ab748445df0f879a19eee49598a134ac65a8011` |
| 8 | `theorem` | [NatTrans.rightDerived_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/nattrans-rightderived-comp--2341cdf1c70d9a3b8d1690d8.md) | 143 | `result-track:2341cdf1c70d9a3b8d1690d88ab32755546c73511d231e436248c2138333017e` |
| 9 | `theorem` | [NatTrans.rightDerived_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/nattrans-rightderived-eq--3455764d24e5f225eab73720.md) | 152 | `result-track:3455764d24e5f225eab7372066cbc90e9c434161d481c8e730fe2405512291eb` |
| 10 | `theorem` | [preserves_exact_of_preservesFiniteLimits_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/preserves-exact-of-preservesfinitelimits-of-mono--a24acdd17882719db3a4948b.md) | 192 | `result-track:a24acdd17882719db3a4948bea2e7a3ecef21ea20be569e7977f1544140f9322` |
| 11 | `theorem` | [exact_of_map_injectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/exact-of-map-injectiveresolution--a67bd8e2b03820a38499d8fc.md) | 198 | `result-track:a67bd8e2b03820a38499d8fc975fe48c58e7ad43326428a815c0589d3ce86f84` |
| 12 | `def` | [rightDerivedZeroToSelfApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/rightderivedzerotoselfapp--98e3eeed0a0d620fe2edb101.md) | 210 | `declaration-track:98e3eeed0a0d620fe2edb1010ee9e0dee39eaee4b7fae3091e9e39ecef059da8` |
| 13 | `def` | [rightDerivedZeroToSelfAppInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/rightderivedzerotoselfappinv--46b38198a35ae02302325a9e.md) | 229 | `declaration-track:46b38198a35ae02302325a9e22c232108e94284c06681a5e176b9ed4da681cef` |
| 14 | `theorem` | [rightDerivedZeroToSelfApp_comp_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/rightderivedzerotoselfapp-comp-inv--eabe18179820122f91a83ba6.md) | 240 | `result-track:eabe18179820122f91a83ba6c111f61ecec15953119933cb54a79b6eb6e194c6` |
| 15 | `theorem` | [rightDerivedZeroToSelfAppInv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/rightderivedzerotoselfappinv-comp--e4d7f9570b85b6d40edb9c5f.md) | 264 | `result-track:e4d7f9570b85b6d40edb9c5f2464ec5b7f90ca5881722ae12608192ae07b5856` |
| 16 | `def` | [rightDerivedZeroToSelfAppIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/rightderivedzerotoselfappiso--0dd292a57c4b41a53d9b3e1a.md) | 286 | `declaration-track:0dd292a57c4b41a53d9b3e1a08682106c85f3a7ef96bdd6310304602ea0ade39` |
| 17 | `theorem` | [rightDerivedZeroToSelf_natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/rightderivedzerotoself-natural--a4dbb15ed6df9e09db90980a.md) | 296 | `result-track:a4dbb15ed6df9e09db90980a82d02f2dd07531765fc05c50d681e6663e55f3e3` |
| 18 | `def` | [rightDerivedZeroIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/declarations/rightderivedzeroisoself--bd11e4fca767149aa4949aae.md) | 323 | `declaration-track:bd11e4fca767149aa4949aae89a9dfe50f72d4b40d0e4ab396b956109a6112a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
