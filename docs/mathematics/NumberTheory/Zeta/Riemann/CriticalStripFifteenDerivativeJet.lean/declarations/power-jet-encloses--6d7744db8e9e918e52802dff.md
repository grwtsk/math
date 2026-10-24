# power_jet_encloses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a341a5f4-c7d7-77e9-f2cc-c1c9fe824da6",
  "kind": "lemma",
  "lexical_name": "power_jet_encloses",
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
  "slug": "power-jet-encloses--6d7744db8e9e918e52802dff",
  "source": {
    "blob": "58b659fdd4811b8e9d0ac115dd75ca486fc3191b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 255,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d7744db8e9e918e52802dffc19bdd17b044987a72bf4189d706fae3ca3faaad",
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

Occurrence: `result:a341a5f4-c7d7-77e9-f2cc-c1c9fe824da6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma power_jet_encloses (k : Fin 16) {s : ℂ} (hs : Region s) :
    ‖power k s-powerJet k s‖ ≤ (1/4096 : ℝ) := by
  let w : ℂ := -(s-center)
  let E : ℂ := complexExpTaylor 12 (w*(logCenter k : ℂ))
  have hw : ‖w‖ ≤ (3/4 : ℝ) := by simpa [w] using region_distance hs
  have hk := base_bounds k
  have hC : ‖(base k : ℂ)^w‖ ≤ (16 : ℝ) := by
    rw [Complex.norm_cpow_eq_rpow_re_of_pos (zero_lt_one.trans_le hk.1)]
    have hx : w.re ≤ 1 := (Complex.re_le_norm w).trans (hw.trans (by norm_num))
    exact (Real.rpow_le_rpow_of_exponent_le hk.1 hx).trans (by simpa using hk.2)
  have ha : ‖w*(logCenter k : ℂ)‖ ≤ (9/4 : ℝ) := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
    exact (mul_le_mul hw (logCenter_bound k) (abs_nonneg _) (by norm_num)).trans_eq (by norm_num)
  have ht := realLog_powerTaylor_error (zero_lt_one.trans_le hk.1) (logRecord k)
    w 12 (9/4) 16
    (by change ‖w‖*logRadius ≤ 1; norm_num [logRadius]; nlinarith)
    ha (by norm_num) hC
  have he : ‖(base k : ℂ)^w-E‖ ≤ 24*logRadius+complexExpTaylorRadius 12 (9/4) := by
    change ‖(base k : ℂ)^w-E‖ ≤ 16*(2*(‖w‖*logRadius))+complexExpTaylorRadius 12 (9/4) at ht
    have hδ : 0 ≤ logRadius := by norm_num [logRadius]
    nlinarith [mul_le_mul_of_nonneg_right hw hδ]
  have he1 : 24*logRadius+complexExpTaylorRadius 12 (9/4) ≤ (1 : ℝ) := by
    norm_num [logRadius, complexExpTaylorRadius]
  have hnE : ‖E‖ ≤ (17 : ℝ) := by
    have htri := norm_sub_le ((base k : ℂ)^w) ((base k : ℂ)^w-E)
    rw [sub_sub_cancel] at htri
    linarith
  have hcenter := positive_base_neg_power_norm_le_one hk.1 (by norm_num [center])
  have hid : power k s = (base k : ℂ)^(-center)*(base k : ℂ)^w := by
    unfold power
    rw [← Complex.cpow_add _ _ (Complex.ofReal_ne_zero.mpr (zero_lt_one.trans_le hk.1).ne')]
    congr 1
    dsimp [w]
    ring
  have hdecomp : power k s-powerJet k s =
      (base k : ℂ)^(-center)*((base k : ℂ)^w-E) + ((base k : ℂ)^(-center)-sample k)*E := by
    rw [hid]
    dsimp [powerJet, E, w]
    ring
  rw [hdecomp]
  calc
    _ ≤ ‖(base k : ℂ)^(-center)‖*‖(base k : ℂ)^w-E‖ +
        ‖(base k : ℂ)^(-center)-sample k‖*‖E‖ := by
      simpa [norm_mul] using norm_add_le
        ((base k : ℂ)^(-center)*((base k : ℂ)^w-E)) (((base k : ℂ)^(-center)-sample k)*E)
    _ ≤ 24*logRadius+complexExpTaylorRadius 12 (9/4)+17*sampleRadius := by
      have h1 := mul_le_mul hcenter he (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
      have h2 := mul_le_mul (sample_encloses k) hnE (norm_nonneg _)
        (by norm_num [sampleRadius] : 0 ≤ sampleRadius)
      nlinarith
    _ ≤ 1/4096 := by norm_num [logRadius, sampleRadius, complexExpTaylorRadius]

/-- Explicit polynomial for the FINITE derivative, retaining the log coefficient error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58b659fdd4811b8e9d0ac115dd75ca486fc3191b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
