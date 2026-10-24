# _root_.IsLocalRing.isRegular_of_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be1aaf625255d71de95cd19457d1d5ccd67e8b08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 665,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b046b322-2253-5451-d692-524c9cf6c7aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:113e24c2-bd04-d0a4-a6e3-eb7c7b3da71e",
  "kind": "lemma",
  "lexical_name": "_root_.IsLocalRing.isRegular_of_perm",
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
  "slug": "root-islocalring-isregular-of-perm--f3f63333d525ca9e975de2f4",
  "source": {
    "blob": "be1aaf625255d71de95cd19457d1d5ccd67e8b08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 665,
    "path": "GRWTSK/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3f63333d525ca9e975de2f45ec31dcc9f0ca3850eb197c67b22612b4ee428c9",
  "verification": {
    "reference": "docs/verification/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:113e24c2-bd04-d0a4-a6e3-eb7c7b3da71e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 665–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.IsLocalRing.isRegular_of_perm [IsLocalRing R] [IsNoetherian R M]
    {rs rs' : List R} (h1 : IsRegular M rs) (h2 : List.Perm rs rs') :
    IsRegular M rs' := by
  obtain ⟨h3, h4⟩ := h1
  refine ⟨IsLocalRing.isWeaklyRegular_of_perm_of_subset_maximalIdeal h3 h2 ?_, ?_⟩
  · intro x (h6 : x ∈ { r | r ∈ rs })
    refine IsLocalRing.le_maximalIdeal ?_ (Ideal.subset_span h6)
    exact h4 ∘ Eq.trans (top_smul _).symm ∘ Eq.symm ∘ congrArg (· • ⊤)
  · refine ne_of_ne_of_eq h4 (congrArg (Ideal.span · • ⊤) ?_)
    exact Set.ext fun _ => h2.mem_iff

@[deprecated (since := "2024-11-09")]
alias _root_.LocalRing.isRegular_of_perm := _root_.IsLocalRing.isRegular_of_perm

end RingTheory.Sequence
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean#L665).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be1aaf625255d71de95cd19457d1d5ccd67e8b08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
