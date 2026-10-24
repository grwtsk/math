# finite_profile_restricted_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a71a9159-1aea-880e-6be7-1d4aa2a415ff",
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
  "slug": "finite-profile-restricted-integral--aa1c05088aaaf9454082d5e4",
  "source": {
    "blob": "0cbc775b6d014fb6d64d9ffe71d6a9a3962fe489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variant570c523ca626c012d566082c5c0495bbccfe005aa16402cf70907257945e679a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa1c05088aaaf9454082d5e4927d1400d9801e87e38e445c1424ec77a4525451",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variant570c523ca626c012d566082c5c0495bbccfe005aa16402cf70907257945e679a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a71a9159-1aea-880e-6be7-1d4aa2a415ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–156.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variant570c523ca626c012d566082c5c0495bbccfe005aa16402cf70907257945e679a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variant570c523ca626c012d566082c5c0495bbccfe005aa16402cf70907257945e679a.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cbc775b6d014fb6d64d9ffe71d6a9a3962fe489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
