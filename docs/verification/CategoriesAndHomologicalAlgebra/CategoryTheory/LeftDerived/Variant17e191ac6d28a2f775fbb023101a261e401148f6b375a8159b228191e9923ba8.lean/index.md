# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftDerived.Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe70ed66f53043ffb7948e6658cf68da14290356",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe70ed66f53043ffb7948e6658cf68da14290356`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Homology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.LeftDerived` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Projective` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [preserves_exact_of_PreservesFiniteColimits_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/declarations/preserves-exact-of-preservesfinitecolimits-of-epi--0830fe23675b327300bdad4c.md) | 57 | `result-track:0830fe23675b327300bdad4c17a459a4bed308fdd4b61b78cc1fdb9eb1328109` |
| 2 | `theorem` | [exact_of_map_projectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/declarations/exact-of-map-projectiveresolution--8b53154bd3a4bc08fb46afb4.md) | 63 | `result-track:8b53154bd3a4bc08fb46afb4311f607d5cf0cdfe4e9635a35596eef250689f7a` |
| 3 | `def` | [leftDerivedZeroToSelfApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/declarations/leftderivedzerotoselfapp--146a6d7287b16a5c29bb0116.md) | 77 | `declaration-track:146a6d7287b16a5c29bb01163cd31a06cfdcb261d82d72cb2fbda9b694f26076` |
| 4 | `def` | [leftDerivedZeroToSelfAppInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/declarations/leftderivedzerotoselfappinv--c5e5f4dec85a66dfb10aacf1.md) | 90 | `declaration-track:c5e5f4dec85a66dfb10aacf1b52659b999d75dae83d3d13eef07c8fb51389f0f` |
| 5 | `theorem` | [leftDerivedZeroToSelfApp_comp_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/declarations/leftderivedzerotoselfapp-comp-inv--c405a218aacbb86f2aad7166.md) | 103 | `result-track:c405a218aacbb86f2aad71667b0396e2e61eb54acbd0f4b3e48369922c2d6612` |
| 6 | `theorem` | [leftDerivedZeroToSelfAppInv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/declarations/leftderivedzerotoselfappinv-comp--acb1de7de5a4a1445931348b.md) | 133 | `result-track:acb1de7de5a4a1445931348bed26646822e69aeb9243a78e7b4cf86f8220b8bb` |
| 7 | `def` | [leftDerivedZeroToSelfAppIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/declarations/leftderivedzerotoselfappiso--90d0dd991b850c128c4096a6.md) | 159 | `declaration-track:90d0dd991b850c128c4096a6bf327d92b5cd91e1cdd610ffe555df2a4eab3939` |
| 8 | `theorem` | [leftDerived_zero_to_self_natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/declarations/leftderived-zero-to-self-natural--bcb2e36d930f5d839ef34ef4.md) | 169 | `result-track:bcb2e36d930f5d839ef34ef4c548a5784b84a8041807e0ec52f860ff7d769d11` |
| 9 | `def` | [leftDerivedZeroIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant17e191ac6d28a2f775fbb023101a261e401148f6b375a8159b228191e9923ba8.lean/declarations/leftderivedzeroisoself--8cad8445eca4853ae01ece42.md) | 188 | `declaration-track:8cad8445eca4853ae01ece423e95c15bfdb87b78ecdaa103547fdf80a75c9db6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
