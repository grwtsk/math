# Module.support_subset_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0548ef864cf81a5d1a26127852a37b693c94658",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a94c4069-242f-29b6-eeac-67268398e120",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64abc912-4204-f056-1885-bd798e204343",
  "kind": "lemma",
  "lexical_name": "Module.support_subset_of_surjective",
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
  "slug": "module-support-subset-of-surjective--b69466e0ef23cace35282ac2",
  "source": {
    "blob": "d0548ef864cf81a5d1a26127852a37b693c94658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 166,
    "path": "GRWTSK/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b69466e0ef23cace35282ac23803333ac960a0381d72264af5f280eacb66e2f5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64abc912-4204-f056-1885-bd798e204343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.support_subset_of_surjective (hf : Function.Surjective f) :
    Module.support R N ⊆ Module.support R M := by
  simp_rw [Set.subset_def, mem_support_iff']
  rintro x ⟨m, hm⟩
  obtain ⟨m, rfl⟩ := hf m
  exact ⟨m, fun r hr e ↦ hm r hr (by simpa using congr(f $e))⟩

variable {f g} in
/-- Given an exact sequence `0 → M → N → P → 0` of `R`-modules, `Supp N = Supp M ∪ Supp P`. -/
@[stacks 00L3 "(4)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0548ef864cf81a5d1a26127852a37b693c94658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
