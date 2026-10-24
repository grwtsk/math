# differentiableAt_digamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d8da4241ef2a5831e8cb120a4c195ee75c6297f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db1638101a09faf22aac70ae379c3f37df5b7767e123bf4f6b6f2892d75d999d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8679645-1a03-80f2-7918-8e3bc67a534b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3912f3cd-40e9-7840-e0f0-b284ee305026",
  "kind": "theorem",
  "lexical_name": "differentiableAt_digamma",
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
  "slug": "differentiableat-digamma--7cb6fa8334990544705e003a",
  "source": {
    "blob": "6d8da4241ef2a5831e8cb120a4c195ee75c6297f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Stirling/Variantdb1638101a09faf22aac70ae379c3f37df5b7767e123bf4f6b6f2892d75d999d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cb6fa8334990544705e003a4fb30ef7e3f7bc1471f38d8f8f3615641e4af13e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Stirling/Variantdb1638101a09faf22aac70ae379c3f37df5b7767e123bf4f6b6f2892d75d999d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3912f3cd-40e9-7840-e0f0-b284ee305026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableAt_digamma {z : ℂ} (hz : z ∈ Complex.integerComplement) :
    DifferentiableAt ℂ Complex.digamma z := by
  have hopenZ : IsOpen Complex.integerComplement := isOpen_compl_range_intCast
  have hΓan : AnalyticAt ℂ Complex.Gamma z := by
    rw [Complex.analyticAt_iff_eventually_differentiableAt]
    filter_upwards [hopenZ.mem_nhds hz] with w hw
    refine Complex.differentiableAt_Gamma w fun m => ?_
    intro h
    exact hw ⟨-(m : ℤ), by push_cast; rw [h]⟩
  have hzero : ∀ m : ℕ, z ≠ -(m : ℂ) := by
    intro m h
    exact hz ⟨-(m : ℤ), by push_cast; rw [h]⟩
  have hΓne : Complex.Gamma z ≠ 0 := Complex.Gamma_ne_zero hzero
  have hψan : AnalyticAt ℂ Complex.digamma z := by
    have h1 : AnalyticAt ℂ (deriv Complex.Gamma) z := hΓan.deriv
    have h2 := h1.div hΓan hΓne
    exact h2.congr (by
      filter_upwards with w
      rw [Complex.digamma_def, logDeriv_apply]
      rfl)
  exact hψan.differentiableAt

/-- Trigamma termwise series (used in Zeta23/GammaFacts/Mu.lean, deriv_bound).
ψ′(z) = Σ_{n≥0} 1/(z+n)², differentiating the digamma series termwise.   -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Stirling/Variantdb1638101a09faf22aac70ae379c3f37df5b7767e123bf4f6b6f2892d75d999d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Stirling/Variantdb1638101a09faf22aac70ae379c3f37df5b7767e123bf4f6b6f2892d75d999d.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d8da4241ef2a5831e8cb120a4c195ee75c6297f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
