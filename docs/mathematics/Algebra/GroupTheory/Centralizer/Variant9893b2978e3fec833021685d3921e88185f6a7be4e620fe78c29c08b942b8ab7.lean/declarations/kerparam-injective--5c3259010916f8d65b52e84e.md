# kerParam_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91440cef8726265c304ec4e9f42971178fa1cbfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 522,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2fab65f2-2e97-4853-37fe-2a88ca607e99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fb0b373-9af4-86c5-bec4-e34f33db087c",
  "kind": "theorem",
  "lexical_name": "kerParam_injective",
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
  "slug": "kerparam-injective--5c3259010916f8d65b52e84e",
  "source": {
    "blob": "91440cef8726265c304ec4e9f42971178fa1cbfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 522,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c3259010916f8d65b52e84e6b576a16547f763bb4ae726f76170e12807fc8fe",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fb0b373-9af4-86c5-bec4-e34f33db087c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kerParam_injective (g : Perm α) : Function.Injective (kerParam g) := by
  rw [kerParam, MonoidHom.noncommCoprod_injective]
  refine ⟨ofSubtype_injective, ?_, ?_⟩
  · apply MonoidHom.injective_noncommPiCoprod_of_iSupIndep
    · intro a
      simp only [range_subtype, ne_eq]
      simp only [zpowers_eq_closure, ← closure_iUnion]
      apply disjoint_closure_of_disjoint_support
      rintro - ⟨-⟩ - ⟨-, ⟨b, rfl⟩, -, ⟨h, rfl⟩, ⟨-⟩⟩
      rw [← disjoint_iff_disjoint_support]
      apply cycleFactorsFinset_pairwise_disjoint g a.2 b.2
      simp only [ne_eq, ← Subtype.ext_iff]
      exact ne_comm.mp h
    · exact fun i ↦ subtype_injective _
  · rw [noncommPiCoprod_range, ← ofSubtype.range.closure_eq]
    simp only [zpowers_eq_closure, ← closure_iUnion]
    apply disjoint_closure_of_disjoint_support
    rintro - ⟨a, rfl⟩ - ⟨-, ⟨b, rfl⟩, ⟨-⟩⟩
    exact (ofSubtype_support_disjoint a).mono_right (mem_cycleFactorsFinset_support_le b.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91440cef8726265c304ec4e9f42971178fa1cbfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
