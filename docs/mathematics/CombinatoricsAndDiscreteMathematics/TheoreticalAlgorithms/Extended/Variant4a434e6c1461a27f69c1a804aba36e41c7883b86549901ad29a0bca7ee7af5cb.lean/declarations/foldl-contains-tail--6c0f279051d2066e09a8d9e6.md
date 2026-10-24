# foldl_contains_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f96d0904b8789741ec7593dd0fed34aec5dc2b77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4b839d3-dda1-05fc-4766-f2f5adfeb548",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fdd0057-ddb3-2100-72a5-b21ba6c1e87d",
  "kind": "theorem",
  "lexical_name": "foldl_contains_tail",
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
  "slug": "foldl-contains-tail--6c0f279051d2066e09a8d9e6",
  "source": {
    "blob": "f96d0904b8789741ec7593dd0fed34aec5dc2b77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c0f279051d2066e09a8d9e691f70d27d663c7461d3865555d009cc985effb35",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fdd0057-ddb3-2100-72a5-b21ba6c1e87d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foldl_contains_tail (t : List IntervalRat) (h : IntervalRat) (I : IntervalRat)
    (hI : I ∈ t) :
    let result := t.foldl (fun acc J =>
      { lo := min acc.lo J.lo
        hi := max acc.hi J.hi
        le := le_trans (min_le_left _ _) (le_trans acc.le (le_max_left _ _)) }) h
    result.lo ≤ I.lo ∧ I.hi ≤ result.hi := by
  induction t generalizing h with
  | nil => simp at hI
  | cons hd tl ih =>
    simp only [List.foldl]
    cases List.mem_cons.mp hI with
    | inl heq =>
      subst heq
      have hhead := foldl_contains_head tl ⟨min h.lo I.lo, max h.hi I.hi,
        le_trans (min_le_left _ _) (le_trans h.le (le_max_left _ _))⟩
      constructor
      · calc _ ≤ min h.lo I.lo := hhead.1
             _ ≤ I.lo := min_le_right _ _
      · calc I.hi ≤ max h.hi I.hi := le_max_right _ _
             _ ≤ _ := hhead.2
    | inr hmem =>
      exact ih ⟨min h.lo hd.lo, max h.hi hd.hi,
        le_trans (min_le_left _ _) (le_trans h.le (le_max_left _ _))⟩ hmem

/-- If x is in some part, then x is in the hull.
    The proof follows from the fact that hull.lo = min of all lo's ≤ I.lo ≤ x
    and x ≤ I.hi ≤ max of all hi's = hull.hi. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96d0904b8789741ec7593dd0fed34aec5dc2b77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
