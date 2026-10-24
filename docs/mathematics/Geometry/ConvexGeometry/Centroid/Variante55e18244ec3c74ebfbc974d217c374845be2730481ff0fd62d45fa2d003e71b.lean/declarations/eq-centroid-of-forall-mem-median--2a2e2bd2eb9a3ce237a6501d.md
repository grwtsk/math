# eq_centroid_of_forall_mem_median

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d79d0b3e-9745-55b9-6f8d-6866d8637781",
  "kind": "theorem",
  "lexical_name": "eq_centroid_of_forall_mem_median",
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
  "slug": "eq-centroid-of-forall-mem-median--2a2e2bd2eb9a3ce237a6501d",
  "source": {
    "blob": "fae929affc7bbe346128209bbbae40d38f8a1aa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 499,
    "path": "GRWTSK/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a2e2bd2eb9a3ce237a6501d7f75bb0971649fbe2e72934509af98247d2a1a85",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d79d0b3e-9745-55b9-6f8d-6866d8637781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_centroid_of_forall_mem_median [CharZero k] (s : Simplex k P n) {hn : 1 < n} {p : P}
    (h : ∀ i, p ∈ s.median i) :
    p = s.centroid := by
  rw [← vsub_eq_zero_iff_eq]
  set i₀ : Fin (n + 1) := 0
  have hp : p = (p -ᵥ s.centroid) +ᵥ s.centroid := by rw [vsub_vadd]
  let s' : Finset (Fin (n + 1)) := {i₀}ᶜ
  let u : s' → V := fun i => s.points i -ᵥ s.centroid
  have h_span : ∀ i : s', p -ᵥ s.centroid ∈ (Submodule.span k ({u i} : Set V)) := by
    intro i
    have hi := h i
    grind only [median_eq_line_point_centroid, vadd_right_mem_affineSpan_pair,
      Submodule.smul_mem, Submodule.mem_span_singleton_self]
  have hi : LinearIndependent k u := by
    set p : Fin (n + 1) → P := fun x => if x = i₀ then s.centroid else s.points x
    have hindep : AffineIndependent k p := by
      have := affineIndependent_points_update_centroid s i₀
      unfold Function.update at this
      grind
    have h1 := (affineIndependent_iff_linearIndependent_vsub k p i₀).mp hindep
    simp_rw [ne_eq, p] at h1
    set f : {x // x ∈ ({i₀}ᶜ : Finset (Fin (n + 1)))} → {x // x ≠ i₀} :=
      have h (x : {x // x ∈ ({i₀}ᶜ : Finset (Fin (n + 1)))}) : x.val ≠ i₀ := by
        grind [mem_compl, Finset.notMem_singleton]
      fun x => ⟨x.val, h x⟩
    have f_inj : Function.Injective f := by intro x y hxy; grind
    have h2 := h1.comp f f_inj
    convert! h2 using 1
    grind only [mem_compl, Finset.notMem_singleton]
  have he : ∃ i j : s', i ≠ j := by
    simp only [ne_eq, Subtype.exists, Subtype.mk.injEq, exists_prop]
    have hcard : s'.card = n := by
      rw [Finset.card_compl, Fintype.card_fin, card_singleton, add_tsub_cancel_right]
    have hcard' : 1 < #s' := by grind
    rw [Finset.one_lt_card_iff] at hcard'
    tauto
  choose i j hij using he
  have h_ij : Disjoint ({i} : Set {x // x ∈ s'}) {j} := by simp [hij]
  have h_disjoint : Disjoint (Submodule.span k {u i}) (Submodule.span k {u j}) := by
    simp_rw [← Set.image_singleton, hi.disjoint_span_image h_ij]
  exact Submodule.disjoint_def.1 h_disjoint _ (h_span i) (h_span j)

end median

/-- The medial is the simplex formed by centroids on all faces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fae929affc7bbe346128209bbbae40d38f8a1aa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
