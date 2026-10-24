# noncommProd_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afe304991e9924cddf5a0eecaf3998608371c530",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:259515ff-fd75-98c5-4127-23101d624b0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d96219e5-94d4-ed26-c130-a0b9dfe29f80",
  "kind": "theorem",
  "lexical_name": "noncommProd_mem",
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
  "slug": "noncommprod-mem--0ea0010bc742fa0ad83d7bd5",
  "source": {
    "blob": "afe304991e9924cddf5a0eecaf3998608371c530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Membership/Variantb13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ea0010bc742fa0ad83d7bd54767650020ebc40d23eb4905e0236995f3cedb47",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Membership/Variantb13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d96219e5-94d4-ed26-c130-a0b9dfe29f80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noncommProd_mem (S : Submonoid M) {ι : Type*} (t : Finset ι) (f : ι → M) (comm)
    (h : ∀ c ∈ t, f c ∈ S) : t.noncommProd f comm ∈ S := by
  apply multiset_noncommProd_mem
  intro y
  rw [Multiset.mem_map]
  rintro ⟨x, ⟨hx, rfl⟩⟩
  exact h x hx
#align submonoid.noncomm_prod_mem Submonoid.noncommProd_mem
#align add_submonoid.noncomm_sum_mem AddSubmonoid.noncommSum_mem

end Submonoid

end Assoc

section NonAssoc

variable [MulOneClass M]

open Set

namespace Submonoid

-- TODO: this section can be generalized to `[SubmonoidClass B M] [CompleteLattice B]`
-- such that `CompleteLattice.LE` coincides with `SetLike.LE`
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Membership/Variantb13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Membership/Variantb13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afe304991e9924cddf5a0eecaf3998608371c530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
