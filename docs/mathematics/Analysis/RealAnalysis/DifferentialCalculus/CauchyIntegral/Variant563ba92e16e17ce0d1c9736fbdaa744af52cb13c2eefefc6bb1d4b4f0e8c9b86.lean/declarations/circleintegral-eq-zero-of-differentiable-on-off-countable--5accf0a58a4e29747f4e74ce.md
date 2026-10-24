# circleIntegral_eq_zero_of_differentiable_on_off_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a069dd3387f8dacd6277e4b9cb3815ca502d74b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 402,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34ddcdd0-ce61-ac8c-3e63-d312caa5e20a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c17178c6-9c07-2597-1936-6e6c0e30ef5b",
  "kind": "theorem",
  "lexical_name": "circleIntegral_eq_zero_of_differentiable_on_off_countable",
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
  "slug": "circleintegral-eq-zero-of-differentiable-on-off-countable--5accf0a58a4e29747f4e74ce",
  "source": {
    "blob": "8a069dd3387f8dacd6277e4b9cb3815ca502d74b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 402,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5accf0a58a4e29747f4e74cede889c055b47833e3c6f8f982fdab332130126f3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c17178c6-9c07-2597-1936-6e6c0e30ef5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleIntegral_eq_zero_of_differentiable_on_off_countable {R : ℝ} (h0 : 0 ≤ R) {f : ℂ → E}
    {c : ℂ} {s : Set ℂ} (hs : s.Countable) (hc : ContinuousOn f (closedBall c R))
    (hd : ∀ z ∈ ball c R \ s, DifferentiableAt ℂ f z) : (∮ z in C(c, R), f z) = 0 := by
  wlog hE : CompleteSpace E generalizing
  · simp [circleIntegral, intervalIntegral, integral, hE]
  rcases h0.eq_or_lt with (rfl | h0); · apply circleIntegral.integral_radius_zero
  calc
    (∮ z in C(c, R), f z) = ∮ z in C(c, R), (z - c)⁻¹ • (z - c) • f z :=
      (circleIntegral.integral_sub_inv_smul_sub_smul _ _ _ _).symm
    _ = (2 * ↑π * I : ℂ) • (c - c) • f c :=
      (circleIntegral_sub_center_inv_smul_of_differentiable_on_off_countable h0 hs
        ((continuousOn_id.sub continuousOn_const).smul hc) fun z hz =>
        (differentiableAt_id.sub_const _).smul (hd z hz))
    _ = 0 := by rw [sub_self, zero_smul, smul_zero]

/-- An auxiliary lemma for
`Complex.circleIntegral_sub_inv_smul_of_differentiable_on_off_countable`. This lemma assumes
`w ∉ s` while the main lemma drops this assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a069dd3387f8dacd6277e4b9cb3815ca502d74b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
