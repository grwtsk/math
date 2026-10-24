# full_real_pulse_price_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a62b5499-ee3f-d7c7-6b13-5b2eafdb4107",
  "kind": "theorem",
  "lexical_name": "full_real_pulse_price_lower",
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
  "slug": "full-real-pulse-price-lower--9c9a05d609743b341ebf7b2c",
  "source": {
    "blob": "c8f6354f4ebf4d2435667c0ed5bbad0ee4207123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 42,
    "path": "GRWTSK/Analysis/TriangularPulseRealP/Variant16a794a7e2be7308c607bd6b2abf6b656d9c9ead2433ff1cd8af8be7b5278c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c9a05d609743b341ebf7b2cb67e2689307db9e945f4f2261f22271c022998ae",
  "verification": {
    "reference": "docs/verification/Analysis/TriangularPulseRealP/Variant16a794a7e2be7308c607bd6b2abf6b656d9c9ead2433ff1cd8af8be7b5278c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a62b5499-ee3f-d7c7-6b13-5b2eafdb4107`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_real_pulse_price_lower {M : ℕ} (hM : 2 ≤ M) {a p : ℝ}
    (ha : 0 ≤ a) (hp : 1 ≤ p) :
    a ^ p / ((16 : ℝ) ^ p * (3 : ℝ) ^ (p - 1)) * (M : ℝ) ^ (p - 2) ≤ price M a p := by
  have hM0 : (0 : ℝ) < M := by exact_mod_cast (show 0 < M by omega)
  have hD := complete_pulse_debt_lower hM ha
  have hU := complete_pulse_width_upper hM
  have hDp := Real.rpow_le_rpow (by positivity : 0 ≤ a / (16 * M)) hD (by linarith : 0 ≤ p)
  have hUp := Real.rpow_le_rpow (complete_pulse_width_positive hM).le hU
    (sub_nonneg.mpr hp)
  rw [← exact_source_power_ratio hM0 ha p]
  exact div_le_div₀ (Real.rpow_nonneg ((by positivity : 0 ≤ a / (16 * M)).trans hD) p)
    hDp (Real.rpow_pos_of_pos (complete_pulse_width_positive hM) _) hUp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TriangularPulseRealP/Variant16a794a7e2be7308c607bd6b2abf6b656d9c9ead2433ff1cd8af8be7b5278c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TriangularPulseRealP/Variant16a794a7e2be7308c607bd6b2abf6b656d9c9ead2433ff1cd8af8be7b5278c78.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8f6354f4ebf4d2435667c0ed5bbad0ee4207123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
