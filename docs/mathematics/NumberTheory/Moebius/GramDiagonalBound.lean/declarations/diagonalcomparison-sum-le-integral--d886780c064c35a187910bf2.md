# diagonalComparison_sum_le_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02ac7e80-1324-33c8-b725-03cba525fdc1",
  "kind": "theorem",
  "lexical_name": "diagonalComparison_sum_le_integral",
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
  "slug": "diagonalcomparison-sum-le-integral--d886780c064c35a187910bf2",
  "source": {
    "blob": "73170183bfc55c49aa578ffbe940a2f84637ef02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 107,
    "path": "GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d886780c064c35a187910bf2788ff2fd74e76afe859b42841943697c62410109",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/GramDiagonalBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02ac7e80-1324-33c8-b725-03cba525fdc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalComparison_sum_le_integral {u : ℝ} (hu : 0 ≤ u) :
    (∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, diagonalComparison u n) ≤
      ∫ x in (0 : ℝ)..Real.exp u, diagonalComparison u x := by
  let N := ⌊Real.exp u⌋₊
  have hN : (N : ℝ) ≤ Real.exp u := Nat.floor_le (Real.exp_pos u).le
  have ha : AntitoneOn (diagonalComparison u) (Icc 0 (0 + (N : ℝ))) :=
    (diagonalComparison_antitone hu).mono (by
      intro x hx
      exact ⟨hx.1, by simpa using hx.2.trans (by simpa using hN)⟩)
  have hsum := ha.sum_le_integral
  rw [diagonal_sum_Icc_eq_range]
  calc
    _ ≤ ∫ x in (0 : ℝ)..(N : ℝ), diagonalComparison u x := by simpa using hsum
    _ ≤ _ := intervalIntegral.integral_mono_interval le_rfl (Nat.cast_nonneg N) hN
      (ae_of_all _ (fun x => diagonalComparison_nonneg u x))
      ((diagonalComparison_continuous u).intervalIntegrable 0 (Real.exp u))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/GramDiagonalBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73170183bfc55c49aa578ffbe940a2f84637ef02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
