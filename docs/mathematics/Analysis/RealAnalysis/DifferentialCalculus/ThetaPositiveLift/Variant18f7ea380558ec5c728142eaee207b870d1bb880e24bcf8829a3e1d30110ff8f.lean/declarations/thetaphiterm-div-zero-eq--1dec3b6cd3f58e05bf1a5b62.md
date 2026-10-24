# thetaPhiTerm_div_zero_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:547aeb15-b6ba-dfb8-00fa-e53346f90f04",
  "kind": "theorem",
  "lexical_name": "thetaPhiTerm_div_zero_eq",
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
  "slug": "thetaphiterm-div-zero-eq--1dec3b6cd3f58e05bf1a5b62",
  "source": {
    "blob": "bf7620d3c70a3e0b0300746cbec9527bd9790cfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 247,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dec3b6cd3f58e05bf1a5b621b03e7cdf4bce9715b19de16596112ca09dfce59",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:547aeb15-b6ba-dfb8-00fa-e53346f90f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiTerm_div_zero_eq (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaPhiTerm m t / thetaPhiTerm 0 t =
      ((m + 1 : ℕ) : ℝ) ^ 2 * (2 * thetaModeA t * ((m + 1 : ℕ) : ℝ) ^ 2 - 3) /
        (2 * thetaModeA t - 3) *
          Real.exp (-thetaModeA t * (((m + 1 : ℕ) : ℝ) ^ 2 - 1)) := by
  have hA := thetaModeA_gt_three ht
  have hd : 2 * thetaModeA t - 3 ≠ 0 := by linarith
  rw [thetaPhiTerm_eq_mode, thetaPhiTerm_eq_mode]
  simp only [thetaModeY, Nat.cast_one, zero_add, one_pow, mul_one]
  have he : Real.exp (-(thetaModeA t * ((m + 1 : ℕ) : ℝ) ^ 2)) =
      Real.exp (-thetaModeA t * (((m + 1 : ℕ) : ℝ) ^ 2 - 1)) * Real.exp (-thetaModeA t) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he]
  field_simp [ne_of_gt Real.pi_pos, hd, Real.exp_ne_zero]

/-- An explicit Gaussian upper bound for the ratio to the first positive mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf7620d3c70a3e0b0300746cbec9527bd9790cfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
