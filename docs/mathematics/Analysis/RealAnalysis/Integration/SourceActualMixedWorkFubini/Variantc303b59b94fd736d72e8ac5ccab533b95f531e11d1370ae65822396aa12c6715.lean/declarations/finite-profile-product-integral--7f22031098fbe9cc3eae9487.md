# finite_profile_product_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf3873d3f476a29786c1fa6c69417754f43e94e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 493,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba51eb71-c8bd-a42d-64c3-5af5a361a577",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8c9c115-54a8-0e53-738e-4dff0edb4b6f",
  "kind": "theorem",
  "lexical_name": "finite_profile_product_integral",
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
  "slug": "finite-profile-product-integral--7f22031098fbe9cc3eae9487",
  "source": {
    "blob": "fbf3873d3f476a29786c1fa6c69417754f43e94e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 493,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantc303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f22031098fbe9cc3eae9487769f4efd7c74b0a95f514fd1f46d76f189ac8dc7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantc303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8c9c115-54a8-0e53-738e-4dff0edb4b6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_profile_product_integral
    (r : ℝ → ℝ) (hc : Continuous r) {A l b : ℝ} (hlb : l ≤ b)
    (hs : tsupport r ⊆ Icc (-A) A) (s : Finset ℕ) (B : ℕ → ℝ)
    (hpos : ∀ k ∈ s, 0 < (k : ℝ)) :
    (∫ v : ℝ, profileX r l b v * (∑ k ∈ s, B k * profileYCell r (k : ℝ) v)) =
      ∑ k ∈ s, B k * (∫ v : ℝ, profileX r l b v * profileYCell r (k : ℝ) v) := by
  have hfun : (fun v : ℝ => profileX r l b v *
      (∑ k ∈ s, B k * profileYCell r (k : ℝ) v)) =
      (fun v : ℝ => ∑ k ∈ s, B k *
        (profileX r l b v * profileYCell r (k : ℝ) v)) := by
    funext v
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [hfun, integral_finsetSum s (fun k hk =>
    (profile_cell_product_integrable r hc hlb (hpos k hk) hs).const_mul (B k))]
  apply Finset.sum_congr rfl
  intro k _
  exact integral_const_mul _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantc303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantc303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf3873d3f476a29786c1fa6c69417754f43e94e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
