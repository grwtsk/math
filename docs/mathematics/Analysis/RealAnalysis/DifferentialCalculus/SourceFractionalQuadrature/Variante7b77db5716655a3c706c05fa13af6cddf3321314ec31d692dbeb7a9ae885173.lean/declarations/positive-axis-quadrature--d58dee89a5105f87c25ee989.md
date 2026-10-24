# positive_axis_quadrature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88bc693be20a0b66805a18d190af9f2fc9e6e41f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97c8ad3e-5b9d-d5e8-f42f-f9b341c97c62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3410979-74f1-1045-cfe4-5c04e7ab9086",
  "kind": "theorem",
  "lexical_name": "positive_axis_quadrature",
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
  "slug": "positive-axis-quadrature--d58dee89a5105f87c25ee989",
  "source": {
    "blob": "88bc693be20a0b66805a18d190af9f2fc9e6e41f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d58dee89a5105f87c25ee9890c230bed7bf4ba633ee885c12f917ee14d9e4199",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3410979-74f1-1045-cfe4-5c04e7ab9086`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_axis_quadrature (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (_hs : HasCompactSupport f) (N : ℕ)
    (hbelow : ∀ u : ℝ, u ≤ 0 → f u = 0)
    (hupper : ∀ u : ℝ, (N + 1 : ℝ) ≤ u → f u = 0) :
    (∑ n ∈ Finset.Icc 1 N, f n) - (∫ u in Ioi (0 : ℝ), f u) =
      ∫ u in Ioi (0 : ℝ), Int.fract u * deriv f u := by
  have hsupport : support f ⊆ Ioc 0 (N + 1 : ℝ) := by
    intro u hu
    constructor
    · by_contra h
      exact hu (hbelow u (le_of_not_gt h))
    · by_contra h
      exact hu (hupper u (le_of_lt (lt_of_not_ge h)))
  have htsupport : tsupport f ⊆ Icc 0 (N + 1 : ℝ) :=
    closure_minimal (hsupport.trans Ioc_subset_Icc_self) isClosed_Icc
  have hd : support (fun u : ℝ => Int.fract u * deriv f u) ⊆ Ioc 0 (N + 1 : ℝ) := by
    intro u hu
    have hdu : deriv f u ≠ 0 := by intro h; exact hu (by simp [h])
    have hum := htsupport (support_deriv_subset hdu)
    refine ⟨lt_of_le_of_ne hum.1 ?_, hum.2⟩
    intro he
    exact hu (by simp [← he, Int.fract_zero])
  have hi : (∫ u in Ioi (0 : ℝ), f u) = ∫ u : ℝ, f u :=
    setIntegral_eq_integral_of_forall_compl_eq_zero fun u hu => hbelow u (le_of_not_gt hu)
  have hdi : (∫ u in Ioi (0 : ℝ), Int.fract u * deriv f u) =
      ∫ u : ℝ, Int.fract u * deriv f u :=
    setIntegral_eq_integral_of_forall_compl_eq_zero (by
      intro u hu
      by_contra hn
      exact hu (hd hn).1)
  have hfinite := finite_quadrature_of_endpoint_zero f hf N (hupper _ le_rfl)
  rw [intervalIntegral.integral_eq_integral_of_support_subset hsupport,
    intervalIntegral.integral_eq_integral_of_support_subset hd, ← hi, ← hdi] at hfinite
  exact hfinite

end
end FormalResearch.RiemannHypothesis.SourceFractionalQuadrature
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88bc693be20a0b66805a18d190af9f2fc9e6e41f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
