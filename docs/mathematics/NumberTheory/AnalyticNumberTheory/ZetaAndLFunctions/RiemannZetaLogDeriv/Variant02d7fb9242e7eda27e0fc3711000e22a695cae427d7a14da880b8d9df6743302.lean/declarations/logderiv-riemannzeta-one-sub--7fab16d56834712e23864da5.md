# logDeriv_riemannZeta_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8ef9c7f-99ba-8d7d-087b-1181e093c759",
  "kind": "theorem",
  "lexical_name": "logDeriv_riemannZeta_one_sub",
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
  "slug": "logderiv-riemannzeta-one-sub--7fab16d56834712e23864da5",
  "source": {
    "blob": "48afbc56ce7431c7b38f24092c65dc27c60c7c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaLogDeriv/Variant02d7fb9242e7eda27e0fc3711000e22a695cae427d7a14da880b8d9df6743302.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fab16d56834712e23864da5b951373ff0527628990fe59ba33c4852f09910c9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaLogDeriv/Variant02d7fb9242e7eda27e0fc3711000e22a695cae427d7a14da880b8d9df6743302.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8ef9c7f-99ba-8d7d-087b-1181e093c759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_riemannZeta_one_sub {s : ℂ} (hs : ∀ n : ℤ, s ≠ n) (hz : riemannZeta s ≠ 0) :
    logDeriv riemannZeta s =
      -logDeriv riemannZeta (1 - s) + log (2 * π) - digamma s + π / 2 * tan (π * s / 2) := by
  have h2π : 2 * (π : ℂ) ≠ 0 := mod_cast by positivity
  have (m : ℕ) : s ≠ -m := mod_cast hs (-m)
  have : s ≠ 1 := mod_cast hs 1
  have : cos (π * s / 2) ≠ 0 :=
    mt cos_eq_zero_iff.mp fun ⟨k, _⟩ ↦ hs (2 * k + 1) (mod_cast by grind)
  have : HasDerivAt (fun z : ℂ ↦ π * z / 2) (π / 2) s := by
    simpa using ((hasDerivAt_id s).const_mul (π : ℂ)).div_const 2
  have := (hasDerivAt_neg' s).differentiableAt.const_cpow (Or.inl h2π)
  have : riemannZeta ∘ (1 - ·) =ᶠ[𝓝 s]
      fun z ↦ 2 * (2 * π) ^ (-z) * Gamma z * cos (π * z / 2) * riemannZeta z := by
    filter_upwards [isClosed_range_intCast.isOpen_compl.mem_nhds (by grind)] with z hz
    rw [Set.mem_compl_iff, Set.mem_range, not_exists] at hz
    exact riemannZeta_one_sub (fun n h ↦ hz (-n) (by simp [h])) (by grind [hz 1])
  have := (logDeriv_congr_nhds this).eq_of_nhds
  rw [logDeriv_comp, logDeriv_fun_mul, logDeriv_fun_mul, logDeriv_fun_mul, logDeriv_fun_mul,
    logDeriv_fun_comp (f := cos), ← digamma_def] at this
  <;> first | fun_prop | simp_all <;> grind [differentiableAt_riemannZeta, Gamma_ne_zero, hs 0]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaLogDeriv/Variant02d7fb9242e7eda27e0fc3711000e22a695cae427d7a14da880b8d9df6743302.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaLogDeriv/Variant02d7fb9242e7eda27e0fc3711000e22a695cae427d7a14da880b8d9df6743302.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48afbc56ce7431c7b38f24092c65dc27c60c7c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
