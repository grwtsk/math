# tailPackageChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d94e611b-4ba3-21e5-225b-42cbca6085db",
  "kind": "theorem",
  "lexical_name": "tailPackageChi",
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
  "slug": "tailpackagechi--24fecafd325c602dfad921ab",
  "source": {
    "blob": "e2631aba0800c98ee4759ddf28c93e7630119e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantda331f55f6e13c0e4836a7827b4153f099d510c02175f611643b2f00ed282501.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24fecafd325c602dfad921ab7aa56ea7e98435668cb2e35254dd3ed25d38a66b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantda331f55f6e13c0e4836a7827b4153f099d510c02175f611643b2f00ed282501.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d94e611b-4ba3-21e5-225b-42cbca6085db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tailPackageChi (Z : ZeroConfig) {q : ℕ} (hRvM : RiemannVonMangoldtChi q Z)
    (P : Params) (hP : P.Valid) :
    ∃ θ₀ : ℝ → ℝ, (∀ᶠ T in atTop, Assembly.TailInputs Z P T (θ₀ T)) ∧
      ∃ C : ℝ, ∀ᶠ T in atTop, θ₀ T ≤ C * l T * T ^ (P.lam / 2 - 1) := by
  obtain ⟨A₀, hA₀, hloc⟩ := hRvM.local_count
  have hwL : ∀ᶠ T in atTop, 8 * P.w ≤ P.L T := (Tail.tendsto_L_atTop P hP).eventually_ge_atTop _
  refine ⟨fun T => Tail.theta0 A₀ (Real.exp (P.L T / 4) * P.C1 T) T, ?_, ?_⟩
  · refine Tail.eventually_tailInputs Z P hP hA₀ hloc (fun T => P.C1 T)
      (fun T => Tail.C1_nonneg P T) ?_ ?_ ?_
    · filter_upwards [hwL] with T hwL
      exact fun r y hy hz => Params.norm_phiHat_sub_I_mul_le hP hwL r y hy hz
    · filter_upwards [hwL] with T hwL
      linarith [Params.half_le_a hP hwL]
    · exact Eventually.of_forall fun T z => GzGp.phiHat_conj P T z
  · exact Tail.eventually_theta0_le P hP hA₀ (fun T => P.C1 T) (fun T => Tail.C1_nonneg P T)
      (hwL.mono fun T hwL => Params.C1_le hP hwL)

/-- boundary count for a χ-configuration (from the two-sided local count). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantda331f55f6e13c0e4836a7827b4153f099d510c02175f611643b2f00ed282501.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantda331f55f6e13c0e4836a7827b4153f099d510c02175f611643b2f00ed282501.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2631aba0800c98ee4759ddf28c93e7630119e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
