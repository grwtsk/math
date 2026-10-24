# actual_finite_log_prefix_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8e01aa9-3be9-d327-a7a4-ee56684edd7e",
  "kind": "theorem",
  "lexical_name": "actual_finite_log_prefix_transport",
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
  "slug": "actual-finite-log-prefix-transport--c221a13f92737de365587338",
  "source": {
    "blob": "468219a70e5a25ff0e592cc7a38a8aee05e21184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c221a13f92737de36558733860fe3134cc86f3c9716ff00fc438f40efa63a8b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8e01aa9-3be9-d327-a7a4-ee56684edd7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_finite_log_prefix_transport (A : ℝ) (K : ℕ)
    (hK : vaughanCutoff A + 1 ≤ K) (F : ℝ → ℝ) (hF : Continuous F) :
    (∑ k ∈ Finset.Ico (vaughanCutoff A + 1) K,
      (∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n) *
        ∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), F s) =
      ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..Real.log (K : ℝ),
        actualLogColumnPrefix A s * F s := by
  have hsum := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (a := fun k : ℕ => Real.log (k : ℝ)) hK
    (fun k hk => by
      have hk1 : 1 ≤ k := by have := hk.1; omega
      simpa only [Nat.cast_add, Nat.cast_one] using prefix_F_cell_integrable A hk1 F hF)
  rw [← hsum]
  apply Finset.sum_congr rfl
  intro k hk
  have hk1 : 1 ≤ k := by have := (Finset.mem_Ico.mp hk).1; omega
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  rw [← intervalIntegral.integral_const_mul]
  simp only [Nat.cast_add, Nat.cast_one]
  apply intervalIntegral.integral_congr_ae
  rw [uIoc_of_le (Real.log_le_log hk0 (by linarith))]
  filter_upwards [actualLogColumnPrefix_ae_log_cell A hk1] with s hs hm
  rw [hs hm]

/-- All original positive physical cells transport to the same full prefix interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `468219a70e5a25ff0e592cc7a38a8aee05e21184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
