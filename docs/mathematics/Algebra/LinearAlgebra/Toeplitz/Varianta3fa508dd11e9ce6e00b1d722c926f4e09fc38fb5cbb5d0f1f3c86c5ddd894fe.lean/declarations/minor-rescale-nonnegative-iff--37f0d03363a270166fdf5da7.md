# minor_rescale_nonnegative_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c962559b-dc80-b55c-99b0-f09ea4fd3d86",
  "kind": "theorem",
  "lexical_name": "minor_rescale_nonnegative_iff",
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
  "slug": "minor-rescale-nonnegative-iff--37f0d03363a270166fdf5da7",
  "source": {
    "blob": "c921b0d971f4cd283baa0cc739de180e4faf6424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 133,
    "path": "GRWTSK/Algebra/LinearAlgebra/Toeplitz/Varianta3fa508dd11e9ce6e00b1d722c926f4e09fc38fb5cbb5d0f1f3c86c5ddd894fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37f0d03363a270166fdf5da7db5cc8d487152d9cef0afed9789e8c2c37ecece4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Toeplitz/Varianta3fa508dd11e9ce6e00b1d722c926f4e09fc38fb5cbb5d0f1f3c86c5ddd894fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c962559b-dc80-b55c-99b0-f09ea4fd3d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minor_rescale_nonnegative_iff (a : ℕ → ℝ) (q : ℝ) (hq : 0 < q)
    {k : ℕ} (r c : Fin k → ℕ) :
    0 ≤ minor (rescale q a) r c ↔ 0 ≤ minor a r c := by
  rw [minor_rescale a q (ne_of_gt hq)]
  have hp : 0 < (∏ i, (q ^ r i)⁻¹) * (∏ j, q ^ c j) := by
    apply mul_pos
    · exact Finset.prod_pos (fun i _ => inv_pos.mpr (pow_pos hq _))
    · exact Finset.prod_pos (fun j _ => pow_pos hq _)
  exact mul_nonneg_iff_of_pos_left hp

/-- A positive normalization cannot repair a failure of infinite-order positivity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Toeplitz/Varianta3fa508dd11e9ce6e00b1d722c926f4e09fc38fb5cbb5d0f1f3c86c5ddd894fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Toeplitz/Varianta3fa508dd11e9ce6e00b1d722c926f4e09fc38fb5cbb5d0f1f3c86c5ddd894fe.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c921b0d971f4cd283baa0cc739de180e4faf6424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
