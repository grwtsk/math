# finite_profile_restricted_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7f5828afb01269d2448bfdd6ed91438dddde994",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/1345f728b044e07b264d71d690237d2812f2bcd45789ea3b95b6b3f4994df56b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4814cb93-ce28-b9ca-6cf5-ddff15297f7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a5faaa9-e649-4eb0-f8b9-2178411cca27",
  "kind": "theorem",
  "lexical_name": "finite_profile_restricted_integral",
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
  "slug": "finite-profile-restricted-integral--9b6d523cec8ca3cbdf7b635b",
  "source": {
    "blob": "c7f5828afb01269d2448bfdd6ed91438dddde994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant1345f728b044e07b264d71d690237d2812f2bcd45789ea3b95b6b3f4994df56b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b6d523cec8ca3cbdf7b635b29134a0229c0eb7355a6be5cc44f861dad67ddbf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant1345f728b044e07b264d71d690237d2812f2bcd45789ea3b95b6b3f4994df56b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a5faaa9-e649-4eb0-f8b9-2178411cca27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_profile_restricted_integral
    (r : ℝ → ℝ) (hc : Continuous r) {A l b : ℝ} (hlb : l ≤ b)
    (hs : tsupport r ⊆ Icc (-A) A) (S : Set ℝ) (s : Finset ℕ) (B : ℕ → ℝ)
    (hpos : ∀ k ∈ s, 0 < (k : ℝ)) :
    (∫ v in S, timeRow r l b v * (∑ k ∈ s, B k * cellRow r (k : ℝ) v)) =
      ∑ k ∈ s, B k * (∫ v in S, timeRow r l b v * cellRow r (k : ℝ) v) := by
  have he : (fun v : ℝ => timeRow r l b v *
      (∑ k ∈ s, B k * cellRow r (k : ℝ) v)) =
      (fun v : ℝ => ∑ k ∈ s, B k *
        (timeRow r l b v * cellRow r (k : ℝ) v)) := by
    funext v
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [he, integral_finsetSum s (fun k hk =>
    ((SourceActualMixedWorkFubini.profile_cell_product_integrable r hc hlb
      (hpos k hk) hs).integrableOn).const_mul (B k))]
  apply Finset.sum_congr rfl
  intro k _
  exact integral_const_mul _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant1345f728b044e07b264d71d690237d2812f2bcd45789ea3b95b6b3f4994df56b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant1345f728b044e07b264d71d690237d2812f2bcd45789ea3b95b6b3f4994df56b.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f5828afb01269d2448bfdd6ed91438dddde994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
