# integral_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5efa2fe3e7ab9ab30ea42b6298fc43fb95667a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01184773-89e3-a6da-1eee-d3275837c9f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:066b2950-9888-ab31-d387-7e7f887ad075",
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
  "slug": "integral-left--6a999cd85fec0d1e2df95479",
  "source": {
    "blob": "a5efa2fe3e7ab9ab30ea42b6298fc43fb95667a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 24,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a999cd85fec0d1e2df95479d7a384335bdaa91713ce3b507a3190307f74ac6b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:066b2950-9888-ab31-d387-7e7f887ad075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–49.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5efa2fe3e7ab9ab30ea42b6298fc43fb95667a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
