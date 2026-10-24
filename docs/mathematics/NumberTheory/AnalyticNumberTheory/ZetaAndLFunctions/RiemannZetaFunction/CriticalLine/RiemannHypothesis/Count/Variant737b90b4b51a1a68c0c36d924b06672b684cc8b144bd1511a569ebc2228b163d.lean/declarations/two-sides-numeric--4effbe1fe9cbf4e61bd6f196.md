# two_sides_numeric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b9921557758c132db22727b91adfc063f9ca5a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd14999e-7296-1881-4c9c-6b447bc389cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7992df33-f8a4-3b5a-25d1-7a85044c18ee",
  "kind": "lemma",
  "lexical_name": "two_sides_numeric",
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
  "slug": "two-sides-numeric--4effbe1fe9cbf4e61bd6f196",
  "source": {
    "blob": "3b9921557758c132db22727b91adfc063f9ca5a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 252,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4effbe1fe9cbf4e61bd6f19688fa204c8b0ee80ed2df63b722b8f6f92f022081",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7992df33-f8a4-3b5a-25d1-7a85044c18ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_sides_numeric {T : ℝ} (hT : T₀ ≤ T) :
    2 * ((2 * (Real.sqrt T ^ 3)⁻¹ + (Real.sqrt T ^ 2)⁻¹ / 2) * Real.log (2 * T + 4)
          + (2 * (Real.sqrt T ^ 2)⁻¹ + (Real.sqrt T)⁻¹) / (2 * T + 4))
      ≤ 4 * Real.log (4 * T) / T := by
  have hT' : (300 : ℝ) ≤ T := hT
  set u := Real.sqrt T with hu
  have hu2 : u ^ 2 = T := Real.sq_sqrt (by linarith)
  have hu17 : 17 ≤ u := by
    rw [hu, Real.le_sqrt (by norm_num) (by linarith)]
    linarith
  have hu0 : 0 < u := by linarith
  set ℓ := Real.log (4 * T) with hℓ
  have hℓ1 : 1 ≤ ℓ := one_le_log_four_mul hT
  have hℓ' : Real.log (2 * T + 4) ≤ ℓ :=
    Real.log_le_log (by linarith) (by linarith)
  have hlog_nn : 0 ≤ Real.log (2 * T + 4) := Real.log_nonneg (by linarith)
  rw [← hu2] at hℓ' ⊢
  -- replace log(2T+4) by ℓ and 2T+4 by 2T in the denominator
  have step1 : (2 * (u ^ 3)⁻¹ + (u ^ 2)⁻¹ / 2) * Real.log (2 * u ^ 2 + 4)
      ≤ (2 * (u ^ 3)⁻¹ + (u ^ 2)⁻¹ / 2) * ℓ :=
    mul_le_mul_of_nonneg_left hℓ' (by positivity)
  have step2 : (2 * (u ^ 2)⁻¹ + u⁻¹) / (2 * u ^ 2 + 4) ≤ (2 * (u ^ 2)⁻¹ + u⁻¹) / (2 * u ^ 2) :=
    div_le_div_of_nonneg_left (by positivity) (by positivity) (by linarith)
  have step3 : 2 * ((2 * (u ^ 3)⁻¹ + (u ^ 2)⁻¹ / 2) * ℓ + (2 * (u ^ 2)⁻¹ + u⁻¹) / (2 * u ^ 2))
      ≤ 4 * ℓ / u ^ 2 := by
    rw [← sub_nonneg]
    have key : 4 * ℓ / u ^ 2
        - 2 * ((2 * (u ^ 3)⁻¹ + (u ^ 2)⁻¹ / 2) * ℓ + (2 * (u ^ 2)⁻¹ + u⁻¹) / (2 * u ^ 2))
        = (ℓ * (3 * u ^ 2 - 4 * u) - 2 - u) / u ^ 4 := by
      field_simp
      ring
    rw [key]
    apply div_nonneg _ (by positivity)
    have h34 : 0 ≤ 3 * u ^ 2 - 4 * u := by nlinarith
    have := mul_le_mul_of_nonneg_right hℓ1 h34
    nlinarith
  linarith

/-! #### The zero-count sum -/

/-- **Zero-count sum** (proof of [prop:tail]). For T ≥ T₀ and every finite set s of tail
zeros (γ_ρ ∉ I'), ∑_{ρ∈s} m_ρ · dist(γ_ρ, I)⁻³ ≤ 4 A₀ log(4T) / D₀², with D₀² = T. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b9921557758c132db22727b91adfc063f9ca5a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
