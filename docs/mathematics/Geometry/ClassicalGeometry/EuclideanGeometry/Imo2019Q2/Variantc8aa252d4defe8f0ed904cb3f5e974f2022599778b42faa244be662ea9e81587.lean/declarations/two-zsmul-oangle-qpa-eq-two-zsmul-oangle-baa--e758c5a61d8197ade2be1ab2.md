# two_zsmul_oangle_QPA₂_eq_two_zsmul_oangle_BAA₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2464a13-559d-0b64-86c9-f223c30f804c",
  "kind": "theorem",
  "lexical_name": "two_zsmul_oangle_QPA₂_eq_two_zsmul_oangle_BAA₂",
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
  "slug": "two-zsmul-oangle-qpa-eq-two-zsmul-oangle-baa--e758c5a61d8197ade2be1ab2",
  "source": {
    "blob": "9f13725e62a058f1d5fd33a76af60d30818dafec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 389,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variantc8aa252d4defe8f0ed904cb3f5e974f2022599778b42faa244be662ea9e81587.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e758c5a61d8197ade2be1ab2d607c98ea3436e92667b9f566e5ab1150354091d",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variantc8aa252d4defe8f0ed904cb3f5e974f2022599778b42faa244be662ea9e81587.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2464a13-559d-0b64-86c9-f223c30f804c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_zsmul_oangle_QPA₂_eq_two_zsmul_oangle_BAA₂ :
    (2 : ℤ) • ∡ cfg.Q cfg.P cfg.A₂ = (2 : ℤ) • ∡ cfg.B cfg.A cfg.A₂ := by
  refine two_zsmul_oangle_of_parallel cfg.QP_parallel_BA ?_
  convert AffineSubspace.Parallel.refl (k := ℝ) (P := Pt) _ using 1
  rw [cfg.collinear_PAA₁A₂.affineSpan_eq_of_ne (Set.mem_insert_of_mem _
    (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _))))
    (Set.mem_insert_of_mem _ (Set.mem_insert _ _)) cfg.A₂_ne_A,
      cfg.collinear_PAA₁A₂.affineSpan_eq_of_ne (Set.mem_insert_of_mem _
    (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _))))
    (Set.mem_insert _ _) cfg.A₂_ne_P]

end Oriented

/-! ### More obvious configuration properties -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variantc8aa252d4defe8f0ed904cb3f5e974f2022599778b42faa244be662ea9e81587.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variantc8aa252d4defe8f0ed904cb3f5e974f2022599778b42faa244be662ea9e81587.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f13725e62a058f1d5fd33a76af60d30818dafec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
