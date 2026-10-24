# normalizedSignedAbelDepthShiftResponse_eq_kernelSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21eb4643-473b-a95b-8ee6-f0782acb7708",
  "kind": "theorem",
  "lexical_name": "normalizedSignedAbelDepthShiftResponse_eq_kernelSum",
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
  "slug": "normalizedsignedabeldepthshiftresponse-eq-kernelsum--095f67a27f552f1770fc4aa5",
  "source": {
    "blob": "60d8e7a6036e14738b9e87fca74f96dd3b50cf00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 96,
    "path": "GRWTSK/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:095f67a27f552f1770fc4aa5f2bcec6ca73536050d4f11710d6d286e3c6a418a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21eb4643-473b-a95b-8ee6-f0782acb7708`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedSignedAbelDepthShiftResponse_eq_kernelSum
    (j t a : ℕ) :
    normalizedSignedAbelDepthShiftResponse j t a =
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        normalizedSignedAbelShiftKernel j t h *
          moebiusReal (a + 1 + h) := by
  unfold normalizedSignedAbelDepthShiftResponse
    signedAbelDepthShiftResponse
    normalizedSignedAbelShiftKernel
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro h hh
  have hh1 := (Finset.mem_Ico.mp hh).1
  have hhY := (Finset.mem_Ico.mp hh).2
  by_cases ht : t < 2 ^ (j + 1) - h - 1
  · simp [hh1, hhY, ht]
    ring
  · simp [hh1, hhY, ht]

/-- Exact smoothed-autocorrelation presentation of one signed depth slice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60d8e7a6036e14738b9e87fca74f96dd3b50cf00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
