# high_moebius_series_reciprocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ded98fb-eef3-31c7-981b-5a04885221b7",
  "kind": "theorem",
  "lexical_name": "high_moebius_series_reciprocal",
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
  "slug": "high-moebius-series-reciprocal--c6921cec7744a5c201abae6f",
  "source": {
    "blob": "d7ce5b84aea2f67ba9768cbef8f35140fd0d4d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 78,
    "path": "GRWTSK/NumberTheory/LSeries/TruncatedMoebiusSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6921cec7744a5c201abae6f3bcd083f278242603e47cffccb0204b7cd8f1d6c",
  "verification": {
    "reference": "docs/verification/NumberTheory/LSeries/TruncatedMoebiusSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ded98fb-eef3-31c7-981b-5a04885221b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem high_moebius_series_reciprocal (U : ℕ) {s : ℂ} (hs : 1 < s.re) :
    highMoebiusSeries U s = (riemannZeta s)⁻¹ - 2 * closedMoebiusSeries U s +
      riemannZeta s * closedMoebiusSeries U s ^ 2 := by
  have hz : riemannZeta s ≠ 0 := riemannZeta_ne_zero_of_one_lt_re hs
  have hm : LSeries (μ : ArithmeticFunction ℂ) s = (riemannZeta s)⁻¹ := by
    have hi : riemannZeta s * LSeries (μ : ArithmeticFunction ℂ) s = 1 := by
      rw [← ArithmeticFunction.LSeries_zeta_eq_riemannZeta hs]
      exact ArithmeticFunction.LSeries_zeta_mul_Lseries_moebius hs
    calc
      LSeries (μ : ArithmeticFunction ℂ) s =
          (riemannZeta s)⁻¹ * (riemannZeta s * LSeries (μ : ArithmeticFunction ℂ) s) := by
        rw [← mul_assoc, inv_mul_cancel₀ hz, one_mul]
      _ = (riemannZeta s)⁻¹ := by rw [hi, mul_one]
  rw [high_moebius_series_initial U hs, hm]
  field_simp
  ring

end GRWTSK.NumberTheory.LSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/LSeries/TruncatedMoebiusSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LSeries/TruncatedMoebiusSeries.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7ce5b84aea2f67ba9768cbef8f35140fd0d4d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
