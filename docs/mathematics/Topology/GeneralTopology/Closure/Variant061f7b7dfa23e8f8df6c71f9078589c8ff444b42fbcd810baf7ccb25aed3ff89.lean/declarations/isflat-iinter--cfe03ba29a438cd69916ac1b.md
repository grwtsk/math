# IsFlat.iInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c9a8e4a241339d966c3d1635358562dffa2de80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:183141cf-b60c-544a-6816-741192b6fc77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a87157a-9f22-0e85-1e99-2db86f966ea1",
  "kind": "lemma",
  "lexical_name": "IsFlat.iInter",
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
  "slug": "isflat-iinter--cfe03ba29a438cd69916ac1b",
  "source": {
    "blob": "7c9a8e4a241339d966c3d1635358562dffa2de80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfe03ba29a438cd69916ac1bbe0adf1e4c90c3d3dd882650f97445a4738e11d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a87157a-9f22-0e85-1e99-2db86f966ea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsFlat.iInter {ι : Type*} [Nonempty ι] {Fs : ι → Set α}
    (hFs : ∀ i, M.IsFlat (Fs i)) : M.IsFlat (⋂ i, Fs i) := by
  refine ⟨fun I X hI hIX ↦ subset_iInter fun i ↦ ?_,
    (iInter_subset _ (Classical.arbitrary _)).trans (hFs _).subset_ground⟩
  obtain ⟨J, hIJ, hJ⟩ := hI.indep.subset_isBasis_of_subset (hI.subset.trans (iInter_subset _ i))
  refine subset_union_right.trans ((hFs i).1 (X := Fs i ∪ X) hIJ ?_)
  convert hIJ.isBasis_union (hIX.isBasis_union_of_subset hIJ.indep hJ) using 1
  rw [← union_assoc, union_eq_self_of_subset_right hIJ.subset]

/-- The property of being a flat gives rise to a `ClosureOperator` on the subsets of `M.E`,
in which the `IsClosed` sets correspond to flats.
(We can't define such an operator on all of `Set α`,
since this would incorrectly force `univ` to always be a flat.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c9a8e4a241339d966c3d1635358562dffa2de80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
