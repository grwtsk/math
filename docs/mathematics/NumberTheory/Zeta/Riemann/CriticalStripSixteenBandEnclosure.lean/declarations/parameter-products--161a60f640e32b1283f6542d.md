# parameter_products

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c7addbf-701d-07b2-c06f-e47348902f07",
  "kind": "lemma",
  "lexical_name": "parameter_products",
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
  "slug": "parameter-products--161a60f640e32b1283f6542d",
  "source": {
    "blob": "f9ee4e40b06ae8952b19c8082061dabbf4ac3664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:161a60f640e32b1283f6542dd64a7491eb6dc038c1ea85bf95974c9223ddbc65",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c7addbf-701d-07b2-c06f-e47348902f07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma parameter_products {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) :
    ‖s-1‖ ≤ (17 : ℝ) ∧ ‖s‖ ≤ (17 : ℝ) ∧
    ‖CubicPrimitive.multiplier s‖ ≤ (17 : ℝ)^4 ∧
    ‖QuarticPrimitive.multiplier s*(s+4)‖ ≤ (17 : ℝ)^6 ∧
    ‖SexticPrimitive.multiplier s‖ ≤ (17 : ℝ)^6*18 := by
  have h (j : ℝ) (hj : -1 ≤ j) (hj1 : j ≤ 4) := band_shift_norm hx hx1 ht ht1 hj hj1
  have h0 : ‖s‖ ≤ (17 : ℝ) := by simpa using h 0 (by norm_num) (by norm_num)
  have hm : ‖s-1‖ ≤ (17 : ℝ) := by simpa using h (-1) (by norm_num) (by norm_num)
  have h1 : ‖s+1‖ ≤ (17 : ℝ) := by simpa using h 1 (by norm_num) (by norm_num)
  have h2 : ‖s+2‖ ≤ (17 : ℝ) := by simpa using h 2 (by norm_num) (by norm_num)
  have h3 : ‖s+3‖ ≤ (17 : ℝ) := by simpa using h 3 (by norm_num) (by norm_num)
  have h4 : ‖s+4‖ ≤ (17 : ℝ) := by simpa using h 4 (by norm_num) (by norm_num)
  have h5 := band_last_shift_norm hx hx1 ht ht1
  have ha4 : ‖CubicPrimitive.multiplier s‖ ≤ (17 : ℝ)^4 := by
    simp only [CubicPrimitive.multiplier,norm_mul]
    calc
      _ ≤ 17*17*17*17 := by gcongr
      _ = _ := by ring
  have ha6 : ‖QuarticPrimitive.multiplier s*(s+4)‖ ≤ (17 : ℝ)^6 := by
    simp only [QuarticPrimitive.multiplier,CubicPrimitive.multiplier,norm_mul]
    calc
      _ ≤ 17*17*17*17*17*17 := by gcongr
      _ = _ := by ring
  have ha7 : ‖SexticPrimitive.multiplier s‖ ≤ (17 : ℝ)^6*18 := by
    change ‖(QuarticPrimitive.multiplier s*(s+4))*(s+5)‖ ≤ _
    rw [norm_mul]
    exact mul_le_mul ha6 h5 (norm_nonneg _) (by positivity)
  exact ⟨hm,h0,ha4,ha6,ha7⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9ee4e40b06ae8952b19c8082061dabbf4ac3664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
