# autocorr_eq_zero_of_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:292e81fd-eeac-cae8-909a-9ecc7d2655db",
  "kind": "theorem",
  "lexical_name": "autocorr_eq_zero_of_support",
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
  "slug": "autocorr-eq-zero-of-support--1bf66ac0b3e63863a5c58f54",
  "source": {
    "blob": "6ad9e2eb80d44633b4c0b8c20c5fe56e727a55f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bf66ac0b3e63863a5c58f546c57ef89ae50054c61eef3bbadd6351666dfaed4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:292e81fd-eeac-cae8-909a-9ecc7d2655db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem autocorr_eq_zero_of_support (v : ℝ → ℝ) {M : ℝ} (hz : ∀ u, M ≤ |u| → v u = 0) {y : ℝ}
    (hy : 2 * M ≤ |y|) : Params.autocorr v y = 0 := by
  unfold Params.autocorr
  have : (fun u => v u * v (u + y)) = fun _ => 0 := by
    funext u
    by_cases hu : M ≤ |u|
    · rw [hz u hu, zero_mul]
    · rw [hz (u + y) ?_, mul_zero]
      have := abs_sub_abs_le_abs_sub y (-u)
      rw [abs_neg, sub_neg_eq_add, add_comm] at this
      have hu := not_le.mp hu
      linarith
  rw [this, integral_zero]

/-- Continuity of `y ↦ (v⋆v)(y)` for continuous `v` vanishing off `(−M, M)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ad9e2eb80d44633b4c0b8c20c5fe56e727a55f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
