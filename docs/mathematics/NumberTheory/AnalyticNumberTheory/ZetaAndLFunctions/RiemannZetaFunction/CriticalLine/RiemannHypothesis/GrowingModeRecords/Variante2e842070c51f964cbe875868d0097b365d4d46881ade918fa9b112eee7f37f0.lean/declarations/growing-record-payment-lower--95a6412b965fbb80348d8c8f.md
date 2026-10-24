# growing_record_payment_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30679908-a786-76dd-9e9a-7688e698440c",
  "kind": "theorem",
  "lexical_name": "growing_record_payment_lower",
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
  "slug": "growing-record-payment-lower--95a6412b965fbb80348d8c8f",
  "source": {
    "blob": "41daeb122ea765ac54169e330d30103e5180a6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GrowingModeRecords/Variante2e842070c51f964cbe875868d0097b365d4d46881ade918fa9b112eee7f37f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95a6412b965fbb80348d8c8f6661545cbef61f693617a54c5ae9cfc365894f8c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GrowingModeRecords/Variante2e842070c51f964cbe875868d0097b365d4d46881ade918fa9b112eee7f37f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30679908-a786-76dd-9e9a-7688e698440c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem growing_record_payment_lower {delta gamma : ℝ} (hd : 0 < delta) (hg : 0 < gamma)
    (k : ℕ) :
    (Real.exp (delta * (2 * Real.pi / gamma)) - 1) ^ 2 / 2 ≤ recordSquarePayment delta gamma k := by
  let d : ℝ := Real.exp (delta * (2 * Real.pi / gamma)) - 1
  have hd0 : 0 < d := by
    have hx : 0 < delta * (2 * Real.pi / gamma) := by positivity
    have he : 1 < Real.exp (delta * (2 * Real.pi / gamma)) := by
      simpa only [Real.exp_zero] using Real.exp_lt_exp.mpr hx
    exact sub_pos.mpr he
  have he : 1 ≤ Real.exp (delta * CriticalModeIntervals.finish gamma k) := by
    simpa only [Real.exp_zero] using Real.exp_le_exp.mpr
      (mul_nonneg hd.le (quarter_endpoint_nonnegative hg k))
  have hgap : d ≤ recordGap delta gamma k := by
    rw [exact_record_gap hd.le hg]
    change d ≤ Real.exp (delta * CriticalModeIntervals.finish gamma k) * d
    simpa only [one_mul] using mul_le_mul_of_nonneg_right he hd0.le
  have hs : d ^ 2 ≤ recordGap delta gamma k ^ 2 :=
    (sq_le_sq₀ hd0.le (hd0.le.trans hgap)).mpr hgap
  unfold recordSquarePayment
  apply (div_le_div_iff₀ (by norm_num) (native_record_width_positive hg k)).mpr
  have hw := mul_le_mul_of_nonneg_left (native_record_width_le_two hg k) (sq_nonneg d)
  change d ^ 2 * recordWidth gamma k ≤ recordGap delta gamma k ^ 2 * 2
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GrowingModeRecords/Variante2e842070c51f964cbe875868d0097b365d4d46881ade918fa9b112eee7f37f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GrowingModeRecords/Variante2e842070c51f964cbe875868d0097b365d4d46881ade918fa9b112eee7f37f0.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41daeb122ea765ac54169e330d30103e5180a6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
