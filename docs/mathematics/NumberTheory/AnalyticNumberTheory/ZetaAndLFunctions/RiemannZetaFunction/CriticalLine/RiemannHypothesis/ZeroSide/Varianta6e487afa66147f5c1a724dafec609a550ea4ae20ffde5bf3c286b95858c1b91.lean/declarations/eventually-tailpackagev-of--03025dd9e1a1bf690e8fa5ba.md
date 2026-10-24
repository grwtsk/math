# eventually_tailPackageV_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df7fe234ca4ee0815795e5b1e3a8e278742112a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7ce0520-1740-efe8-e23d-25760bd93031",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c2f0ef8-91bb-557e-f9c0-8cb61d59eb2c",
  "kind": "theorem",
  "lexical_name": "eventually_tailPackageV_of",
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
  "slug": "eventually-tailpackagev-of--03025dd9e1a1bf690e8fa5ba",
  "source": {
    "blob": "df7fe234ca4ee0815795e5b1e3a8e278742112a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03025dd9e1a1bf690e8fa5ba35892f34491c5bce05e0753b4e5ac2c5d6c40441",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c2f0ef8-91bb-557e-f9c0-8cb61d59eb2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_tailPackageV_of (Z : ZeroConfig) {A₀ : ℝ} (hA₀ : 1 ≤ A₀)
    (hloc : ∀ t : ℝ, (Z.N t (t + 1) : ℝ) ≤ A₀ * Real.log (|t| + 3)) :
    ∃ θ₀ : ℝ → ℝ, (∀ᶠ T in atTop, Assembly.TailInputs Z (P.atV v T) T (θ₀ T)) ∧
      ∃ C : ℝ, ∀ᶠ T in atTop, θ₀ T ≤ C * l T * T ^ (P.lam / 2 - 1) := by
  refine ⟨fun T => Tail.theta0 A₀ (Real.exp (P.L T / 4) * ∫ u, |deriv (deriv (P.phiV v T)) u|) T, ?_, ?_⟩
  · have hL2 : ∀ᶠ T in atTop, 2 ≤ P.L T := (Params.tendsto_L_of_valid hP).eventually_ge_atTop 2
    filter_upwards [eventually_ge_atTop Tail.T₀, hL2, Params.eventually_w8 hP, ha] with T hT hL h8 haT
    have HT : Tail.TailHyp Z (P.atV v T) T A₀ (∫ u, |deriv (deriv (P.phiV v T)) u|) :=
      { hT := hT, hL := hL, hA₀ := hA₀, hloc := hloc, hC₁ := C1Vv_nonneg P v T,
        hdecay := fun r y hy hz => hdecayV_of hP hv hW h8 r y hy hz }
    have ha' : 0 < (P.atV v T).a T := by linarith
    exact HT.tailInputs ha' (fun z => GzGp.phiHat_conj _ T z)
  · exact Tail.eventually_theta0_le P hP hA₀ (fun T => ∫ u, |deriv (deriv (P.phiV v T)) u|)
      (C1Vv_nonneg P v) (R := cW / 2) ((Params.eventually_w8 hP).mono fun T h8 => by linarith [C1Vv_le hP hW h8])

/-! ### The generic bundle -/

include ha in
/-- **the zero side of a modulated window**, from an admissibility witness and a_V ≥ 1/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df7fe234ca4ee0815795e5b1e3a8e278742112a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
