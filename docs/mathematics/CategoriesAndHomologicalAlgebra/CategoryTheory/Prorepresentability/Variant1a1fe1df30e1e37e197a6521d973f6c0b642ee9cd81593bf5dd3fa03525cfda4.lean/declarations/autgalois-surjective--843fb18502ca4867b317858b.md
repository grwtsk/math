# AutGalois.π_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4afd769b-b637-9f1f-b131-2a95b0927f79",
  "kind": "theorem",
  "lexical_name": "AutGalois.π_surjective",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "autgalois-surjective--843fb18502ca4867b317858b",
  "source": {
    "blob": "7c452f74c6a5b5cd041dbd851fecee4845fca92e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 264,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant1a1fe1df30e1e37e197a6521d973f6c0b642ee9cd81593bf5dd3fa03525cfda4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:843fb18502ca4867b317858b5cde252df18b92bfffae90a2a07a6f375af696d5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant1a1fe1df30e1e37e197a6521d973f6c0b642ee9cd81593bf5dd3fa03525cfda4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4afd769b-b637-9f1f-b131-2a95b0927f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AutGalois.π_surjective (A : PointedGaloisObject F) :
    Function.Surjective (AutGalois.π F A) := fun (σ : Aut A.obj) ↦ by
  have (i : PointedGaloisObject F) : Finite ((autGaloisSystem F ⋙ forget _).obj i) :=
    inferInstanceAs <| Finite (Aut (i.obj))
  exact eval_section_surjective_of_surjective
    (autGaloisSystem F ⋙ forget _) (autGaloisSystem_map_surjective F) A σ

section EndAutGaloisIsomorphism

/-!

### Isomorphism between `Aut F` and `AutGalois F`

In this section we establish the isomorphism between the automorphism group of `F` and
the limit over the automorphism groups of all Galois objects.

We first establish the isomorphism between `End F` and `AutGalois F`, from which we deduce that
`End F` is a group, hence `End F = Aut F`. The isomorphism is built in multiple steps:

- `endEquivSectionsFibers : End F ≅ (incl F ⋙ F').sections`: the endomorphisms of
  `F` are isomorphic to the limit over `F.obj A` for all Galois objects `A`.
  This is obtained as the composition (slightly simplified):

  `End F ≅ (colimit ((incl F).op ⋙ coyoneda) ⟶ F) ≅ (incl F ⋙ F).sections`

  Where the first isomorphism is induced from the pro-representability of `F` and the second one
  from the pro-coyoneda lemma.

- `endEquivAutGalois : End F ≅ AutGalois F`: this is the composition of `endEquivSectionsFibers`
  with:

  `(incl F ⋙ F).sections ≅ (autGaloisSystem F ⋙ forget GrpCat).sections`

  which is induced from the level-wise equivalence `Aut A ≃ F.obj A` for a Galois object `A`.

-/

-- Local notation for `F` considered as a functor to types instead of finite types.
local notation "F'" => F ⋙ FintypeCat.incl

/-- The endomorphisms of `F` are isomorphic to the limit over the fibers of `F` on all
Galois objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant1a1fe1df30e1e37e197a6521d973f6c0b642ee9cd81593bf5dd3fa03525cfda4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant1a1fe1df30e1e37e197a6521d973f6c0b642ee9cd81593bf5dd3fa03525cfda4.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c452f74c6a5b5cd041dbd851fecee4845fca92e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
