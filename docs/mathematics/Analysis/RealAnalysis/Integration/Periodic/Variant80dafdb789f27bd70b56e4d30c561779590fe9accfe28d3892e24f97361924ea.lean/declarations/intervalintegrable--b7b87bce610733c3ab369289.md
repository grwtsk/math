# intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f40513b-76c0-6828-ea6c-e43413dc705e",
  "kind": "theorem",
  "lexical_name": "intervalIntegrable",
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
  "slug": "intervalintegrable--b7b87bce610733c3ab369289",
  "source": {
    "blob": "1bce6106f3aebf44b66be58d8a8f82ff3650dd41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 249,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7b87bce610733c3ab369289faa6273a815907d6fb5f46a2169797dfce4714dd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f40513b-76c0-6828-ea6c-e43413dc705e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable {t : ℝ} (h₁f : Function.Periodic f T) (hT : 0 < T)
    (h₂f : IntervalIntegrable f MeasureTheory.volume t (t + T)) (a₁ a₂ : ℝ) :
    IntervalIntegrable f MeasureTheory.volume a₁ a₂ := by
  -- Replace [a₁, a₂] by [t - n₁ * T, t + n₂ * T], where n₁ and n₂ are natural numbers
  obtain ⟨n₁, hn₁⟩ := exists_nat_ge ((t - min a₁ a₂) / T)
  obtain ⟨n₂, hn₂⟩ := exists_nat_ge ((max a₁ a₂ - t) / T)
  have : Set.uIcc a₁ a₂ ⊆ Set.uIcc (t - n₁ * T) (t + n₂ * T) := by
    rw [Set.uIcc_subset_uIcc_iff_le]
    constructor
    · calc min (t - n₁ * T) (t + n₂ * T)
      _ ≤ (t - n₁ * T) := by apply min_le_left
      _ ≤ min a₁ a₂ := by linarith [(div_le_iff₀ hT).1 hn₁]
    · calc max a₁ a₂
      _ ≤ t + n₂ * T := by linarith [(div_le_iff₀ hT).1 hn₂]
      _ ≤ max (t - n₁ * T) (t + n₂ * T) := by apply le_max_right
  apply IntervalIntegrable.mono_set _ this
  -- Suffices to show integrability over shifted periods
  let a : ℕ → ℝ := fun n ↦ t + (n - n₁) * T
  rw [(by ring : t - n₁ * T = a 0), (by simp [a] : t + n₂ * T = a (n₁ + n₂))]
  apply IntervalIntegrable.trans_iterate
  -- Show integrability over a shifted period
  intro k hk
  convert (IntervalIntegrable.comp_sub_right h₂f ((k - n₁) * T)) using 1
  · funext x
    simpa using (h₁f.sub_int_mul_eq (k - n₁)).symm
  · simp [a, Nat.cast_add]
    ring

/-- Special case of Function.Periodic.intervalIntegrable: A periodic function is interval integrable
over every interval if it is interval integrable over the period starting from zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bce6106f3aebf44b66be58d8a8f82ff3650dd41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
