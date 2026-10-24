# ghDist_le_of_approx_subsets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20968195-0639-aea0-33af-46e262f69fac",
  "kind": "theorem",
  "lexical_name": "ghDist_le_of_approx_subsets",
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
  "slug": "ghdist-le-of-approx-subsets--21aebc6cc4b4a6b6a878a39e",
  "source": {
    "blob": "4d14b4e4a378ba13143b6a683a028f724e8b75bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 554,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21aebc6cc4b4a6b6a878a39edfed7f4cadd8dffbf04f95014556c9249568e69a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20968195-0639-aea0-33af-46e262f69fac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ghDist_le_of_approx_subsets {s : Set X} (Φ : s → Y) {ε₁ ε₂ ε₃ : ℝ}
    (hs : ∀ x : X, ∃ y ∈ s, dist x y ≤ ε₁) (hs' : ∀ x : Y, ∃ y : s, dist x (Φ y) ≤ ε₃)
    (H : ∀ x y : s, |dist x y - dist (Φ x) (Φ y)| ≤ ε₂) : ghDist X Y ≤ ε₁ + ε₂ / 2 + ε₃ := by
  refine le_of_forall_pos_le_add fun δ δ0 => ?_
  rcases exists_mem_of_nonempty X with ⟨xX, _⟩
  rcases hs xX with ⟨xs, hxs, Dxs⟩
  have sne : s.Nonempty := ⟨xs, hxs⟩
  letI : Nonempty s := sne.to_subtype
  have : 0 ≤ ε₂ := le_trans (abs_nonneg _) (H ⟨xs, hxs⟩ ⟨xs, hxs⟩)
  have : ∀ p q : s, |dist p q - dist (Φ p) (Φ q)| ≤ 2 * (ε₂ / 2 + δ) := fun p q =>
    calc
      |dist p q - dist (Φ p) (Φ q)| ≤ ε₂ := H p q
      _ ≤ 2 * (ε₂ / 2 + δ) := by linarith
  -- glue `X` and `Y` along the almost matching subsets
  letI : MetricSpace (X ⊕ Y) :=
    glueMetricApprox (fun x : s => (x : X)) (fun x => Φ x) (ε₂ / 2 + δ) (by linarith) this
  let Fl := @Sum.inl X Y
  let Fr := @Sum.inr X Y
  have Il : Isometry Fl := Isometry.of_dist_eq fun x y => rfl
  have Ir : Isometry Fr := Isometry.of_dist_eq fun x y => rfl
  /- The proof goes as follows : the `GH_dist` is bounded by the Hausdorff distance of the images
    in the coupling, which is bounded (using the triangular inequality) by the sum of the Hausdorff
    distances of `X` and `s` (in the coupling or, equivalently in the original space), of `s` and
    `Φ s`, and of `Φ s` and `Y` (in the coupling or, equivalently, in the original space).
    The first term is bounded by `ε₁`, by `ε₁`-density. The third one is bounded by `ε₃`.
    And the middle one is bounded by `ε₂/2` as in the coupling the points `x` and `Φ x` are
    at distance `ε₂/2` by construction of the coupling (in fact `ε₂/2 + δ` where `δ` is an
    arbitrarily small positive constant where positivity is used to ensure that the coupling
    is really a metric space and not a premetric space on `X ⊕ Y`). -/
  have : ghDist X Y ≤ hausdorffDist (range Fl) (range Fr) := ghDist_le_hausdorffDist Il Ir
  have :
    hausdorffDist (range Fl) (range Fr) ≤
      hausdorffDist (range Fl) (Fl '' s) + hausdorffDist (Fl '' s) (range Fr) :=
    have B : IsBounded (range Fl) := (isCompact_range Il.continuous).isBounded
    hausdorffDist_triangle
      (hausdorffEdist_ne_top_of_nonempty_of_bounded (range_nonempty _) (sne.image _) B
        (B.subset (image_subset_range _ _)))
  have :
    hausdorffDist (Fl '' s) (range Fr) ≤
      hausdorffDist (Fl '' s) (Fr '' range Φ) + hausdorffDist (Fr '' range Φ) (range Fr) :=
    have B : IsBounded (range Fr) := (isCompact_range Ir.continuous).isBounded
    hausdorffDist_triangle'
      (hausdorffEdist_ne_top_of_nonempty_of_bounded ((range_nonempty _).image _) (range_nonempty _)
        (B.subset (image_subset_range _ _)) B)
  have : hausdorffDist (range Fl) (Fl '' s) ≤ ε₁ := by
    rw [← image_univ, hausdorffDist_image Il]
    have : 0 ≤ ε₁ := le_trans dist_nonneg Dxs
    refine hausdorffDist_le_of_mem_dist this (fun x _ => hs x) fun x _ =>
      ⟨x, mem_univ _, by simpa only [dist_self]⟩
  have : hausdorffDist (Fl '' s) (Fr '' range Φ) ≤ ε₂ / 2 + δ := by
    refine hausdorffDist_le_of_mem_dist (by linarith) ?_ ?_
    · intro x' hx'
      rcases (Set.mem_image _ _ _).1 hx' with ⟨x, ⟨x_in_s, xx'⟩⟩
      rw [← xx']
      use Fr (Φ ⟨x, x_in_s⟩), mem_image_of_mem Fr (mem_range_self _)
      exact le_of_eq (glueDist_glued_points (fun x : s => (x : X)) Φ (ε₂ / 2 + δ) ⟨x, x_in_s⟩)
    · intro x' hx'
      rcases (Set.mem_image _ _ _).1 hx' with ⟨y, ⟨y_in_s', yx'⟩⟩
      rcases mem_range.1 y_in_s' with ⟨x, xy⟩
      use Fl x, mem_image_of_mem _ x.2
      rw [← yx', ← xy, dist_comm]
      exact le_of_eq (glueDist_glued_points (Z := s) (@Subtype.val X s) Φ (ε₂ / 2 + δ) x)
  have : hausdorffDist (Fr '' range Φ) (range Fr) ≤ ε₃ := by
    rw [← @image_univ _ _ Fr, hausdorffDist_image Ir]
    rcases exists_mem_of_nonempty Y with ⟨xY, _⟩
    rcases hs' xY with ⟨xs', Dxs'⟩
    have : 0 ≤ ε₃ := le_trans dist_nonneg Dxs'
    refine hausdorffDist_le_of_mem_dist this
      (fun x _ => ⟨x, mem_univ _, by simpa only [dist_self]⟩)
      fun x _ => ?_
    rcases hs' x with ⟨y, Dy⟩
    exact ⟨Φ y, mem_range_self _, Dy⟩
  linarith

end

--section
/-- The Gromov-Hausdorff space is second countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d14b4e4a378ba13143b6a683a028f724e8b75bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
