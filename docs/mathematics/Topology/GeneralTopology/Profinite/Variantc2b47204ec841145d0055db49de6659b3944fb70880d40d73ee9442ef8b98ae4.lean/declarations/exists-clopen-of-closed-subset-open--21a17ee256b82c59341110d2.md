# exists_clopen_of_closed_subset_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9bbf7a14918ffd6933e8fedca0e83a5977d34e3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2b47204ec841145d0055db49de6659b3944fb70880d40d73ee9442ef8b98ae4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:989ff2ec-f2d1-fc5b-2feb-a4d0423ba4af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d9c2172-c107-9987-215e-8225c7d20004",
  "kind": "lemma",
  "lexical_name": "exists_clopen_of_closed_subset_open",
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
  "slug": "exists-clopen-of-closed-subset-open--21a17ee256b82c59341110d2",
  "source": {
    "blob": "9bbf7a14918ffd6933e8fedca0e83a5977d34e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variantc2b47204ec841145d0055db49de6659b3944fb70880d40d73ee9442ef8b98ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21a17ee256b82c59341110d2ec1e2e489a2ebb90387b76812eb86f9879248fc4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variantc2b47204ec841145d0055db49de6659b3944fb70880d40d73ee9442ef8b98ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d9c2172-c107-9987-215e-8225c7d20004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_clopen_of_closed_subset_open {X : Type*}
    [TopologicalSpace X] [CompactSpace X] [T2Space X] [TotallyDisconnectedSpace X]
    {Z U : Set X} (hZ : IsClosed Z) (hU : IsOpen U) (hZU : Z ⊆ U) :
    ∃ C : Set X, IsClopen C ∧ Z ⊆ C ∧ C ⊆ U := by
  -- every `z ∈ Z` has clopen neighborhood `V z ⊆ U`
  choose V hV using fun (z : Z) ↦ compact_exists_isClopen_in_isOpen hU (hZU z.property)
  -- the `V z` cover `Z`
  have V_cover : Z ⊆ ⋃ z, V z := fun z hz ↦ mem_iUnion.mpr ⟨⟨z, hz⟩, (hV ⟨z, hz⟩).2.1⟩
  -- choose a finite subcover
  choose I hI using hZ.isCompact.elim_finite_subcover V (fun z ↦ (hV z).1.isOpen) V_cover
  -- the union of this finite subcover does the job
  exact ⟨⋃ (i ∈ I), V i, I.finite_toSet.isClopen_biUnion (fun i _ ↦ (hV i).1), hI, by simp_all⟩

/-- Let `X` be a totally disconnected compact Hausdorff space, `D i ⊆ X` a finite family of clopens,
and `Z i ⊆ D i` closed. Assume that the `Z i` are pairwise disjoint. Then there exist clopens
`Z i ⊆ C i ⊆ D i` with the `C i` disjoint, and such that `∪ D i ⊆ ∪ C i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variantc2b47204ec841145d0055db49de6659b3944fb70880d40d73ee9442ef8b98ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variantc2b47204ec841145d0055db49de6659b3944fb70880d40d73ee9442ef8b98ae4.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bbf7a14918ffd6933e8fedca0e83a5977d34e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
