# endpoint_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b78e2dd6-69cf-2500-e5b6-e9d8455b5e96",
  "kind": "lemma",
  "lexical_name": "endpoint_error",
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
  "slug": "endpoint-error--1bf1075f16d7a43a9ab4d896",
  "source": {
    "blob": "58b659fdd4811b8e9d0ac115dd75ca486fc3191b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 403,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bf1075f16d7a43a9ab4d8963d189ccbf2dd9fec6a8fa609aa805c6da59212a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b78e2dd6-69cf-2500-e5b6-e9d8455b5e96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma endpoint_error {s : ℂ} (hs : Region s) :
    ‖(weightSlope s-weight s*(Real.log 16 : ℂ))*power 15 s -
      (weightSlope s-weight s*(logCenter 15 : ℂ))*powerJet 15 s‖ ≤
        (93/4096 : ℝ)+30*logRadius := by
  have heq : (weightSlope s-weight s*(Real.log 16 : ℂ))*power 15 s -
      (weightSlope s-weight s*(logCenter 15 : ℂ))*powerJet 15 s =
      (weightSlope s-weight s*(logCenter 15 : ℂ))*(power 15 s-powerJet 15 s) -
        weight s*((Real.log 16 : ℂ)-(logCenter 15 : ℂ))*power 15 s := by ring
  have hn := region_weight_bounds hs
  have hc : ‖weightSlope s-weight s*(logCenter 15 : ℂ)‖ ≤ (93 : ℝ) := by
    have ht := norm_sub_le (weightSlope s) (weight s*(logCenter 15 : ℂ))
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs] at ht
    have hm := mul_le_mul hn.1 (logCenter_bound 15) (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 30)
    linarith
  have hl : ‖(Real.log 16 : ℂ)-(logCenter 15 : ℂ)‖ ≤ logRadius := by
    have h := log_encloses (15 : Fin 16)
    norm_num [base] at h
    simpa only [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] using h
  have hp : ‖power 15 s‖ ≤ 1 := positive_base_neg_power_norm_le_one (base_bounds 15).1 hs.1.le
  rw [heq]
  calc
    _ ≤ ‖weightSlope s-weight s*(logCenter 15 : ℂ)‖*‖power 15 s-powerJet 15 s‖ +
        ‖weight s‖*‖(Real.log 16 : ℂ)-(logCenter 15 : ℂ)‖*‖power 15 s‖ := by
      simpa only [norm_mul] using norm_sub_le
        ((weightSlope s-weight s*(logCenter 15 : ℂ))*(power 15 s-powerJet 15 s))
        (weight s*((Real.log 16 : ℂ)-(logCenter 15 : ℂ))*power 15 s)
    _ ≤ _ := by
      gcongr
      · exact hc
      · exact power_jet_encloses 15 hs
      · exact hn.1
      · exact hl
      · exact hp

/-- This is a derivative-formula error theorem, not a differentiated value bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58b659fdd4811b8e9d0ac115dd75ca486fc3191b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
