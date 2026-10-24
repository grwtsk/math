# sumAbsDiff_le_integral_add_eps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9d5d81a-3eb4-f270-e367-7d30f6a6e880",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e11e030f-c492-6847-1f5d-f2efda26f4b8",
  "kind": "lemma",
  "lexical_name": "sumAbsDiff_le_integral_add_eps",
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
  "slug": "sumabsdiff-le-integral-add-eps--13cce956e2f1b11b0d6eb78b",
  "source": {
    "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1412,
    "line": 1384,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13cce956e2f1b11b0d6eb78b07227bad7a0e12a73f80df1eaf8ffc3e0edd5826",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e11e030f-c492-6847-1f5d-f2efda26f4b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1384–1412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sumAbsDiff_le_integral_add_eps {a b : ℝ} (hab : a < b)
   (g g' : ℝ → ℝ)
   (hg : ∀ x ∈ Set.Icc a b, HasDerivAt g (g' x) x)
   (I : ℝ) (hI : HasRSIntegral (fun x => |g' x|) id a b I)
   (ε : ℝ) (hε : 0 < ε)
   (P : IPart.IPartition a b) :
   RS.SumDiff.sumAbsDiff g P ≤ I + ε := by
     -- Use `hI` with `ε` to get `η > 0` such that for any tagged partition `T` with `T.mesh ≤ η`, `|RSSum - I| < ε`.
     obtain ⟨η, hη_pos, hη⟩ : ∃ η > 0, ∀ (T : TaggedPartition a b), T.mesh ≤ η → |RSSum (fun x => |g' x|) (fun x => x) T - I| < ε := by
       exact hI ε hε;
     -- Use `exists_refinement_mesh_le` to find a refinement `Q` of `P` with `Q.mesh ≤ η`.
     obtain ⟨Q, hQ_ref, hQ_mesh⟩ : ∃ Q : IPart.IPartition a b, IPart.IsRefinement Q P ∧ Q.mesh ≤ η := by
       exact IPart.exists_refinement_mesh_le hab P hη_pos;
     -- Use `sumAbsDiff_mono_of_refinement` to show `sumAbsDiff g P ≤ sumAbsDiff g Q`.
     have h_sum_abs_diff_mono : SumDiff.sumAbsDiff g P ≤ SumDiff.sumAbsDiff g Q := by
       exact SumDiff.sumAbsDiff_le_sumAbsDiff_of_refinement hQ_ref;
     -- Construct a tagged partition `T` from `Q` using `mvtTaggedPartition`.
     obtain ⟨T, hT⟩ : ∃ T : TaggedPartition a b, T.toIPartition = Q ∧ SumDiff.sumAbsDiff g Q = RSSum (fun x => |g' x|) (fun x => x) T := by
       have := sumAbsDiff_eq_RSSum_abs_deriv Q hg;
       exact this;
     -- Show `T.mesh = Q.mesh ≤ η`.
     have hT_mesh : T.mesh = Q.mesh := by
       exact hT.1 ▸ rfl
     generalize_proofs at *; (
     linarith [ abs_lt.mp ( hη T ( by linarith ) ) ])

/-
The total variation of `g` on `[a, b]` is bounded by the Riemann-Stieltjes integral of `|g'|` with respect to `id`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean#L1384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `661a74a18ecefb4e719f68267d0ff8888af929d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
