# integral_pow_mul_sub_pow_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "750d168c84f4b3d56dcba3ddd3dc30ae681463df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1be96766-206b-ba8c-3665-a896c71ea1a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e4943c9-fc5a-ff1a-c916-147dfd7178e2",
  "kind": "theorem",
  "lexical_name": "integral_pow_mul_sub_pow_nat",
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
  "slug": "integral-pow-mul-sub-pow-nat--5f4bc464d9fd244a1d6b531e",
  "source": {
    "blob": "750d168c84f4b3d56dcba3ddd3dc30ae681463df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f4bc464d9fd244a1d6b531e2fb3e670b6dfe2498813c65893514d06ca09d99c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e4943c9-fc5a-ff1a-c916-147dfd7178e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_pow_mul_sub_pow_nat (a b : ℕ) (u : ℝ) (hu : 0 ≤ u) :
    (∫ t in (0 : ℝ)..u, t ^ a * (u - t) ^ b) =
      u ^ (a + b + 1) * (a.factorial : ℝ) * (b.factorial : ℝ) /
        ((a + b + 1).factorial : ℝ) := by
  rcases hu.eq_or_lt with rfl | hu
  · simp
  have h := Complex.betaIntegral_scaled ((a : ℂ) + 1) ((b : ℂ) + 1) hu
  have hexp : (a : ℂ) + 1 + ((b : ℂ) + 1) - 1 = ((a + b + 1 : ℕ) : ℂ) := by
    push_cast
    ring
  rw [hexp, betaIntegral_nat_factorials] at h
  simp only [add_sub_cancel_right, Complex.cpow_natCast] at h
  have hcast :
      (∫ t in (0 : ℝ)..u, (t : ℂ) ^ a * ((u : ℂ) - t) ^ b) =
        ((∫ t in (0 : ℝ)..u, t ^ a * (u - t) ^ b : ℝ) : ℂ) := by
    simp only [← Complex.ofReal_sub, ← Complex.ofReal_pow, ← Complex.ofReal_mul,
      intervalIntegral.integral_ofReal]
  rw [hcast] at h
  apply Complex.ofReal_injective
  push_cast
  exact h.trans (by ring)

/-- Exact finite beta convolution paying the even tail order and basis normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `750d168c84f4b3d56dcba3ddd3dc30ae681463df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
