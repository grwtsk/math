# integer_cell_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed8fea12-d7ce-f416-c8ac-d5471658b920",
  "kind": "theorem",
  "lexical_name": "integer_cell_le",
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
  "slug": "integer-cell-le--c8e60f02031118eb821e89ec",
  "source": {
    "blob": "66120c8768710337e574eb61a7657db85af4abde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8e60f02031118eb821e89ec942feb0b3c7a632af46d0460fa8bffd8ee7c104e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed8fea12-d7ce-f416-c8ac-d5471658b920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integer_cell_le (n : ℕ) (hn : 2 ≤ n) :
    Real.log (n : ℝ) / ((n : ℝ) * ((n : ℝ) - 1)) ≤
      powerTailBudget ((n : ℝ) - 1) - powerTailBudget (n : ℝ) := by
  have hnR : (2 : ℝ) ≤ n := by exact_mod_cast hn
  have ha : 0 < (n : ℝ) - 1 := by linarith
  have hb : 0 < (n : ℝ) := by linarith
  have hz : 1 ≤ (n : ℝ) / ((n : ℝ) - 1) := by
    apply (le_div_iff₀ ha).2
    linarith
  have hl := log_le_half_sub_inv ((n : ℝ) / ((n : ℝ) - 1)) hz
  rw [Real.log_div (ne_of_gt hb) (ne_of_gt ha)] at hl
  have hi : ((n : ℝ) / ((n : ℝ) - 1))⁻¹ = ((n : ℝ) - 1) / (n : ℝ) := by
    field_simp
  rw [hi] at hl
  apply sub_nonneg.mp
  have he : powerTailBudget ((n : ℝ) - 1) - powerTailBudget (n : ℝ) -
      Real.log (n : ℝ) / ((n : ℝ) * ((n : ℝ) - 1)) =
      (((n : ℝ) / ((n : ℝ) - 1) - ((n : ℝ) - 1) / (n : ℝ)) / 2 -
        (Real.log (n : ℝ) - Real.log ((n : ℝ) - 1))) / ((n : ℝ) - 1) +
      1 / (2 * ((n : ℝ) - 1) * (n : ℝ) ^ 2) := by
    unfold powerTailBudget
    field_simp
    ring
  rw [he]
  exact add_nonneg (div_nonneg (sub_nonneg.mpr hl) ha.le) (by positivity)

/-- A finite inventory bound: no infinite subtraction or cutoff limit is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66120c8768710337e574eb61a7657db85af4abde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
