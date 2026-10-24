# two_zsmul_oangle_QQ₁A₂_eq_two_zsmul_oangle_QPA₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74e2f8de-6887-f629-3020-2d95e5b707e4",
  "kind": "theorem",
  "lexical_name": "two_zsmul_oangle_QQ₁A₂_eq_two_zsmul_oangle_QPA₂",
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
  "slug": "two-zsmul-oangle-qq-a-eq-two-zsmul-oangle-qpa--bc2b5728fb1cdfad098b3c57",
  "source": {
    "blob": "27c0eb9c1027f1e9bff516e2080fc5831940b68f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 610,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc2b5728fb1cdfad098b3c57ab94d3a7f7e591625a1bd47d8b84a7e25149bd40",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74e2f8de-6887-f629-3020-2d95e5b707e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_zsmul_oangle_QQ₁A₂_eq_two_zsmul_oangle_QPA₂ :
    (2 : ℤ) • ∡ cfg.Q cfg.Q₁ cfg.A₂ = (2 : ℤ) • ∡ cfg.Q cfg.P cfg.A₂ :=
  calc
    (2 : ℤ) • ∡ cfg.Q cfg.Q₁ cfg.A₂ = (2 : ℤ) • ∡ cfg.A₁ cfg.Q₁ cfg.A₂ := by
      rw [cfg.sbtw_Q_A₁_Q₁.symm.oangle_eq_left]
    _ = (2 : ℤ) • ∡ cfg.A₁ cfg.C cfg.A₂ :=
      (cfg.cospherical_A₁Q₁CA₂.two_zsmul_oangle_eq cfg.sbtw_Q_A₁_Q₁.right_ne cfg.Q₁_ne_A₂
        cfg.A₁_ne_C.symm cfg.A₂_ne_C.symm)
    _ = (2 : ℤ) • ∡ cfg.B cfg.C cfg.A₂ := by rw [cfg.sbtw_B_A₁_C.symm.oangle_eq_left]
    _ = (2 : ℤ) • ∡ cfg.B cfg.A cfg.A₂ :=
      (Sphere.two_zsmul_oangle_eq cfg.B_mem_circumsphere cfg.C_mem_circumsphere
        cfg.A_mem_circumsphere cfg.A₂_mem_circumsphere cfg.B_ne_C.symm cfg.A₂_ne_C.symm cfg.A_ne_B
        cfg.A₂_ne_A.symm)
    _ = (2 : ℤ) • ∡ cfg.Q cfg.P cfg.A₂ := cfg.two_zsmul_oangle_QPA₂_eq_two_zsmul_oangle_BAA₂.symm
#align imo2019_q2.imo2019q2_cfg.two_zsmul_oangle_QQ₁A₂_eq_two_zsmul_oangle_QPA₂ Imo2019Q2.Imo2019q2Cfg.two_zsmul_oangle_QQ₁A₂_eq_two_zsmul_oangle_QPA₂

end Oriented

/-! ### Conclusions from that third angle chase -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27c0eb9c1027f1e9bff516e2080fc5831940b68f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
