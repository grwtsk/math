# finite_profile_product_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f85de46-663b-041b-b712-8c500af40fc4",
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
  "slug": "finite-profile-product-integral--61c59bb112ee973c7cac48f3",
  "source": {
    "blob": "750532f30c6e2d76927309de10288f6faa2e62da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 514,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantd4e812e48f14289d40af64eebb8cc66b252724f02fab060a92217d7d265c1558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61c59bb112ee973c7cac48f39ff8aa6afa4020905363176cd7866a7ce0c2e413",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantd4e812e48f14289d40af64eebb8cc66b252724f02fab060a92217d7d265c1558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f85de46-663b-041b-b712-8c500af40fc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–534.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantd4e812e48f14289d40af64eebb8cc66b252724f02fab060a92217d7d265c1558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantd4e812e48f14289d40af64eebb8cc66b252724f02fab060a92217d7d265c1558.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `750532f30c6e2d76927309de10288f6faa2e62da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
