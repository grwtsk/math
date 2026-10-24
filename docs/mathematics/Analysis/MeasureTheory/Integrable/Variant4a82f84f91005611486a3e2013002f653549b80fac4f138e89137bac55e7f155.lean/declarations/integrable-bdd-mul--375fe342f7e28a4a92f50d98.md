# Integrable.bdd_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a13cac10-6381-ef2d-e7e4-557193d3a52a",
  "kind": "theorem",
  "lexical_name": "Integrable.bdd_mul",
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
  "slug": "integrable-bdd-mul--375fe342f7e28a4a92f50d98",
  "source": {
    "blob": "83c814b244f47e908bbb2bdc85b7455942747a5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 540,
    "path": "GRWTSK/Analysis/MeasureTheory/Integrable/Variant4a82f84f91005611486a3e2013002f653549b80fac4f138e89137bac55e7f155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:375fe342f7e28a4a92f50d983a8e21dc9fd06a2c2096b7a2251bd34928b71f51",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integrable/Variant4a82f84f91005611486a3e2013002f653549b80fac4f138e89137bac55e7f155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a13cac10-6381-ef2d-e7e4-557193d3a52a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.bdd_mul {F : Type*} [NormedDivisionRing F] {f g : α → F} (hint : Integrable g μ)
    (hm : AEStronglyMeasurable f μ) (hfbdd : ∃ C, ∀ x, ‖f x‖ ≤ C) :
    Integrable (fun x => f x * g x) μ := by
  rcases isEmpty_or_nonempty α with hα | hα
  · rw [μ.eq_zero_of_isEmpty]
    exact integrable_zero_measure
  · refine ⟨hm.mul hint.1, ?_⟩
    obtain ⟨C, hC⟩ := hfbdd
    have hCnonneg : 0 ≤ C := le_trans (norm_nonneg _) (hC hα.some)
    have : (fun x => ‖f x * g x‖₊) ≤ fun x => ⟨C, hCnonneg⟩ * ‖g x‖₊ := by
      intro x
      simp only [nnnorm_mul]
      exact mul_le_mul_of_nonneg_right (hC x) (zero_le _)
    refine lt_of_le_of_lt (lintegral_mono_nnreal this) ?_
    simp only [ENNReal.coe_mul]
    rw [lintegral_const_mul' _ _ ENNReal.coe_ne_top]
    exact ENNReal.mul_lt_top ENNReal.coe_lt_top hint.2

-- TODO: generalise the following lemmas to enorm classes

/-- **Hölder's inequality for integrable functions**: the scalar multiplication of an integrable
vector-valued function by a scalar function with finite essential supremum is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integrable/Variant4a82f84f91005611486a3e2013002f653549b80fac4f138e89137bac55e7f155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Integrable/Variant4a82f84f91005611486a3e2013002f653549b80fac4f138e89137bac55e7f155.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c814b244f47e908bbb2bdc85b7455942747a5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
