# relations_le_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:660fa2af-3f19-3d92-ef6c-4a84ae3887c9",
  "kind": "theorem",
  "lexical_name": "relations_le_kernel",
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
  "slug": "relations-le-kernel--8d8bd909235dfb28e4503fb2",
  "source": {
    "blob": "09c1279803b705e13d4da51c9981f8ab3f149677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 162,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d8bd909235dfb28e4503fb2cbb6042954f5f4a939ee1e78e2ba0acae2ca3046",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:660fa2af-3f19-3d92-ef6c-4a84ae3887c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relations_le_kernel (A B : ℤ) (x y : S) (h : Relation A B x y)
    (N : ℕ) (hy : y^(N+1)=0) (hx : y^2 ∣ x) :
    WeierstrassOriginJet.relations A B N ≤ RingHom.ker (evaluate x y) := by
  have hym : y ∈ (Ideal.span {y} : Ideal S) := Ideal.subset_span (by simp)
  have hxm : x ∈ (Ideal.span {y} : Ideal S) := by
    apply Ideal.mem_span_singleton.mpr
    exact dvd_trans ⟨y,by ring⟩ hx
  have hmap : WeierstrassOriginJet.origin.map (evaluate x y) ≤ Ideal.span {y} := by
    apply Ideal.map_le_iff_le_comap.mpr
    apply Ideal.span_le.mpr
    intro p hp
    simp only [Set.mem_insert_iff,Set.mem_singleton_iff] at hp
    rcases hp with rfl | rfl
    · simpa [evaluate] using hxm
    · simpa [evaluate] using hym
  apply sup_le
  · apply Ideal.span_le.mpr
    intro p hp
    rcases Set.mem_singleton_iff.mp hp with rfl
    change evaluate x y (WeierstrassOriginJet.equation A B)=0
    dsimp only [Relation] at h
    simpa [evaluate,WeierstrassOriginJet.equation,sub_sub] using sub_eq_zero.mpr h
  · apply Ideal.map_eq_bot_iff_le_ker.mp
    apply le_antisymm _ bot_le
    calc
      _ = (WeierstrassOriginJet.origin.map (evaluate x y))^(N+1) := Ideal.map_pow _ _ _
      _ ≤ (Ideal.span {y})^(N+1) := Ideal.pow_right_mono hmap _
      _ = ⊥ := by rw [Ideal.span_singleton_pow,hy,Ideal.span_singleton_zero]

/-- The actual source quotient may have torsion; no injectivity is asserted here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c1279803b705e13d4da51c9981f8ab3f149677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
