# modelWithCornersEuclideanHalfSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dd5f68f86dbbda591f1c71b205474fe8b4bf54298a75452f41c7b6e923297c2",
  "kind": "def",
  "lexical_name": "modelWithCornersEuclideanHalfSpace",
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
  "slug": "modelwithcornerseuclideanhalfspace--fcd684b624066e5547106ea2",
  "source": {
    "blob": "c93692ddc6070240ee0cc52338cc9110f980cb7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 173,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcd684b624066e5547106ea2417f670d2b249f09fb222c4e64d6fbeebaaecef9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dd5f68f86dbbda591f1c71b205474fe8b4bf54298a75452f41c7b6e923297c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def modelWithCornersEuclideanHalfSpace (n : ℕ) [NeZero n] :
    ModelWithCorners ℝ (EuclideanSpace ℝ (Fin n)) (EuclideanHalfSpace n) where
  toFun := Subtype.val
  invFun x := ⟨update x 0 (max (x 0) 0), by simp [le_refl]⟩
  source := univ
  target := { x | 0 ≤ x 0 }
  map_source' x _ := x.property
  map_target' _ _ := mem_univ _
  left_inv' := fun ⟨xval, xprop⟩ _ => by
    rw [Subtype.mk_eq_mk, update_eq_iff]
    exact ⟨max_eq_left xprop, fun i _ => rfl⟩
  right_inv' _ hx := update_eq_iff.2 ⟨max_eq_left hx, fun _ _ => rfl⟩
  source_eq := rfl
  uniqueDiffOn' := by
    have : UniqueDiffOn ℝ _ :=
      UniqueDiffOn.pi (Fin n) (fun _ => ℝ) _ _ fun i (_ : i ∈ ({0} : Set (Fin n))) =>
        uniqueDiffOn_Ici 0
    simpa only [singleton_pi] using this
  target_subset_closure_interior := by simp
  continuous_toFun := continuous_subtype_val
  continuous_invFun := by
    exact (continuous_id.update 0 <| (continuous_apply 0).max continuous_const).subtype_mk _

/--
Definition of the model with corners `(EuclideanSpace ℝ (Fin n), EuclideanQuadrant n)`, used as a
model for manifolds with corners -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93692ddc6070240ee0cc52338cc9110f980cb7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
