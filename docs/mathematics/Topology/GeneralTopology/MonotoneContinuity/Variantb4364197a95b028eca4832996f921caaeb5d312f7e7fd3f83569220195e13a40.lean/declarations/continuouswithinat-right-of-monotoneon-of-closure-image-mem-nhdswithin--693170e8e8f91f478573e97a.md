# continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f26fcdf43df039cd60336608ee88b05cf273ec78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2e86380-1981-7d1d-728b-353c77a800b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca168e89-5c80-dbd2-b9f9-80a4930c5110",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin",
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
  "slug": "continuouswithinat-right-of-monotoneon-of-closure-image-mem-nhdswithin--693170e8e8f91f478573e97a",
  "source": {
    "blob": "f26fcdf43df039cd60336608ee88b05cf273ec78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:693170e8e8f91f478573e97ae8ed93fed8da9812c2b14ca847a953f0ab764af0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca168e89-5c80-dbd2-b9f9-80a4930c5110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin [DenselyOrdered β]
    {f : α → β} {s : Set α} {a : α} (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝[≥] a)
    (hfs : closure (f '' s) ∈ 𝓝[≥] f a) : ContinuousWithinAt f (Ici a) a := by
  refine continuousWithinAt_right_of_monotoneOn_of_exists_between h_mono hs fun b hb => ?_
  rcases (mem_nhdsGE_iff_exists_mem_Ioc_Ico_subset hb).1 hfs with ⟨b', ⟨hab', hbb'⟩, hb'⟩
  rcases exists_between hab' with ⟨c', hc'⟩
  rcases mem_closure_iff.1 (hb' ⟨hc'.1.le, hc'.2⟩) (Ioo (f a) b') isOpen_Ioo hc' with
    ⟨_, hc, ⟨c, hcs, rfl⟩⟩
  exact ⟨c, hcs, hc.1, hc.2.trans_le hbb'⟩

/-- If a function `f` with a densely ordered codomain is monotone on a right neighborhood of `a` and
the image of this neighborhood under `f` is a right neighborhood of `f a`, then `f` is continuous at
`a` from the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f26fcdf43df039cd60336608ee88b05cf273ec78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
