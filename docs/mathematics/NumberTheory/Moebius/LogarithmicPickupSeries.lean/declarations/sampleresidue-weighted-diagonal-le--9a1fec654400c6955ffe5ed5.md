# sampleResidue_weighted_diagonal_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e71fe33a-b5df-bf40-217b-b5f7f0eb898f",
  "kind": "theorem",
  "lexical_name": "sampleResidue_weighted_diagonal_le",
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
  "slug": "sampleresidue-weighted-diagonal-le--9a1fec654400c6955ffe5ed5",
  "source": {
    "blob": "813d381298ab1415230ce94eb10edf05338aadba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 202,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a1fec654400c6955ffe5ed567a36690f5c622bfa4098a1a2bc11f6604fd093f",
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

Occurrence: `result:e71fe33a-b5df-bf40-217b-b5f7f0eb898f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampleResidue_weighted_diagonal_le (σ : ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N,
      (sampleResidue (k + 2) - sampleResidue (k + 1)) ^ 2 *
        Real.exp (-σ * Real.log (k + 2 : ℕ))) ≤
      (1 / 4 : ℝ) * ∑ k ∈ Finset.range N,
        Real.exp (-σ * Real.log (k + 2 : ℕ)) / ((k : ℝ) + 2) := by
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro k _
  have h := mul_le_mul_of_nonneg_right
    (sampleResidue_increment_sq_le (n := k + 1) (by omega))
    (Real.exp_pos (-σ * Real.log (k + 2 : ℕ))).le
  convert h using 1; push_cast;
    (try field_simp [show (k : ℝ) + 2 ≠ 0 by positivity]); ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicPickupSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `813d381298ab1415230ce94eb10edf05338aadba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
