# log_stirlingSeq_sdiff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f43e6c6eedbfed7b4d6f20d63bc74c60ce810d50",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:510bab10-291d-6396-1c0d-15e15d141f24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9da62630-5289-ebfe-2d5f-6e8bc8caf24a",
  "kind": "theorem",
  "lexical_name": "log_stirlingSeq_sdiff_le",
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
  "slug": "log-stirlingseq-sdiff-le--cbd213ec3815393e95e6ca04",
  "source": {
    "blob": "f43e6c6eedbfed7b4d6f20d63bc74c60ce810d50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 125,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd213ec3815393e95e6ca04c8dc9672e0e9112c6ee931b5646e2e7d96ab6531",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9da62630-5289-ebfe-2d5f-6e8bc8caf24a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_stirlingSeq_sdiff_le (n : ℕ) :
    log (stirlingSeq n) - log (stirlingSeq (n + 1)) ≤ 1 / (12 * n * (n + 1)) := by
  rcases n with (_ | n)
  · suffices 0 ≤ Real.log (Real.exp 1 / Real.sqrt 2) by simpa
    apply Real.log_nonneg
    grw [one_le_div (by positivity), Real.sqrt_le_left (by positivity), ← Real.add_one_le_exp]
    norm_num
  set r := ((1 : ℝ) / (2 * (n + 1) + 1)) ^ 2 with hr
  have hr1 : r < 1 := by grw [hr, ← n.zero_le]; norm_num
  suffices HasSum (fun j ↦ r ^ (j + 1) / 3) ((1 : ℝ) / (12 * (n + 1 : ℕ) * ((n + 1 : ℕ) + 1))) by
    refine hasSum_le (fun j ↦ ?_) (log_stirlingSeq_sdiff_hasSum n) this
    simpa [hr, field] using show (3 : ℝ) ≤ 2 * (j + 1) + 1 by grind
  grind [((hasSum_geometric_of_lt_one (by positivity) hr1).mul_right r).div_const 3]

@[deprecated (since := "2026-06-03")] alias log_stirlingSeq_diff_le := log_stirlingSeq_sdiff_le

/-- We have the bound `log (stirlingSeq n) - log (stirlingSeq (n+1)) ≤ 1 / (4 n ^ 2)`. -/
@[deprecated "Use `log_stirlingSeq_sdiff_le` instead." (since := "2026-03-16")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f43e6c6eedbfed7b4d6f20d63bc74c60ce810d50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
