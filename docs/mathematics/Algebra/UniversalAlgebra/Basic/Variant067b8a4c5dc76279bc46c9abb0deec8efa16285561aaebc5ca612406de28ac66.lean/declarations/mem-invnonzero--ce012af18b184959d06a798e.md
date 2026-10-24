# mem_invNonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56cdac95e948a2869941c643f4530564b80ff353",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 442,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70a4492f-7145-e961-2d61-41230902e13f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a646dec2-2b4e-19fc-7fd1-01d95fc40a4d",
  "kind": "theorem",
  "lexical_name": "mem_invNonzero",
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
  "slug": "mem-invnonzero--ce012af18b184959d06a798e",
  "source": {
    "blob": "56cdac95e948a2869941c643f4530564b80ff353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 442,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce012af18b184959d06a798e3587827b2bcb2fe5d8b39892e180badde457966e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a646dec2-2b4e-19fc-7fd1-01d95fc40a4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_invNonzero {x : ℝ} {I : IntervalRatNonzero} (hx : x ∈ I.toIntervalRat) (_hxne : x ≠ 0) :
    x⁻¹ ∈ invNonzero I := by
  simp only [mem_def] at *
  simp only [invNonzero]
  split_ifs with h
  · -- Positive case: 0 < I.lo
    have hlo_pos : (0 : ℝ) < I.lo := by exact_mod_cast h
    have hx_pos : 0 < x := lt_of_lt_of_le hlo_pos hx.1
    have hhi_pos : (0 : ℝ) < I.hi := lt_of_lt_of_le hlo_pos (by exact_mod_cast I.le)
    simp only [Rat.cast_inv]
    constructor
    · exact inv_anti₀ hx_pos hx.2
    · exact inv_anti₀ (by exact_mod_cast h) hx.1
  · -- Negative case
    have hlo_le : I.lo ≤ 0 := le_of_not_gt h
    have hhi_neg : I.hi < 0 := by
      have hnz := I.nonzero
      simp only [containsZero, not_and, not_le] at hnz
      exact hnz hlo_le
    have hlo_neg : I.lo < 0 := lt_of_le_of_lt I.le hhi_neg
    have hx_neg : x < 0 := lt_of_le_of_lt hx.2 (by exact_mod_cast hhi_neg)
    have hhi_neg_r : (I.hi : ℝ) < 0 := by exact_mod_cast hhi_neg
    have hlo_neg_r : (I.lo : ℝ) < 0 := by exact_mod_cast hlo_neg
    simp only [Rat.cast_inv]
    constructor
    · exact (inv_le_inv_of_neg hhi_neg_r hx_neg).mpr hx.2
    · exact (inv_le_inv_of_neg hx_neg hlo_neg_r).mpr hx.1

/-! ### Scalar operations -/

/-- Scale an interval by a rational -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56cdac95e948a2869941c643f4530564b80ff353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
