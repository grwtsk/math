# floor_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8441d5de-e266-e32d-089d-941fbf595831",
  "kind": "lemma",
  "lexical_name": "floor_integral_eq",
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
  "slug": "floor-integral-eq--a8a770457df07202827f9e85",
  "source": {
    "blob": "5fa4ad7768bf7b32bb2748fe300da02c4c9d2e42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 170,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8a770457df07202827f9e850aca06515cbe954996f628b915a99370ccd60bbd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8441d5de-e266-e32d-089d-941fbf595831`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma floor_integral_eq {s : ℂ} (hs : 1 < s.re) :
    (∫ t : ℝ in Ioi 1, (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1))) =
      1 / (s - 1) - fractionalMellin s := by
  have hp : (-s).re < -1 := by simp only [Complex.neg_re]; linarith
  have hg := integrableOn_Ioi_cpow_of_lt hp (show (0 : ℝ) < 1 from zero_lt_one)
  have hh := fractionalMellin_integrable (zero_lt_one.trans hs)
  have hsplit :
      (∫ t : ℝ in Ioi 1, (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1))) =
      ∫ t : ℝ in Ioi 1, ((t : ℂ) ^ (-s) -
        ((t : ℂ) - (⌊t⌋₊ : ℂ)) * (t : ℂ) ^ (-(s + 1))) := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    change (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1)) =
      (t : ℂ) ^ (-s) - ((t : ℂ) - (⌊t⌋₊ : ℂ)) * (t : ℂ) ^ (-(s + 1))
    rw [sub_mul, real_mul_cpow_sub_one s (zero_lt_one.trans ht)]
    ring
  rw [hsplit, integral_sub hg hh, ← fractionalMellin_eq_integral]
  congr 1
  rw [integral_Ioi_cpow_of_lt hp (show (0 : ℝ) < 1 from zero_lt_one),
    Complex.ofReal_one, Complex.one_cpow, show -s + 1 = -(s - 1) by ring,
    neg_div_neg_eq]

/-- The pole-removed form makes the continuation domain connected without a puncture. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa4ad7768bf7b32bb2748fe300da02c4c9d2e42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
