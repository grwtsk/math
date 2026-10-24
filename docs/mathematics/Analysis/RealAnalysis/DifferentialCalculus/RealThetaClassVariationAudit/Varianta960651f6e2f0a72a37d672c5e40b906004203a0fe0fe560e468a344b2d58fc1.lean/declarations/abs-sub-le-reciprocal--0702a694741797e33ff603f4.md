# abs_sub_le_reciprocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d68ba28-b56c-7916-5fe5-c4d20e981b8b",
  "kind": "theorem",
  "lexical_name": "abs_sub_le_reciprocal",
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
  "slug": "abs-sub-le-reciprocal--0702a694741797e33ff603f4",
  "source": {
    "blob": "f05233e91f59fd2dd091663ed54a54d47a570387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 799,
    "line": 760,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0702a694741797e33ff603f441d8477b31cea9a4e3e5a9b6e75d10ff19855f74",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d68ba28-b56c-7916-5fe5-c4d20e981b8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 760–799.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_sub_le_reciprocal (f f' : ℝ → ℝ) (B x y : ℝ)
    (hx : 1 ≤ x) (hxy : x ≤ y) (hc : ContinuousOn f (Set.Ici 1))
    (hd : ∀ t : ℝ, 1 < t → HasDerivAt f (f' t) t)
    (hb : ∀ t : ℝ, 1 < t → |f' t| ≤ B / t ^ 2) :
    |f x - f y| ≤ B * (1 / x - 1 / y) := by
  have hrec (t : ℝ) (ht : 1 ≤ t) :
      HasDerivAt (fun s : ℝ ↦ B / s) (-B / t ^ 2) t := by
    have ht0 : t ≠ 0 := ne_of_gt (by linarith)
    simpa only [div_eq_mul_inv, mul_neg, neg_mul] using
      (hasDerivAt_inv ht0).const_mul B
  have hcont : ContinuousOn (fun s : ℝ ↦ B / s) (Set.Ici 1) :=
    fun t ht ↦ (hrec t ht).continuousAt.continuousWithinAt
  have hmono : MonotoneOn (fun t ↦ f t - B / t) (Set.Ici 1) := by
    apply monotoneOn_of_hasDerivWithinAt_nonneg (convex_Ici 1) (hc.sub hcont)
      (f' := fun t ↦ f' t - (-B / t ^ 2))
    · intro t ht
      have ht1 : 1 < t := by simpa only [interior_Ici, Set.mem_Ioi] using ht
      exact ((hd t ht1).sub (hrec t ht1.le)).hasDerivWithinAt
    · intro t ht
      have ht1 : 1 < t := by simpa only [interior_Ici, Set.mem_Ioi] using ht
      have hl := (abs_le.mp (hb t ht1)).1
      simp only [neg_div]
      linarith
  have hanti : AntitoneOn (fun t ↦ f t + B / t) (Set.Ici 1) := by
    apply antitoneOn_of_hasDerivWithinAt_nonpos (convex_Ici 1) (hc.add hcont)
      (f' := fun t ↦ f' t + (-B / t ^ 2))
    · intro t ht
      have ht1 : 1 < t := by simpa only [interior_Ici, Set.mem_Ioi] using ht
      exact ((hd t ht1).add (hrec t ht1.le)).hasDerivWithinAt
    · intro t ht
      have ht1 : 1 < t := by simpa only [interior_Ici, Set.mem_Ioi] using ht
      have hu := (abs_le.mp (hb t ht1)).2
      simp only [neg_div]
      linarith
  have hm := hmono hx (hx.trans hxy) hxy
  have ha := hanti hx (hx.trans hxy) hxy
  have he : B * (1 / x - 1 / y) = B / x - B / y := by ring
  rw [he]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean#L760).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f05233e91f59fd2dd091663ed54a54d47a570387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
