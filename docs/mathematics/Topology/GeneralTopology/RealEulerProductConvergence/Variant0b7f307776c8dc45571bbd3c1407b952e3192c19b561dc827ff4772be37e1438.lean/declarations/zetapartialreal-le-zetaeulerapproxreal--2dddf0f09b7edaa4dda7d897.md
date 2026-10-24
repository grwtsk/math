# zetaPartialReal_le_zetaEulerApproxReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7244fff0-8be8-7eb5-4531-b9b7c6ce6a7e",
  "kind": "theorem",
  "lexical_name": "zetaPartialReal_le_zetaEulerApproxReal",
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
  "slug": "zetapartialreal-le-zetaeulerapproxreal--2dddf0f09b7edaa4dda7d897",
  "source": {
    "blob": "3351d3df901566cd30c89a0a5c32242f7e43a83c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dddf0f09b7edaa4dda7d8975d208a0d007876979fbbcf6264261b6af9a00b58",
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

Occurrence: `result:7244fff0-8be8-7eb5-4531-b9b7c6ce6a7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zetaPartialReal_le_zetaEulerApproxReal
    (σ : Real)
    (N : Nat) :
    zetaPartialReal σ N ≤ zetaEulerApproxReal σ N := by
  rw [zetaEulerApproxReal_expands_boundedSmoothNumbers]
  unfold zetaPartialReal
  exact
    Finset.sum_le_sum_of_subset_of_nonneg
      (Icc_subset_boundedSmoothNumbers_primesUpTo N)
      (fun n _hn _hnot => posWeightReal_nonneg σ n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RealEulerProductConvergence/Variant0b7f307776c8dc45571bbd3c1407b952e3192c19b561dc827ff4772be37e1438.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3351d3df901566cd30c89a0a5c32242f7e43a83c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
