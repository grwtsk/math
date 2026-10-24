# isPullback_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb19e321-e002-d2fa-3f82-86fb28d493bc",
  "kind": "lemma",
  "lexical_name": "isPullback_aux",
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
  "slug": "ispullback-aux--625fce4754e101c0f386720c",
  "source": {
    "blob": "74491d926e98a7b9e1656c9c9ada91ce6671b94c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 611,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf4138cfa695798584255935dea7164ed8d189f146f0f901ec18d9b5b70a2bb7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:625fce4754e101c0f386720c08a3bdcd9dc2f00125d64dae9a274437dbec85f7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf4138cfa695798584255935dea7164ed8d189f146f0f901ec18d9b5b70a2bb7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb19e321-e002-d2fa-3f82-86fb28d493bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 611–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma isPullback_aux (f : X ⟶ Y) (y : Subobject Y) :
    ∃ φ, IsPullback φ ((pullback f).obj y).arrow y.arrow f := by
  obtain ⟨A, i, ⟨_, rfl⟩⟩ := mk_surjective y
  rw [pullback_obj]
  exists (underlyingIso (pullback.snd (mk i).arrow f)).hom ≫ pullback.fst (mk i).arrow f
  exact IsPullback.of_iso (IsPullback.of_hasPullback (mk i).arrow f)
        (underlyingIso (pullback.snd (mk i).arrow f)).symm (Iso.refl _) (Iso.refl _) (Iso.refl _)
        (by simp) (by simp) (by simp) (by simp)

/-- For any morphism `f : X ⟶ Y` and subobject `y` of `Y`, `Subobject.pullbackπ f y` is the first
    projection in the following pullback square:

    ```
    (Subobject.pullback f).obj y ----pullbackπ f y---> (y : C)
             |                                            |
    ((Subobject.pullback f).obj y).arrow               y.arrow
             |                                            |
             v                                            v
             X ---------------------f-------------------> Y
    ```

    For instance in the category of sets, `Subobject.pullbackπ f y` is the restriction of `f` to
    elements of `X` that are in the preimage of `y ⊆ Y`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf4138cfa695798584255935dea7164ed8d189f146f0f901ec18d9b5b70a2bb7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf4138cfa695798584255935dea7164ed8d189f146f0f901ec18d9b5b70a2bb7b.lean#L611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74491d926e98a7b9e1656c9c9ada91ce6671b94c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
