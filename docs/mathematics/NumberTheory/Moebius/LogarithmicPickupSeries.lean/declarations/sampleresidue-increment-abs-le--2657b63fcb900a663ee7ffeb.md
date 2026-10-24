# sampleResidue_increment_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41dcf004-6801-e7e3-46c1-d67f0b2108fd",
  "kind": "theorem",
  "lexical_name": "sampleResidue_increment_abs_le",
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
  "slug": "sampleresidue-increment-abs-le--2657b63fcb900a663ee7ffeb",
  "source": {
    "blob": "813d381298ab1415230ce94eb10edf05338aadba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2657b63fcb900a663ee7ffeb4ecfa52e30450133cba7bb0a73507fa0bc3b61e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicPickupSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41dcf004-6801-e7e3-46c1-d67f0b2108fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampleResidue_increment_abs_le {n : ℕ} (hn : 1 ≤ n) :
    |sampleResidue (n + 1) - sampleResidue n| ≤
      (Real.sqrt (n + 1 : ℕ))⁻¹ / 2 := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hn1pos : (0 : ℝ) < (n + 1 : ℕ) := by positivity
  have hle : (n : ℝ) ≤ (n + 1 : ℕ) := by exact_mod_cast (Nat.le_succ n)
  have hwidth : (Real.sqrt (n + 1 : ℕ)) ^ 2 - (Real.sqrt n) ^ 2 ≤ 1 := by
    rw [Real.sq_sqrt hn1pos.le, Real.sq_sqrt hnpos.le]
    push_cast
    linarith
  have hm : |mertensPrefix (n : ℝ)| ≤ (Real.sqrt n) ^ 2 := by
    rw [Real.sq_sqrt hnpos.le]
    exact mertensPrefix_abs_le hnpos.le
  have h := cell_drift_bound (Real.sqrt_pos.mpr hn1pos) (Real.sqrt_pos.mpr hnpos)
    (Real.sqrt_le_sqrt hle) hwidth hm
  have he : 2 * mertensPrefix (n : ℝ) *
      ((Real.sqrt n)⁻¹ - (Real.sqrt (n + 1 : ℕ))⁻¹) =
      2 * (sampleResidue (n + 1) - sampleResidue n) := by
    rw [sampleResidue_succ_sub]
    ring
  rw [he, abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at h
  linarith

/-- Squared increment cost. Summing it does not bound the mixed correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicPickupSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `813d381298ab1415230ce94eb10edf05338aadba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
