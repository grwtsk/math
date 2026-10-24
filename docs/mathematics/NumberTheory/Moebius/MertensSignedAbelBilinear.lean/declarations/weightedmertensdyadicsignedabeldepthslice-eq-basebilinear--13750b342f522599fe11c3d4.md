# weightedMertensDyadicSignedAbelDepthSlice_eq_baseBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c597afb2-d785-6c8a-9114-ccf577d53e08",
  "kind": "theorem",
  "lexical_name": "weightedMertensDyadicSignedAbelDepthSlice_eq_baseBilinear",
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
  "slug": "weightedmertensdyadicsignedabeldepthslice-eq-basebilinear--13750b342f522599fe11c3d4",
  "source": {
    "blob": "b62cc3cf45684b539152b66d3dd26f0a0a5f659e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 39,
    "path": "GRWTSK/NumberTheory/Moebius/MertensSignedAbelBilinear.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13750b342f522599fe11c3d43d51b26d41db78a0171848e2a8a1f7ce2e0f0fdb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c597afb2-d785-6c8a-9114-ccf577d53e08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensDyadicSignedAbelDepthSlice_eq_baseBilinear
    (j t : ℕ) :
    weightedMertensDyadicSignedAbelDepthSlice j t =
      ∑ a ∈ Finset.range (t + 1),
        moebiusReal (a + 1) * signedAbelDepthShiftResponse j t a := by
  unfold weightedMertensDyadicSignedAbelDepthSlice
    weightedMertensDyadicSignedAbelCell
    signedAbelDepthShiftResponse
  calc
    (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
      if 1 ≤ h ∧ h < 2 ^ (j + 1) ∧
          t < 2 ^ (j + 1) - h - 1 then
        2 * mertensTwoPointPrefix h (t + 1) *
          dyadicMertensShiftWeightDrop j h t
      else 0) =
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        ∑ a ∈ Finset.range (t + 1),
          moebiusReal (a + 1) *
            (if t < 2 ^ (j + 1) - h - 1 then
              2 * moebiusReal (a + 1 + h) *
                dyadicMertensShiftWeightDrop j h t
             else 0) := by
      apply Finset.sum_congr rfl
      intro h hh
      have hh1 := (Finset.mem_Ico.mp hh).1
      have hhY := (Finset.mem_Ico.mp hh).2
      rw [mertensTwoPointPrefix_eq_baseSum]
      by_cases ht : t < 2 ^ (j + 1) - h - 1
      · simp [hh1, hhY, ht]
        rw [Finset.mul_sum, Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro a _ha
        ring
      · simp [hh1, hhY, ht]
    _ = ∑ a ∈ Finset.range (t + 1),
        ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
          moebiusReal (a + 1) *
            (if t < 2 ^ (j + 1) - h - 1 then
              2 * moebiusReal (a + 1 + h) *
                dyadicMertensShiftWeightDrop j h t
             else 0) := by
      rw [Finset.sum_comm]
    _ = ∑ a ∈ Finset.range (t + 1),
        moebiusReal (a + 1) * signedAbelDepthShiftResponse j t a := by
      apply Finset.sum_congr rfl
      intro a _ha
      simp only [signedAbelDepthShiftResponse, Finset.mul_sum]

/-- The exact source-specific bilinear model.  The residual is identically zero
because the factorization is an equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensSignedAbelBilinear.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b62cc3cf45684b539152b66d3dd26f0a0a5f659e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
