# IsZariskiLocalAtTarget.descendsAlong_inf_quasiCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8418f042f1c23bda88cc337cc16da80f73f35c33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1453a0da-eeb5-ba07-6d33-c09de5b2fa1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bbe0fd6d-6666-8e2e-7b49-069c9d433bf1",
  "kind": "lemma",
  "lexical_name": "IsZariskiLocalAtTarget.descendsAlong_inf_quasiCompact",
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
  "slug": "iszariskilocalattarget-descendsalong-inf-quasicompact--4a3543024f29ed9c5c9b4593",
  "source": {
    "blob": "8418f042f1c23bda88cc337cc16da80f73f35c33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 134,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a3543024f29ed9c5c9b45936bca040cf19dcbdb6368fa1c7e1dc1ca651a5faf",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbe0fd6d-6666-8e2e-7b49-069c9d433bf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsZariskiLocalAtTarget.descendsAlong_inf_quasiCompact [IsZariskiLocalAtTarget P]
    (H : ∀ {R S : CommRingCat.{u}} {Y : Scheme.{u}} (φ : R ⟶ S) (g : Y ⟶ Spec R),
      P' (Spec.map φ) → P (pullback.fst (Spec.map φ) g) → P g) :
    P.DescendsAlong (P' ⊓ @QuasiCompact) := by
  apply IsZariskiLocalAtTarget.descendsAlong
  intro R X Y f g hf h
  wlog hX : ∃ T, X = Spec T generalizing X
  · have _ : CompactSpace X := by simpa [← quasiCompact_iff_compactSpace f] using hf.2
    obtain ⟨Y, p, hsurj, hP', hY⟩ := X.exists_hom_isAffine_of_isZariskiLocalAtSource @IsLocalIso
    refine this (f := (Y.isoSpec.inv ≫ p) ≫ f) ?_ ?_ ⟨_, rfl⟩
    · rw [Category.assoc, (P' ⊓ @QuasiCompact).cancel_left_of_respectsIso]
      exact ⟨P'.comp_mem _ _ (H₁ _ ⟨hP', hsurj⟩) hf.1, inferInstance⟩
    · rw [← pullbackRightPullbackFstIso_inv_fst f g _, P.cancel_left_of_respectsIso]
      exact P.pullback_fst _ _ h
  obtain ⟨T, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  exact H φ g hf.1 h

include H₁ H₂ in
/--
Let `P` be the morphism property associated to the ring hom property `Q`. Suppose

- `P'` implies `Q'` on global sections for affine schemes,
- `P'` is satisfied for all surjective, local isomorphisms, and
- `Q` codescend along `Q'`.

Then `P` descends along quasi-compact morphisms satisfying `P'`.

Note: The second condition is in particular satisfied for faithfully flat morphisms.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8418f042f1c23bda88cc337cc16da80f73f35c33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
