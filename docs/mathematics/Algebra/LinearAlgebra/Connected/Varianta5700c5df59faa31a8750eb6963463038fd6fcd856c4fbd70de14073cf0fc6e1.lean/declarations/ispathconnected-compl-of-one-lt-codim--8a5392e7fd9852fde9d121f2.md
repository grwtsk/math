# isPathConnected_compl_of_one_lt_codim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a283104c9f084111ac29698aedecf184d32ce272",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:616930d5-5f7b-4079-e091-659156d75a24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42e85a4e-3894-c59a-44a9-48a240ad81e0",
  "kind": "theorem",
  "lexical_name": "isPathConnected_compl_of_one_lt_codim",
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
  "slug": "ispathconnected-compl-of-one-lt-codim--8a5392e7fd9852fde9d121f2",
  "source": {
    "blob": "a283104c9f084111ac29698aedecf184d32ce272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 220,
    "path": "GRWTSK/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a5392e7fd9852fde9d121f2717dc4410198f19411d668428288263630921d36",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42e85a4e-3894-c59a-44a9-48a240ad81e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPathConnected_compl_of_one_lt_codim {E : Submodule ℝ F}
    (hcodim : 1 < Module.rank ℝ (F ⧸ E)) : IsPathConnected (Eᶜ : Set F) := by
  rcases E.exists_isCompl with ⟨E', hE'⟩
  refine isPathConnected_compl_of_isPathConnected_compl_zero hE'.symm
    (isPathConnected_compl_singleton_of_one_lt_rank ?_ 0)
  rwa [← (E.quotientEquivOfIsCompl E' hE').rank_eq]

/-- Let `E` be a linear subspace in a real vector space.
If `E` has codimension at least two, its complement is connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a283104c9f084111ac29698aedecf184d32ce272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
