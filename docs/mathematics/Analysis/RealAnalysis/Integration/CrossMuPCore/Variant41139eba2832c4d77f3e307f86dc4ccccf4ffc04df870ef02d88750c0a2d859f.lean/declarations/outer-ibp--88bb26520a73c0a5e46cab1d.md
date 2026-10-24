# outer_ibp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e010fcb4ea1553e1e0e674f05839954799b6061d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b2e0956-1c89-c93b-ff62-3c90a0ea5c37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fe0e0f3-34aa-bd30-8010-a1cb16834d42",
  "kind": "lemma",
  "lexical_name": "outer_ibp",
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
  "slug": "outer-ibp--88bb26520a73c0a5e46cab1d",
  "source": {
    "blob": "e010fcb4ea1553e1e0e674f05839954799b6061d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88bb26520a73c0a5e46cab1dca7cf2fbd862ea272583b44abc80b6a03fc8e50a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fe0e0f3-34aa-bd30-8010-a1cb16834d42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma outer_ibp (hΦ : ContDiff ℝ 1 Φ) {u : ℝ → ℝ} (hu : ContDiff ℝ 1 u) (τ' : ℝ) :
    ∫ τ in T..(2 * T), u τ * deriv (fun x => Φ x ^ 2) (τ - τ')
      = u (2 * T) * Φ (2 * T - τ') ^ 2 - u T * Φ (T - τ') ^ 2
        - ∫ τ in T..(2 * T), deriv u τ * Φ (τ - τ') ^ 2 := by
  set Ψ : ℝ → ℝ := fun x => Φ x ^ 2 with hΨdef
  have hΨ : ContDiff ℝ 1 Ψ := hΦ.pow 2
  have hΨd : ∀ x, HasDerivAt Ψ (deriv Ψ x) x := fun x =>
    (hΨ.differentiable one_ne_zero x).hasDerivAt
  have hΨ'c : Continuous (deriv Ψ) := hΨ.continuous_deriv le_rfl
  have hud : ∀ x ∈ uIcc T (2 * T), HasDerivAt u (deriv u x) x := fun x _ =>
    (hu.differentiable one_ne_zero x).hasDerivAt
  have hu'c : Continuous (deriv u) := hu.continuous_deriv le_rfl
  have hv : ∀ x ∈ uIcc T (2 * T), HasDerivAt (fun τ => Ψ (τ - τ')) (deriv Ψ (x - τ')) x := by
    intro x _
    have h := (hΨd (x - τ')).comp x ((hasDerivAt_id x).sub_const τ')
    simpa [Function.comp_def] using h
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul hud hv
    (hu'c.intervalIntegrable _ _)
    ((hΨ'c.comp (continuous_id.sub continuous_const)).intervalIntegrable _ _)
  simp only [hΨdef] at hibp ⊢
  rw [hibp]

/-- **IBP in `τ′`** (§5.4 "integrating by parts"), for fixed `τ`, `y ≠ 0` and a phase `θ`:
`∫_T^{2T} Φ(τ−τ′)² cos(τ′y+θ) dτ′ = [Φ(τ−τ′)² sin(τ′y+θ)/y]_T^{2T} + y⁻¹ ∫_T^{2T} (Φ²)′(τ−τ′) sin(τ′y+θ) dτ′`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e010fcb4ea1553e1e0e674f05839954799b6061d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
