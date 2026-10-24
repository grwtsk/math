# abs_sub_le_reciprocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b33461db8ed0e94763546a954f13ecc9dd10d0a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c80d0a0b-df03-a67b-ec85-3fe9841871aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12c83c71-5e8a-dca0-fee1-f4c25b641166",
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
  "slug": "abs-sub-le-reciprocal--adc9c8f15f9f6c6dc64baeaf",
  "source": {
    "blob": "b33461db8ed0e94763546a954f13ecc9dd10d0a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 19,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adc9c8f15f9f6c6dc64baeaf1bab2c229710aabd9251baa75eb0e780067d40cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12c83c71-5e8a-dca0-fee1-f4c25b641166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–58.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b33461db8ed0e94763546a954f13ecc9dd10d0a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
