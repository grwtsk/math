# mem_interior_face_iff_sbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14bae99f-839f-c99a-f6ee-5a8c24675197",
  "kind": "lemma",
  "lexical_name": "mem_interior_face_iff_sbtw",
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
  "slug": "mem-interior-face-iff-sbtw--308673d5a6d5a68523a49370",
  "source": {
    "blob": "355f6d168937263c79e43098d714e32961142d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 744,
    "line": 715,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:308673d5a6d5a68523a493705bce37675763591f98daf2de021891e7965d1256",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14bae99f-839f-c99a-f6ee-5a8c24675197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 715–744.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_interior_face_iff_sbtw [IsDomain R] [IsTorsionFree R V] {n : ℕ}
    (s : Simplex R P n) {p : P} {i j : Fin (n + 1)} (h : i ≠ j) :
    p ∈ (s.face (Finset.card_pair h)).interior ↔ Sbtw R (s.points i) p (s.points j) := by
  have h' : Sbtw R (s.points i) p (s.points j) ↔
      Sbtw R (s.points (min i j)) p (s.points (max i j)) := by
    rcases h.lt_or_gt with hij | hji
    · simp [min_eq_left hij.le, max_eq_right hij.le]
    · nth_rw 2 [sbtw_comm]
      simp [max_eq_left hji.le, min_eq_right hji.le]
  rw [h', mem_interior_iff_sbtw, face_points, face_points]
  congr! 4
  · convert! Finset.orderEmbOfFin_zero _ _
    · exact (Finset.min'_pair i j).symm
    · lia
  · convert! Finset.orderEmbOfFin_last _ _
    · exact (Finset.max'_pair i j).symm
    · lia

end Simplex

end Affine

end OrderedRing

section StrictOrderedCommRing

variable [CommRing R] [PartialOrder R] [IsStrictOrderedRing R]
  [AddCommGroup V] [Module R V] [AddTorsor V P]
variable {R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean#L715).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `355f6d168937263c79e43098d714e32961142d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
