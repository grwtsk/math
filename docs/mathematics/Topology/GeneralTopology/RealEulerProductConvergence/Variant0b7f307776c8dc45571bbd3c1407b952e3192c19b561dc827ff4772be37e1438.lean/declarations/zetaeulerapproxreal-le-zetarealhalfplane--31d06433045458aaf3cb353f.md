# zetaEulerApproxReal_le_zetaRealHalfPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac81e823-f0e0-9ed7-4b1f-a4208de2695f",
  "kind": "theorem",
  "lexical_name": "zetaEulerApproxReal_le_zetaRealHalfPlane",
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
  "slug": "zetaeulerapproxreal-le-zetarealhalfplane--31d06433045458aaf3cb353f",
  "source": {
    "blob": "3351d3df901566cd30c89a0a5c32242f7e43a83c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31d06433045458aaf3cb353f248fe49d04c902b5ef9cdcb942145131deac20e2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac81e823-f0e0-9ed7-4b1f-a4208de2695f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zetaEulerApproxReal_le_zetaRealHalfPlane
    {σ : Real}
    (hσ : 1 < σ)
    (N : Nat) :
    zetaEulerApproxReal σ N ≤ zetaRealHalfPlane σ := by
  rw [zetaEulerApproxReal_expands_boundedSmoothNumbers]
  exact
    sum_le_tsum_of_nonneg_summable
      (fun n => posWeightReal_nonneg σ n)
      (summable_posWeightReal_of_one_lt hσ)
      (boundedSmoothNumbers (primesUpTo N) N)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3351d3df901566cd30c89a0a5c32242f7e43a83c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
