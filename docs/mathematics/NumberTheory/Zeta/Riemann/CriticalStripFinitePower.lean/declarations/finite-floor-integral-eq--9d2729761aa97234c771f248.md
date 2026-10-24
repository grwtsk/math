# finite_floor_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd82fa54-e5c9-ad45-9fec-c3107f580def",
  "kind": "lemma",
  "lexical_name": "finite_floor_integral_eq",
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
  "slug": "finite-floor-integral-eq--9d2729761aa97234c771f248",
  "source": {
    "blob": "ebe2113f9b4d8647700d4b8a4e993c60939c50e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d2729761aa97234c771f2480d32a484552af04fa4bf2c34158ad16a12364459",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd82fa54-e5c9-ad45-9fec-c3107f580def`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_floor_integral_eq {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hs : 0 < s.re) (hs1 : s ≠ 1) :
    (∫ t : ℝ in Ioc 1 (N : ℝ),
      (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1))) =
      ((N : ℂ) ^ (1 - s) - 1) / (1 - s) -
        fractionalMellinTruncation (N : ℝ) s := by
  have hNR : (1 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hcont : ContinuousOn (fun t : ℝ => (t : ℂ) ^ (-s))
      (Icc (1 : ℝ) (N : ℝ)) := by
    intro t ht
    exact (Complex.continuousAt_ofReal_cpow_const _ _
      (Or.inr (zero_lt_one.trans_le ht.1).ne')).continuousWithinAt
  have hi : IntegrableOn (fun t : ℝ => (t : ℂ) ^ (-s)) (Ioc 1 (N : ℝ)) :=
    hcont.integrableOn_Icc.mono_set Ioc_subset_Icc_self
  have hj : IntegrableOn (fractionalIntegrand s) (Ioc 1 (N : ℝ)) :=
    (fractionalIntegrand_integrable hs).mono_set Ioc_subset_Ioi_self
  have hsplit :
      (∫ t : ℝ in Ioc 1 (N : ℝ),
        (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1))) =
      (∫ t : ℝ in Ioc 1 (N : ℝ), (t : ℂ) ^ (-s)) -
        fractionalMellinTruncation (N : ℝ) s := by
    rw [← integral_sub hi hj]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro t ht
    simp only [fractionalIntegrand]
    rw [sub_mul, real_mul_cpow_sub_one s (zero_lt_one.trans ht.1)]
    ring
  rw [hsplit]
  congr 1
  have hzero : (0 : ℝ) ∉ uIcc 1 (N : ℝ) := by
    rw [uIcc_of_le hNR]
    intro h
    exact (not_le_of_gt zero_lt_one) h.1
  rw [← intervalIntegral.integral_of_le hNR,
    integral_cpow (Or.inr ⟨neg_ne_neg.mpr hs1, hzero⟩)]
  simp only [Complex.ofReal_natCast, Complex.ofReal_one, Complex.one_cpow]
  rw [show -s + 1 = 1 - s by ring]

/-- Exact equality of the finite-integral and finite-power models. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebe2113f9b4d8647700d4b8a4e993c60939c50e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
