# exists_uncountable_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2746c61db54eb6c27ab20aa33274e52723c31e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1a264e6a32deceaf1f0d22980a31d684fe08726ac370a42664d61591c314cf5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b52e918-0ca7-6289-214a-caa35f1cfe09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36c3c147-c489-d514-5dc5-2ad2a5271c23",
  "kind": "theorem",
  "lexical_name": "exists_uncountable_fiber",
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
  "slug": "exists-uncountable-fiber--bb996465c07c9fe7c43af9a6",
  "source": {
    "blob": "a2746c61db54eb6c27ab20aa33274e52723c31e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantd1a264e6a32deceaf1f0d22980a31d684fe08726ac370a42664d61591c314cf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb996465c07c9fe7c43af9a656fea78170c4218d94508ac4129a36f0c8514be0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantd1a264e6a32deceaf1f0d22980a31d684fe08726ac370a42664d61591c314cf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36c3c147-c489-d514-5dc5-2ad2a5271c23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_uncountable_fiber {β α : Type u} (f : β → α) (h : #α < #β) [Uncountable β] :
    ∃ a : α, Uncountable (f ⁻¹' {a}) := by
  simp_rw [← Cardinal.aleph0_lt_mk_iff, ← aleph_one_le_iff]
  rcases lt_or_ge #α ℵ₀ with hα | hα
  · exact infinite_pigeonhole_card f ℵ₁ (by simp) aleph0_lt_aleph_one.le
      (by rw [isRegular_aleph_one.cof_ord]; exact hα.trans aleph0_lt_aleph_one)
  · obtain ⟨a, ha⟩ := infinite_pigeonhole_card_lt f h (aleph0_le_mk β)
    rw [← Order.succ_le_succ_iff, succ_aleph0] at hα
    exact ⟨a, hα.trans (succ_le_of_lt ha)⟩

/-- If an infinite type `β` can be expressed as a union of finite sets,
then the cardinality of the collection of those finite sets
must be at least the cardinality of `β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantd1a264e6a32deceaf1f0d22980a31d684fe08726ac370a42664d61591c314cf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantd1a264e6a32deceaf1f0d22980a31d684fe08726ac370a42664d61591c314cf5.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2746c61db54eb6c27ab20aa33274e52723c31e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
