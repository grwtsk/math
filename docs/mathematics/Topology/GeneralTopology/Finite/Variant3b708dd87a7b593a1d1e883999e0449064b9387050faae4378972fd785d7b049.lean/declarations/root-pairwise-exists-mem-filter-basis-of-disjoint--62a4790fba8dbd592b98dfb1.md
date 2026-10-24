# _root_.Pairwise.exists_mem_filter_basis_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "157ce7b261eb67521c777cb6dfc4f30a76c98e45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71d82b59-9bf7-d295-d53f-1630841f819c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cfe1921-2767-1ae5-6b69-7057a145c1fd",
  "kind": "theorem",
  "lexical_name": "_root_.Pairwise.exists_mem_filter_basis_of_disjoint",
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
  "slug": "root-pairwise-exists-mem-filter-basis-of-disjoint--62a4790fba8dbd592b98dfb1",
  "source": {
    "blob": "157ce7b261eb67521c777cb6dfc4f30a76c98e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62a4790fba8dbd592b98dfb16889210572d8f8c86ee98fbcac194c0a10691321",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cfe1921-2767-1ae5-6b69-7057a145c1fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Pairwise.exists_mem_filter_basis_of_disjoint {I} [Finite I] {l : I → Filter α}
    {ι : I → Sort*} {p : ∀ i, ι i → Prop} {s : ∀ i, ι i → Set α} (hd : Pairwise (Disjoint on l))
    (h : ∀ i, (l i).HasBasis (p i) (s i)) :
    ∃ ind : ∀ i, ι i, (∀ i, p i (ind i)) ∧ Pairwise (Disjoint on fun i => s i (ind i)) := by
  rcases hd.exists_mem_filter_of_disjoint with ⟨t, htl, hd⟩
  choose ind hp ht using fun i => (h i).mem_iff.1 (htl i)
  exact ⟨ind, hp, hd.mono fun i j hij => hij.mono (ht _) (ht _)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `157ce7b261eb67521c777cb6dfc4f30a76c98e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
