# contraction_newton_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 618,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8307991e-8c9a-afc8-2af3-e7de8ab707a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1754a2a-9c27-a11c-2785-920bbe5db361",
  "kind": "lemma",
  "lexical_name": "contraction_newton_bounds",
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
  "slug": "contraction-newton-bounds--34d275841bcdef2c30e52152",
  "source": {
    "blob": "ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 618,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34d275841bcdef2c30e521521a993bd80384c89c1471242c9c94dd0699041f35",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1754a2a-9c27-a11c-2785-920bbe5db361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contraction_newton_bounds {I N : IntervalRat} {c : ℚ} {Q : IntervalRat}
    (hContract : N.lo > I.lo ∧ N.hi < I.hi)
    (hN_lo : N.lo = max I.lo (c - Q.hi))
    (hN_hi : N.hi = min I.hi (c - Q.lo)) :
    N.lo = c - Q.hi ∧ N.hi = c - Q.lo := by
  constructor
  · -- N.lo = c - Q.hi
    -- We have N.lo = max I.lo (c - Q.hi) > I.lo
    -- If max = I.lo, then N.lo = I.lo, contradiction with N.lo > I.lo
    -- So max ≠ I.lo, meaning c - Q.hi > I.lo, hence max = c - Q.hi
    by_cases! h : I.lo ≤ c - Q.hi
    · simp only [max_eq_right h, hN_lo]
    · have hmax_eq : max I.lo (c - Q.hi) = I.lo := max_eq_left (le_of_lt h)
      rw [hN_lo, hmax_eq] at hContract
      exact absurd hContract.1 (lt_irrefl I.lo)
  · -- N.hi = c - Q.lo
    -- We have N.hi = min I.hi (c - Q.lo) < I.hi
    -- If min = I.hi, then N.hi = I.hi, contradiction with N.hi < I.hi
    -- So min ≠ I.hi, meaning c - Q.lo < I.hi, hence min = c - Q.lo
    by_cases! h : c - Q.lo ≤ I.hi
    · -- min I.hi (c - Q.lo) = c - Q.lo since c - Q.lo ≤ I.hi
      simp only [min_eq_right h, hN_hi]
    · have hmin_eq : min I.hi (c - Q.lo) = I.hi := min_eq_left (le_of_lt h)
      rw [hN_hi, hmin_eq] at hContract
      exact absurd hContract.2 (lt_irrefl I.hi)

/-- Extract the Newton step structure from newtonStepSimple.
    This lemma isolates the definitional unfolding of newtonStepSimple. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
