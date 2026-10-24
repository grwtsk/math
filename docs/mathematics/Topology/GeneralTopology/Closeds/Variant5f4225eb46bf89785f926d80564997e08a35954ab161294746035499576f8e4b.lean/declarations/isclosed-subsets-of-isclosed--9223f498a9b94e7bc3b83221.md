# isClosed_subsets_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "805416ce25b28ddd9e00b42dc5f28beb17eb86c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8437cfb-217c-24e6-0047-95dc8ab803fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54207769-11cb-888f-2904-7367dfb4f6d3",
  "kind": "theorem",
  "lexical_name": "isClosed_subsets_of_isClosed",
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
  "slug": "isclosed-subsets-of-isclosed--9223f498a9b94e7bc3b83221",
  "source": {
    "blob": "805416ce25b28ddd9e00b42dc5f28beb17eb86c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9223f498a9b94e7bc3b832215f10468a26695aa5faeee327c1c0aa91bfde8258",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54207769-11cb-888f-2904-7367dfb4f6d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_subsets_of_isClosed (hs : IsClosed s) :
    IsClosed { t : Closeds α | (t : Set α) ⊆ s } := by
  refine isClosed_of_closure_subset fun
    (t : Closeds α) (ht : t ∈ closure {t : Closeds α | (t : Set α) ⊆ s}) (x : α) (hx : x ∈ t) => ?_
  have : x ∈ closure s := by
    refine mem_closure_iff.2 fun ε εpos => ?_
    obtain ⟨u : Closeds α, hu : u ∈ {t : Closeds α | (t : Set α) ⊆ s}, Dtu : edist t u < ε⟩ :=
      mem_closure_iff.1 ht ε εpos
    obtain ⟨y : α, hy : y ∈ u, Dxy : edist x y < ε⟩ := exists_edist_lt_of_hausdorffEdist_lt hx Dtu
    exact ⟨y, hu hy, Dxy⟩
  rwa [hs.closure_eq] at this

/-- By definition, the edistance on `Closeds α` is given by the Hausdorff edistance -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `805416ce25b28ddd9e00b42dc5f28beb17eb86c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
