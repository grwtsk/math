# normalized_count_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0742dce-91dc-871d-615f-1c5678ccf13f",
  "kind": "theorem",
  "lexical_name": "normalized_count_bounds",
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
  "slug": "normalized-count-bounds--2f5b27a800e2dfaafbbf1c23",
  "source": {
    "blob": "ef9c09e6131d353405f0d7577e54d1577d6f7ba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 117,
    "path": "GRWTSK/Spectral/FreeIDS.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f5b27a800e2dfaafbbf1c233fa7ad468cb132963b3d842f34759c69924428d3",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencee53e67e18cd12134119aa05c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0742dce-91dc-871d-615f-1c5678ccf13f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_count_bounds (N : ℕ) (hN : 0 < N) (E : ℝ) :
    freeIDS E - 1/(N:ℝ) ≤ freeNormalizedCount N E ∧
      freeNormalizedCount N E ≤ freeIDS E + 1/(N:ℝ) := by
  have hn : (0:ℝ) < N := by exact_mod_cast hN
  have hq : Nat.ceil (cutoff N E)-1 ≤ N := by have := cutoff_ceil_le N E; omega
  have hb := cutoff_rounding_bounds N E
  have ht := angleFraction_bounds E
  rw [freeNormalizedCount, freeCount_eq_ceil, Nat.cast_sub hq]
  unfold freeIDS cutoff at *
  constructor
  · apply (le_div_iff₀ hn).mpr
    have he : (1-angleFraction E-1/(N:ℝ))*(N:ℝ) =
        (1-angleFraction E)*(N:ℝ)-1 := by field_simp
    rw [he]
    nlinarith
  · apply (div_le_iff₀ hn).mpr
    have he : (1-angleFraction E+1/(N:ℝ))*(N:ℝ) =
        (1-angleFraction E)*(N:ℝ)+1 := by field_simp
    rw [he]
    nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencee53e67e18cd12134119aa05c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/FreeIDS.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9c09e6131d353405f0d7577e54d1577d6f7ba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
