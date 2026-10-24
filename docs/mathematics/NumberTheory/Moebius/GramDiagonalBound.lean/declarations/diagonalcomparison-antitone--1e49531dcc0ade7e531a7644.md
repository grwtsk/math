# diagonalComparison_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6b82854-a9c4-912f-172e-0f1aa964087c",
  "kind": "theorem",
  "lexical_name": "diagonalComparison_antitone",
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
  "slug": "diagonalcomparison-antitone--1e49531dcc0ade7e531a7644",
  "source": {
    "blob": "73170183bfc55c49aa578ffbe940a2f84637ef02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 53,
    "path": "GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e49531dcc0ade7e531a7644bb1fec46e6461ecbee10051609df146d96cc3eba",
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

Occurrence: `result:b6b82854-a9c4-912f-172e-0f1aa964087c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalComparison_antitone {u : ℝ} (hu : 0 ≤ u) :
    AntitoneOn (diagonalComparison u) (Icc 0 (Real.exp u)) := by
  have hEu : 1 ≤ Real.exp u := by simpa using Real.exp_le_exp.mpr hu
  intro x hx y hy hxy
  have hmax : max (1 : ℝ) x ≤ max 1 y := max_le_max le_rfl hxy
  have hxpos : 0 < Real.sqrt (max 1 x) :=
    Real.sqrt_pos.mpr (lt_of_lt_of_le zero_lt_one (le_max_left _ _))
  have hypos : 0 < Real.sqrt (max 1 y) :=
    Real.sqrt_pos.mpr (lt_of_lt_of_le zero_lt_one (le_max_left _ _))
  have hinv := inv_anti₀ hxpos (Real.sqrt_le_sqrt hmax)
  have hym : max (1 : ℝ) y ≤ Real.exp u := max_le hEu hy.2
  have hfloor := inv_anti₀ hypos (Real.sqrt_le_sqrt hym)
  rw [← diagonal_negative_half_sqrt] at hfloor
  have hyres : 0 ≤ (Real.sqrt (max 1 y))⁻¹ - Real.exp (-u / 2) := sub_nonneg.mpr hfloor
  have hres := sub_le_sub_right hinv (Real.exp (-u / 2))
  unfold diagonalComparison
  exact mul_le_mul_of_nonneg_left
    ((sq_le_sq₀ hyres (hyres.trans hres)).2 hres) (by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/GramDiagonalBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73170183bfc55c49aa578ffbe940a2f84637ef02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
