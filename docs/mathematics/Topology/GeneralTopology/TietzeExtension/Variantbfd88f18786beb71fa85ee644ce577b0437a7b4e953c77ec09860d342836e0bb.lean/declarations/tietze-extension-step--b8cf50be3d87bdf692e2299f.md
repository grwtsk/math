# tietze_extension_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65e77ae6c01e8592f9cc53a4fcd12b24fd0dae55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0efed685-5227-6250-e20e-acadde19742d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f5bb230-2c13-1f46-a778-15531da81c6e",
  "kind": "theorem",
  "lexical_name": "tietze_extension_step",
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
  "slug": "tietze-extension-step--b8cf50be3d87bdf692e2299f",
  "source": {
    "blob": "65e77ae6c01e8592f9cc53a4fcd12b24fd0dae55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8cf50be3d87bdf692e2299f8bbbb68a41f58dc59cc9581d3cc6186677f7a431",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f5bb230-2c13-1f46-a778-15531da81c6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tietze_extension_step (f : X →ᵇ ℝ) (e : C(X, Y)) (he : IsClosedEmbedding e) :
    ∃ g : Y →ᵇ ℝ, ‖g‖ ≤ ‖f‖ / 3 ∧ dist (g.compContinuous e) f ≤ 2 / 3 * ‖f‖ := by
  have h3 : (0 : ℝ) < 3 := by norm_num1
  have h23 : 0 < (2 / 3 : ℝ) := by norm_num1
  -- In the trivial case `f = 0`, we take `g = 0`
  rcases eq_or_ne f 0 with (rfl | hf)
  · use 0
    simp
  replace hf : 0 < ‖f‖ := norm_pos_iff.2 hf
  /- Otherwise, the closed sets `e '' (f ⁻¹' (Iic (-‖f‖ / 3)))` and `e '' (f ⁻¹' (Ici (‖f‖ / 3)))`
    are disjoint, hence by Urysohn's lemma there exists a function `g` that is equal to `-‖f‖ / 3`
    on the former set and is equal to `‖f‖ / 3` on the latter set. This function `g` satisfies the
    assertions of the lemma. -/
  have hf3 : -‖f‖ / 3 < ‖f‖ / 3 := (div_lt_div_iff_of_pos_right h3).2 (Left.neg_lt_self hf)
  have hc₁ : IsClosed (e '' (f ⁻¹' Iic (-‖f‖ / 3))) :=
    he.isClosedMap _ (isClosed_Iic.preimage f.continuous)
  have hc₂ : IsClosed (e '' (f ⁻¹' Ici (‖f‖ / 3))) :=
    he.isClosedMap _ (isClosed_Ici.preimage f.continuous)
  have hd : Disjoint (e '' (f ⁻¹' Iic (-‖f‖ / 3))) (e '' (f ⁻¹' Ici (‖f‖ / 3))) := by
    refine disjoint_image_of_injective he.injective (Disjoint.preimage _ ?_)
    rwa [Iic_disjoint_Ici, not_le]
  rcases exists_bounded_mem_Icc_of_closed_of_le hc₁ hc₂ hd hf3.le with ⟨g, hg₁, hg₂, hgf⟩
  refine ⟨g, ?_, ?_⟩
  · refine (norm_le <| div_nonneg hf.le h3.le).mpr fun y => ?_
    simpa [abs_le, neg_div] using hgf y
  · refine (dist_le <| mul_nonneg h23.le hf.le).mpr fun x => ?_
    have hfx : -‖f‖ ≤ f x ∧ f x ≤ ‖f‖ := by
      simpa only [Real.norm_eq_abs, abs_le] using f.norm_coe_le_norm x
    rcases le_total (f x) (-‖f‖ / 3) with hle₁ | hle₁
    · calc
        |g (e x) - f x| = -‖f‖ / 3 - f x := by
          rw [hg₁ (mem_image_of_mem _ hle₁), Function.const_apply,
            abs_of_nonneg (sub_nonneg.2 hle₁)]
        _ ≤ 2 / 3 * ‖f‖ := by linarith
    · rcases le_total (f x) (‖f‖ / 3) with hle₂ | hle₂
      · simp only [neg_div] at *
        calc
          dist (g (e x)) (f x) ≤ |g (e x)| + |f x| := dist_le_norm_add_norm _ _
          _ ≤ ‖f‖ / 3 + ‖f‖ / 3 := (add_le_add (abs_le.2 <| hgf _) (abs_le.2 ⟨hle₁, hle₂⟩))
          _ = 2 / 3 * ‖f‖ := by linarith
      · calc
          |g (e x) - f x| = f x - ‖f‖ / 3 := by
            rw [hg₂ (mem_image_of_mem _ hle₂), abs_sub_comm, Function.const_apply,
              abs_of_nonneg (sub_nonneg.2 hle₂)]
          _ ≤ 2 / 3 * ‖f‖ := by linarith

/-- **Tietze extension theorem** for real-valued bounded continuous maps, a version with a closed
embedding and bundled composition. If `e : C(X, Y)` is a closed embedding of a topological space
into a normal topological space and `f : X →ᵇ ℝ` is a bounded continuous function, then there exists
a bounded continuous function `g : Y →ᵇ ℝ` of the same norm such that `g ∘ e = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e77ae6c01e8592f9cc53a4fcd12b24fd0dae55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
