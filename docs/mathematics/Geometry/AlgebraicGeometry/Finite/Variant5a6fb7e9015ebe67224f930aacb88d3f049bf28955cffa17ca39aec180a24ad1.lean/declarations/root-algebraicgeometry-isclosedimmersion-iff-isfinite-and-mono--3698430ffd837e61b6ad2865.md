# _root_.AlgebraicGeometry.IsClosedImmersion.iff_isFinite_and_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4d254dae0e2c1bd8ceb4ce6accb356ec05d9467",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d745e2ff-c3c0-6463-3579-eca0b80d4d9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:729da523-3549-b8a8-c0a8-5d1420a7dfc2",
  "kind": "lemma",
  "lexical_name": "_root_.AlgebraicGeometry.IsClosedImmersion.iff_isFinite_and_mono",
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
  "slug": "root-algebraicgeometry-isclosedimmersion-iff-isfinite-and-mono--3698430ffd837e61b6ad2865",
  "source": {
    "blob": "a4d254dae0e2c1bd8ceb4ce6accb356ec05d9467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3698430ffd837e61b6ad28657d13dcb2f60091b340dd0526b1543321033b40bd",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:729da523-3549-b8a8-c0a8-5d1420a7dfc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.AlgebraicGeometry.IsClosedImmersion.iff_isFinite_and_mono :
    IsClosedImmersion f ↔ IsFinite f ∧ Mono f := by
  wlog hY : IsAffine Y
  · show _ ↔ _ ∧ monomorphisms _ f
    rw [IsLocalAtTarget.iff_of_openCover (P := @IsFinite) Y.affineCover,
      IsLocalAtTarget.iff_of_openCover (P := @IsClosedImmersion) Y.affineCover,
      IsLocalAtTarget.iff_of_openCover (P := monomorphisms _) Y.affineCover]
    simp_rw [this, forall_and, monomorphisms]
  rw [HasAffineProperty.iff_of_isAffine (P := @IsClosedImmersion),
    HasAffineProperty.iff_of_isAffine (P := @IsFinite),
    RingHom.surjective_iff_epi_and_finite, @and_comm (Epi _), ← and_assoc]
  refine and_congr_right fun ⟨_, _⟩ ↦
    Iff.trans ?_ (arrow_mk_iso_iff (monomorphisms _) (arrowIsoSpecΓOfIsAffine f).symm)
  trans Mono (f.app ⊤).op
  · exact ⟨fun h ↦ inferInstance, fun h ↦ show Epi (f.app ⊤).op.unop by infer_instance⟩
  exact (Functor.mono_map_iff_mono Scheme.Spec _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d254dae0e2c1bd8ceb4ce6accb356ec05d9467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
