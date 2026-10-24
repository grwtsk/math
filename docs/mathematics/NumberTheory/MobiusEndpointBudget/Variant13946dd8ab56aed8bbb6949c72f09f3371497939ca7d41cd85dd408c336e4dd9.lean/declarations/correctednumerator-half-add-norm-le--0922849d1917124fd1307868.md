# correctedNumerator_half_add_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb1d943ed535ac9ac9a97d67d1bb4eeb2cf8c388",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03176730-1416-0654-effb-039c2436249a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fde9fdd-ef04-b747-044c-01b27c917b43",
  "kind": "theorem",
  "lexical_name": "correctedNumerator_half_add_norm_le",
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
  "slug": "correctednumerator-half-add-norm-le--0922849d1917124fd1307868",
  "source": {
    "blob": "bb1d943ed535ac9ac9a97d67d1bb4eeb2cf8c388",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 60,
    "path": "GRWTSK/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0922849d1917124fd13078685b4f5a77a8a80e9a08699854bfbb17f72b5ebe40",
  "verification": {
    "reference": "docs/verification/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fde9fdd-ef04-b747-044c-01b27c917b43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNumerator_half_add_norm_le (X : ℕ) (ε : ℝ)
    (hX : 1 ≤ X) (hε : 0 ≤ ε) :
    ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ≤
      ε * (1 + Real.log (X : ℝ)) ^ 2 := by
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hX0 : 0 < (X : ℝ) := lt_of_lt_of_le zero_lt_one hXr
  have hlog : 0 ≤ Real.log (X : ℝ) := Real.log_nonneg hXr
  have hcont : ContinuousOn (fun x : ℝ => (1 + Real.log (X : ℝ)) / x)
      (Set.Icc (1 : ℝ) X) :=
    continuousOn_const.div continuousOn_id (fun x hx =>
      (lt_of_lt_of_le zero_lt_one hx.1).ne')
  have hi : IntegrableOn (fun x : ℝ => (1 + Real.log (X : ℝ)) / x)
      (Set.Ioc (1 : ℝ) X) :=
    hcont.integrableOn_Icc.mono_set Set.Ioc_subset_Icc_self
  have hb : ‖∫ x : ℝ in Set.Ioc 1 (X : ℝ),
      (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
        Complex.exp ((1 / 2 - (1 / 2 + (ε : ℂ))) * (Real.log x : ℂ)) / (x : ℂ)‖ ≤
      (1 + Real.log (X : ℝ)) * Real.log (X : ℝ) := by
    calc
      _ ≤ ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (1 + Real.log (X : ℝ)) / x := by
        apply norm_integral_le_of_norm_le hi
        filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
        exact integrand_norm_le X ε x hε ⟨le_of_lt hx.1, hx.2⟩
      _ = _ := by
        rw [← intervalIntegral.integral_of_le hXr]
        simp_rw [div_eq_mul_inv]
        rw [intervalIntegral.integral_const_mul, integral_inv_of_pos zero_lt_one hX0, div_one]
  rw [correctedNumerator_eq_prefix_integral,
    show (1 / 2 + (ε : ℂ)) - 1 / 2 = (ε : ℂ) by ring,
    norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hε]
  calc
    _ ≤ ε * ((1 + Real.log (X : ℝ)) * Real.log (X : ℝ)) :=
      mul_le_mul_of_nonneg_left hb hε
    _ ≤ _ := by gcongr; nlinarith

/-- The finite damped coefficient retains the complete original endpoint correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb1d943ed535ac9ac9a97d67d1bb4eeb2cf8c388` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
