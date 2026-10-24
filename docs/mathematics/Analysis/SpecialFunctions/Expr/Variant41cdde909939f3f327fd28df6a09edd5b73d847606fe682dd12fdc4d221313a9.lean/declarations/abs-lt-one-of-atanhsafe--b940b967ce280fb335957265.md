# abs_lt_one_of_atanhSafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bebe49a751e3b8bebc58fb10136b82b3825c65a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de73a704-00cf-9d68-87dc-8b3d02ce21e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bc9698c-2dab-e374-1b8a-7c0ff6438a7a",
  "kind": "theorem",
  "lexical_name": "abs_lt_one_of_atanhSafe",
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
  "slug": "abs-lt-one-of-atanhsafe--b940b967ce280fb335957265",
  "source": {
    "blob": "bebe49a751e3b8bebc58fb10136b82b3825c65a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 228,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b940b967ce280fb3359572652a86a31776818755c145afe8163787184cdaafef",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bc9698c-2dab-e374-1b8a-7c0ff6438a7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_lt_one_of_atanhSafe {I : IntervalRat} (hsafe : atanhSafe I)
    {z : ℝ} (hz : z ∈ I) : |z| < 1 := by
  simp only [atanhSafe, decide_eq_true_eq] at hsafe
  have hle : |z| ≤ max (|(I.lo : ℝ)|) (|(I.hi : ℝ)|) := abs_le_interval_radius hz
  have hradius_le : max (|(I.lo : ℝ)|) (|(I.hi : ℝ)|) ≤ 99/100 := by
    have hlo_q : |I.lo| ≤ 99/100 := le_trans (le_max_left _ _) hsafe
    have hhi_q : |I.hi| ≤ 99/100 := le_trans (le_max_right _ _) hsafe
    have hlo_le : |(I.lo : ℝ)| ≤ 99/100 := by
      have h1 : |(I.lo : ℝ)| = ((|I.lo| : ℚ) : ℝ) := (Rat.cast_abs I.lo).symm
      rw [h1]
      calc (↑(|I.lo|) : ℝ) ≤ (↑(99/100 : ℚ) : ℝ) := by exact_mod_cast hlo_q
        _ = 99/100 := by norm_num
    have hhi_le : |(I.hi : ℝ)| ≤ 99/100 := by
      have h1 : |(I.hi : ℝ)| = ((|I.hi| : ℚ) : ℝ) := (Rat.cast_abs I.hi).symm
      rw [h1]
      calc (↑(|I.hi|) : ℝ) ≤ (↑(99/100 : ℚ) : ℝ) := by exact_mod_cast hhi_q
        _ = 99/100 := by norm_num
    exact max_le hlo_le hhi_le
  linarith

/-- Interval-based atanh composition with domain check.
    Given a TM for the argument, returns a TM that bounds atanh of the argument.
    Returns none if the argument bound could be too close to ±1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bebe49a751e3b8bebc58fb10136b82b3825c65a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
