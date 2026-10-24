# integral_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8588be75-c1a4-c673-9b35-37b2b1415ff0",
  "kind": "lemma",
  "lexical_name": "integral_left",
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
  "slug": "integral-left--e63df404067a178c190bb3d2",
  "source": {
    "blob": "09eeee87b82d48b14fb4888945481956a1f66eef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e63df404067a178c190bb3d23e5102371bd30fa0ed245678b5a8ed3ba34438e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8588be75-c1a4-c673-9b35-37b2b1415ff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_left (T : ℝ) (hT : 0 < T) :
    ∫ τ in T..(2 * T), ((1 + (τ - T)) ^ 2)⁻¹ ≤ 1 := by
  have hderiv : ∀ x ∈ uIcc T (2 * T),
      HasDerivAt (fun τ : ℝ => -(1 + (τ - T))⁻¹) (((1 + (x - T)) ^ 2)⁻¹) x := by
    intro x hx
    rw [uIcc_of_le (by linarith)] at hx
    have hpos : (1 + (x - T)) ≠ 0 := by linarith [hx.1]
    have h1 : HasDerivAt (fun τ : ℝ => 1 + (τ - T)) 1 x := by
      simpa using ((hasDerivAt_id x).sub_const T).const_add 1
    have h2 := (h1.inv hpos).neg
    have heq : -(-1 / (1 + (x - T)) ^ 2) = ((1 + (x - T)) ^ 2)⁻¹ := by
      rw [neg_div, neg_neg, one_div]
    exact heq ▸ h2
  have hcont : ContinuousOn (fun x : ℝ => ((1 + (x - T)) ^ 2)⁻¹) (uIcc T (2 * T)) := by
    rw [uIcc_of_le (by linarith)]
    apply ContinuousOn.inv₀ (by fun_prop)
    intro x hx; have : 0 < 1 + (x - T) := by linarith [hx.1]
    positivity
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hderiv (hcont.intervalIntegrable)]
  have h1T : 0 < 1 + T := by linarith
  simp only [sub_self, add_zero, inv_one]
  rw [show 2 * T - T = T by ring]
  have : 0 < (1 + T)⁻¹ := by positivity
  linarith

/-- ∫_T^{2T} ((1+(2T−τ))²)⁻¹ dτ = 1 − 1/(1+T) ≤ 1 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09eeee87b82d48b14fb4888945481956a1f66eef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
