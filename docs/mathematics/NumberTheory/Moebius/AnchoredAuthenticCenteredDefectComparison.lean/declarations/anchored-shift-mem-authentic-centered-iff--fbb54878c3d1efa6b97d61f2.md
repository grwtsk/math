# anchored_shift_mem_authentic_centered_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3826607c-0952-c2b7-8a6b-5911733ee8fc",
  "kind": "theorem",
  "lexical_name": "anchored_shift_mem_authentic_centered_iff",
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
  "slug": "anchored-shift-mem-authentic-centered-iff--fbb54878c3d1efa6b97d61f2",
  "source": {
    "blob": "63ef7fb343828039e2104e63993799e54a7bcebd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 64,
    "path": "GRWTSK/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbb54878c3d1efa6b97d61f2cbe933c9c595df079410cab1376e868a7dc7fcaa",
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

Occurrence: `result:3826607c-0952-c2b7-8a6b-5911733ee8fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem anchored_shift_mem_authentic_centered_iff
    {b a : ℕ} (ha : 0 < a) (hab : a ≤ b)
    (H : Finset ℕ) :
    (anchoredMobiusPair a).h ∈
        zeroWindingCenteredShiftSet b (anchoredMobiusPair a).r
          (anchoredMobiusPair a).center H ↔
      (anchoredMobiusPair a).h ∈ H := by
  classical
  simp only [zeroWindingCenteredShiftSet, Finset.mem_filter]
  constructor
  · intro hm
    exact hm.1
  · intro hm
    refine ⟨hm, ?_, ?_, ?_, ?_⟩
    · unfold CenteredAdditiveMobiusPair.center
      omega
    · unfold CenteredAdditiveMobiusPair.center
      omega
    · rw [anchored_center_sub_shift_add_parity_eq_left]
      have hl := anchoredMobiusPair_left a
      rw [hl]
      split_ifs <;> omega
    · rw [anchored_center_add_shift_add_parity_eq_right,
        anchoredMobiusPair_right ha]
      exact hab

/-- The centered symmetric summand at the selected anchor agrees with the
actual coefficient inherited from the centered-pair carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63ef7fb343828039e2104e63993799e54a7bcebd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
