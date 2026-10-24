# re_log_le_of_modulus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd23866e-31e8-7b25-d688-bcfeef410f0f",
  "kind": "theorem",
  "lexical_name": "re_log_le_of_modulus",
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
  "slug": "re-log-le-of-modulus--dbbff8938800be62b75e2328",
  "source": {
    "blob": "aaf1fb8d46341790cb57331e575174e918657c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 79,
    "path": "GRWTSK/Analysis/Complex/NormalizedDiskLogarithm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbbff8938800be62b75e2328b0d0f9c65ae04995bd6eba68dc263e3cc620e27c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd23866e-31e8-7b25-d688-bcfeef410f0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_log_le_of_modulus (g L : ℂ → ℂ) (M η : ℝ)
    (hM : 0 < M) (hη : 0 < η) (hfloor : η ≤ ‖g 0‖) (z : ℂ)
    (hz : ‖g z‖ ≤ M) (he : g z = g 0 * Complex.exp (L z)) :
    (L z).re ≤ Real.log (M / η) := by
  have hg0 : 0 < ‖g 0‖ := hη.trans_le hfloor
  have hn := congrArg norm he
  rw [norm_mul, Complex.norm_exp] at hn
  have hratio : Real.exp (L z).re = ‖g z‖ / ‖g 0‖ := by
    apply (eq_div_iff hg0.ne').mpr
    simpa only [mul_comm] using hn.symm
  have hb : Real.exp (L z).re ≤ M / η := by
    rw [hratio]
    exact (div_le_div_of_nonneg_right hz hg0.le).trans
      (div_le_div_of_nonneg_left hM.le hη hfloor)
  simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hb

/-- Construct both the logarithm and its all-point ceiling from the actual function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/NormalizedDiskLogarithm.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaf1fb8d46341790cb57331e575174e918657c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
