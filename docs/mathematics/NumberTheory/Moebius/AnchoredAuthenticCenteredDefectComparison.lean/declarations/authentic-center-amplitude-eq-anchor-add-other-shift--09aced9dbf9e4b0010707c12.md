# authentic_center_amplitude_eq_anchor_add_other_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0adeef5-f47f-117c-195c-06734f42e402",
  "kind": "theorem",
  "lexical_name": "authentic_center_amplitude_eq_anchor_add_other_shift",
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
  "slug": "authentic-center-amplitude-eq-anchor-add-other-shift--09aced9dbf9e4b0010707c12",
  "source": {
    "blob": "63ef7fb343828039e2104e63993799e54a7bcebd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 132,
    "path": "GRWTSK/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09aced9dbf9e4b0010707c123e755fbfe7c52317c6bca8c59b9c4df1c51c8b13",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0adeef5-f47f-117c-195c-06734f42e402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem authentic_center_amplitude_eq_anchor_add_other_shift
    {b a : ℕ} (ha : 0 < a) (hab : a ≤ b)
    (H : Finset ℕ) :
    parityCenteredIntegerCoordinateAmplitude b
        (anchoredMobiusPair a).r H (anchoredMobiusPair a).center =
      (if (anchoredMobiusPair a).h ∈ H then
        (anchoredMobiusPair a).coefficient else 0) +
        anchoredAuthenticOtherShiftDefect b a H := by
  classical
  rw [authentic_integer_center_amplitude_eq_centered_sum]
  let s := zeroWindingCenteredShiftSet b
    (anchoredMobiusPair a).r (anchoredMobiusPair a).center H
  let f : ℕ → ℝ := fun g =>
    moebiusReal ((anchoredMobiusPair a).center - g +
        (anchoredMobiusPair a).r) *
      moebiusReal ((anchoredMobiusPair a).center + g +
        (anchoredMobiusPair a).r)
  change (∑ g ∈ s, f g) =
    (if (anchoredMobiusPair a).h ∈ H then
      (anchoredMobiusPair a).coefficient else 0) +
      (∑ g ∈ s.erase (anchoredMobiusPair a).h, f g)
  have hmem := anchored_shift_mem_authentic_centered_iff ha hab H
  have hf : f (anchoredMobiusPair a).h =
      (anchoredMobiusPair a).coefficient :=
    anchored_symmetric_centered_coefficient_eq a
  by_cases hH : (anchoredMobiusPair a).h ∈ H
  · have hs : (anchoredMobiusPair a).h ∈ s := hmem.mpr hH
    rw [if_pos hH, ← hf]
    exact (Finset.add_sum_erase s f hs).symm
  · have hs : (anchoredMobiusPair a).h ∉ s := by
      intro h
      exact hH (hmem.mp h)
    rw [if_neg hH, zero_add, Finset.erase_eq_of_notMem hs]

/-- Positive factors have a unique anchored centered triple (r,c,h):
equality of all three source coordinates recovers the original a. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63ef7fb343828039e2104e63993799e54a7bcebd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
