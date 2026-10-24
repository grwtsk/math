# nonnegative_target_of_sequential_packing_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1af4db2-fb18-68f0-e17a-d3768c4469ac",
  "kind": "theorem",
  "lexical_name": "nonnegative_target_of_sequential_packing_limit",
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
  "slug": "nonnegative-target-of-sequential-packing-limit--78eaa3e2673fa9528f840479",
  "source": {
    "blob": "a3caaddb9cd6a5aab90fb6aaa3b3f8ba23cdc611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 176,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SequentialPackingRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78eaa3e2673fa9528f840479516e56cdf8ca91a688ff5229ad470b4f248da608",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SequentialPackingRecurrence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1af4db2-fb18-68f0-e17a-d3768c4469ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonnegative_target_of_sequential_packing_limit
    (seq : SequentialThreePointPrimePacking)
    (target : ℝ)
    (weight residual : ℕ → ℝ)
    (L : ℝ)
    (hL : 0 < L)
    (identity : ∀ n, seq.valueAt n = weight n * target + residual n)
    (hweight : Tendsto weight atTop (𝓝 L))
    (hresidual : Tendsto residual atTop (𝓝 0)) :
    0 ≤ target := by
  have hlim :
      Tendsto seq.valueAt atTop (𝓝 (L * target)) := by
    simp_rw [funext identity]
    simpa using (hweight.mul_const target).add hresidual
  have hnonneg : 0 ≤ L * target :=
    ge_of_tendsto hlim (Eventually.of_forall seq.valueAt_nonnegative)
  exact (mul_nonneg_iff_of_pos_left hL).mp hnonneg

/-- Specialization of the scalar forcing lemma to the repository's signed
quartic witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SequentialPackingRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SequentialPackingRecurrence.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3caaddb9cd6a5aab90fb6aaa3b3f8ba23cdc611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
