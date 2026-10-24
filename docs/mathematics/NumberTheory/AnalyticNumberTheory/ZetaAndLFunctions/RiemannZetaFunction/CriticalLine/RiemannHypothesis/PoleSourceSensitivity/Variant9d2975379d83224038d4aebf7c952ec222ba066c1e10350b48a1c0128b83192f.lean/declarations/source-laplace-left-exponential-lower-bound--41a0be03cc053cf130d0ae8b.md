# source_laplace_left_exponential_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "484576590b124a5e7e22ea5c1c4af2cb3a97e415",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a349cd59-aec1-a504-09f5-48d952f7d666",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:991961b5-b1f4-5c7b-c90d-656d606f8cd9",
  "kind": "theorem",
  "lexical_name": "source_laplace_left_exponential_lower_bound",
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
  "slug": "source-laplace-left-exponential-lower-bound--41a0be03cc053cf130d0ae8b",
  "source": {
    "blob": "484576590b124a5e7e22ea5c1c4af2cb3a97e415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41a0be03cc053cf130d0ae8bc3419fc3b38a33fa8b9507daf2b5fc7b56bf260d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:991961b5-b1f4-5c7b-c90d-656d606f8cd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_laplace_left_exponential_lower_bound (z : ℂ) (hz : z.re < 0)
    (hpole : z ^ 2 ≠ 1 / 4) :
    ∃ c : ℝ, 0 < c ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      c * Real.exp (-2 * A * z.re) / A ^ 9 ≤ ‖sourceLaplace A z‖ := by
  have hneg : 0 < (-z).re := by simp only [Complex.neg_re]; linarith
  have hpneg : (-z) ^ 2 ≠ 1 / 4 := by simpa only [neg_sq] using hpole
  obtain ⟨c, hc, R, hR, htail⟩ := source_laplace_exponential_lower_bound (-z) hneg hpneg
  refine ⟨c, hc, R, hR, ?_⟩
  intro A hA
  have hb := htail A hA
  have he : 2 * A * (-z).re = -2 * A * z.re := by simp only [Complex.neg_re]; ring
  rw [he, source_laplace_even A z (hR.trans hA)] at hb
  exact hb

/-- Every fixed off-axis parameter away from the prescribed poles has exponential norm
sensitivity governed by the absolute real part, without any uniformity in that parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `484576590b124a5e7e22ea5c1c4af2cb3a97e415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
