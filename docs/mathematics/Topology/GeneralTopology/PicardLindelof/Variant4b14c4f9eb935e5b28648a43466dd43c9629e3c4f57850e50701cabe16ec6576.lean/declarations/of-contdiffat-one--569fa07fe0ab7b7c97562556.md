# of_contDiffAt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcd2276d677e667f58c96e09126c3cafb8bb4506",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 675,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:991a43b0-2f93-2aea-7383-41b50e71ea6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1cd7040c-710c-8891-77ba-551079942fc2",
  "kind": "lemma",
  "lexical_name": "of_contDiffAt_one",
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
  "slug": "of-contdiffat-one--569fa07fe0ab7b7c97562556",
  "source": {
    "blob": "bcd2276d677e667f58c96e09126c3cafb8bb4506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 675,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:569fa07fe0ab7b7c97562556cbabdbcd54df0a3fe92e8082729c9d13984813f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cd7040c-710c-8891-77ba-551079942fc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 675–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_contDiffAt_one [NormedSpace ℝ E]
    {f : E → E} {x₀ : E} (hf : ContDiffAt ℝ 1 f x₀) :
    ∃ (ε : ℝ) (hε : 0 < ε) (a r L K : ℝ≥0) (_ : 0 < r), ∀ (t₀ : ℝ), IsPicardLindelof (fun _ ↦ f)
      (tmin := t₀ - ε) (tmax := t₀ + ε) ⟨t₀, (by simp [le_of_lt hε])⟩ x₀ a r L K := by
  -- Obtain ball of radius `a` within the domain in which f is `K`-lipschitz
  obtain ⟨K, s, hs, hl⟩ := hf.exists_lipschitzOnWith
  obtain ⟨a, ha : 0 < a, has⟩ := Metric.mem_nhds_iff.mp hs
  set L := K * a + ‖f x₀‖ + 1 with hL
  have hL0 : 0 < L := by positivity
  have hb (x : E) (hx : x ∈ closedBall x₀ (a / 2)) : ‖f x‖ ≤ L := by
    rw [hL]
    calc
      ‖f x‖ ≤ ‖f x - f x₀‖ + ‖f x₀‖ := norm_le_norm_sub_add _ _
      _ ≤ K * ‖x - x₀‖ + ‖f x₀‖ := by
        gcongr
        apply hl.norm_sub_le _ (mem_of_mem_nhds hs)
        apply subset_trans _ has hx
        exact closedBall_subset_ball <| half_lt_self ha -- this is where we need `a / 2`
      _ ≤ K * a + ‖f x₀‖ := by
        gcongr
        rw [← mem_closedBall_iff_norm]
        exact closedBall_subset_closedBall (half_le_self (le_of_lt ha)) hx
      _ ≤ L := le_add_of_nonneg_right zero_le_one
  let ε := a / L / 2 / 2
  have hε0 : 0 < ε := by positivity
  refine ⟨ε, hε0,
    .mk (a / 2) (half_pos ha).le, (.mk (a / 2) (half_pos ha).le) / 2,
    .mk L hL0.le, K, half_pos <| half_pos ha, fun t₀ ↦ ?_⟩
  apply of_time_independent hb <|
    hl.mono <| subset_trans (closedBall_subset_ball (half_lt_self ha)) has
  simp [ε, field]
  norm_num

end

/-! ## Existence of solutions to ODEs -/

open ODE

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
  {f : ℝ → E → E} {tmin tmax : ℝ} {t₀ : Icc tmin tmax} {x₀ x : E} {a r L K : ℝ≥0}

/-- **Picard-Lindelöf (Cauchy-Lipschitz) theorem**, integral form. This version shows the existence
of a local solution whose initial point `x` may be different from the centre `x₀` of the closed
ball within which the properties of the vector field hold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean#L675).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcd2276d677e667f58c96e09126c3cafb8bb4506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
