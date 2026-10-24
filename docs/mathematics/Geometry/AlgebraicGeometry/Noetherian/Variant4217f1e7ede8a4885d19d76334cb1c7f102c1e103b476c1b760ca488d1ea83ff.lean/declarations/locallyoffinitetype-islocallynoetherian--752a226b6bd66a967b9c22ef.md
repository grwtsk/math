# LocallyOfFiniteType.isLocallyNoetherian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d61d642-ecc4-90d8-ae7a-7e40cce6af4d",
  "kind": "theorem",
  "lexical_name": "LocallyOfFiniteType.isLocallyNoetherian",
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
  "slug": "locallyoffinitetype-islocallynoetherian--752a226b6bd66a967b9c22ef",
  "source": {
    "blob": "3549691ce579a878860bdfe2cee39086189be3c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 246,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variant4217f1e7ede8a4885d19d76334cb1c7f102c1e103b476c1b760ca488d1ea83ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:752a226b6bd66a967b9c22effdef2f9d124dc7e3ac94554ab26f3bf23ba91949",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Noetherian/Variant4217f1e7ede8a4885d19d76334cb1c7f102c1e103b476c1b760ca488d1ea83ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d61d642-ecc4-90d8-ae7a-7e40cce6af4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocallyOfFiniteType.isLocallyNoetherian
    {X Y : Scheme} (f : X ⟶ Y) [LocallyOfFiniteType f]
    [IsLocallyNoetherian Y] : IsLocallyNoetherian X := by
  change id (IsLocallyNoetherian X) -- avoid wlog hypotheses confusing the instance synthesizer
  wlog hY : ∃ R, Y = Spec R
  · exact (isLocallyNoetherian_iff_openCover (Y.affineCover.pullback₁ f)).mpr fun i ↦
      this (Limits.pullback.snd f (Y.affineCover.f i)) ⟨_, rfl⟩
  wlog hX : ∃ S, X = Spec S
  · exact (isLocallyNoetherian_iff_openCover X.affineCover).mpr
      fun i ↦ this (X.affineCover.f i ≫ f) hY ⟨_, rfl⟩
  obtain ⟨R, rfl⟩ := hY
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  have : φ.hom.FiniteType := HasRingHomProperty.Spec_iff.mp ‹_›
  algebraize [φ.hom]
  simp_all [Algebra.FiniteType.isNoetherianRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Noetherian/Variant4217f1e7ede8a4885d19d76334cb1c7f102c1e103b476c1b760ca488d1ea83ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variant4217f1e7ede8a4885d19d76334cb1c7f102c1e103b476c1b760ca488d1ea83ff.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3549691ce579a878860bdfe2cee39086189be3c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
