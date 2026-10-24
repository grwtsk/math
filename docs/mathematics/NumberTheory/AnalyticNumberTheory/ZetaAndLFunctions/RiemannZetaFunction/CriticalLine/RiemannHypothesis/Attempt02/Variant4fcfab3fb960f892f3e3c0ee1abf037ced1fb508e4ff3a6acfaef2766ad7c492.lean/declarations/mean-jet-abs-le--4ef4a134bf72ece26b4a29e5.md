# mean_jet_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86d6bf54-b314-b287-e0b8-76863a62b947",
  "kind": "theorem",
  "lexical_name": "mean_jet_abs_le",
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
  "slug": "mean-jet-abs-le--4ef4a134bf72ece26b4a29e5",
  "source": {
    "blob": "8d3cf244290ea93c64d01b130421e0d29331f0cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant4fcfab3fb960f892f3e3c0ee1abf037ced1fb508e4ff3a6acfaef2766ad7c492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ef4a134bf72ece26b4a29e5945024f2f22353deaf3d5815ff5b1f9b20d52976",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant4fcfab3fb960f892f3e3c0ee1abf037ced1fb508e4ff3a6acfaef2766ad7c492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86d6bf54-b314-b287-e0b8-76863a62b947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mean_jet_abs_le {A z : ℝ} (hA : 91 ≤ A) (hz : 0 ≤ z) (hzs : z ≤ 2 * A) :
    |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z +
      iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z / 2| ≤ 10 / A := by
  have hp : 0 < A := by linarith
  have h2 : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z| ≤ 5 / A ^ 2 := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      RH16FiveCesaro.actualCorrelation_second_abs_le_five hA z
  have h1 : |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z| ≤ 10 / A := by
    have hh := actualCorrelation_first_abs_le_five hA z
    simp only [iteratedDeriv_succ, iteratedDeriv_zero, abs_of_nonneg hz] at hh ⊢
    calc
      _ ≤ 5 / A ^ 2 * z := hh
      _ ≤ 5 / A ^ 2 * (2 * A) := mul_le_mul_of_nonneg_left hzs (by positivity)
      _ = _ := by field_simp; ring
  have hj := abs_add_le (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z)
    (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z / 2)
  rw [abs_div, abs_of_pos (by norm_num : 0 < (2 : ℝ))] at hj
  have ha : 5 / A ^ 2 + (10 / A) / 2 ≤ 10 / A := by
    field_simp
    nlinarith
  exact hj.trans ((add_le_add h2 (div_le_div_of_nonneg_right h1 (by norm_num))).trans ha)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant4fcfab3fb960f892f3e3c0ee1abf037ced1fb508e4ff3a6acfaef2766ad7c492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant4fcfab3fb960f892f3e3c0ee1abf037ced1fb508e4ff3a6acfaef2766ad7c492.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d3cf244290ea93c64d01b130421e0d29331f0cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
