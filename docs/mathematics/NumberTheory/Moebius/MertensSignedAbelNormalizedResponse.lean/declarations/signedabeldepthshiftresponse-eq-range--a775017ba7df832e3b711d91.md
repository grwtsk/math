# signedAbelDepthShiftResponse_eq_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ebacdbb-b219-3fc3-e643-2affc3ad188f",
  "kind": "theorem",
  "lexical_name": "signedAbelDepthShiftResponse_eq_range",
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
  "slug": "signedabeldepthshiftresponse-eq-range--a775017ba7df832e3b711d91",
  "source": {
    "blob": "41e7d4e872da780caa4fbd208a04f6c2cca0ecbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 72,
    "path": "GRWTSK/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a775017ba7df832e3b711d915ce1729f4d1472e5ba3cbc9ff992b78b3f115b38",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ebacdbb-b219-3fc3-e643-2affc3ad188f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedAbelDepthShiftResponse_eq_range
    {j t a : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    signedAbelDepthShiftResponse j t a =
      ∑ k ∈ Finset.range (2 ^ (j + 1) - t - 2),
        2 * moebiusReal (a + 2 + k) *
          dyadicMertensShiftWeightDrop j (k + 1) t := by
  let Y : ℕ := 2 ^ (j + 1)
  have hfilter :
      (Finset.Ico 1 Y).filter
          (fun h => t < Y - h - 1) =
        Finset.Ico 1 (Y - t - 1) := by
    ext h
    simp only [Finset.mem_filter, Finset.mem_Ico]
    omega
  unfold signedAbelDepthShiftResponse
  rw [show 2 ^ (j + 1) = Y by rfl]
  rw [← Finset.sum_filter, hfilter, Finset.sum_Ico_eq_sum_range]
  have hlen : Y - t - 1 - 1 = Y - t - 2 := by omega
  rw [hlen]
  apply Finset.sum_congr rfl
  intro k _hk
  have hindex : a + 1 + (1 + k) = a + 2 + k := by omega
  rw [hindex, Nat.add_comm 1 k]

/-- The actual weighted growing-shift response is uniformly tiny before any
arithmetic cancellation is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41e7d4e872da780caa4fbd208a04f6c2cca0ecbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
