# weight_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:063bd5ac-c674-e44a-e8cc-f855e3e9e832",
  "kind": "theorem",
  "lexical_name": "weight_nonneg",
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
  "slug": "weight-nonneg--bf00f68a2a0bc8f535bef80a",
  "source": {
    "blob": "e090029032b0ce8c05231f93d1229884f89758b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 100,
    "path": "GRWTSK/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf00f68a2a0bc8f535bef80a1009efe1b7a50891711040174bcc862414deb7c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:063bd5ac-c674-e44a-e8cc-f855e3e9e832`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weight_nonneg {A t : ℝ} {n : ℕ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) (hn : 1 ≤ n) : 0 ≤ pickupWeight A t n := by
  have hnp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hsp : 0 < Real.sqrt n := Real.sqrt_pos.mpr hnp
  have htail : ∀ {x : ℝ}, 0 < x → (n : ℝ) ≤ x →
      (Real.sqrt x)⁻¹ ≤ (Real.sqrt n)⁻¹ := by
    intro x _ hnx
    exact inv_anti₀ hsp (Real.sqrt_le_sqrt hnx)
  by_cases hlo : (n : ℝ) ≤ A ^ 2
  · rw [weight_low hA ht hlo]
    have he : Real.exp (-t / 2) ≤ A⁻¹ := by
      rw [← exp_negative_reset (by linarith : 0 < A)]
      exact Real.exp_le_exp.mpr (by linarith)
    positivity
  · by_cases hhi : (n : ℝ) ≤ Real.exp t
    · rw [weight_middle (lt_of_not_ge hlo) hhi]
      have he := htail (Real.exp_pos t) hhi
      rw [← exp_negative_half] at he
      positivity
    · rw [weight_above hA ht (lt_of_not_ge hhi)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e090029032b0ce8c05231f93d1229884f89758b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
