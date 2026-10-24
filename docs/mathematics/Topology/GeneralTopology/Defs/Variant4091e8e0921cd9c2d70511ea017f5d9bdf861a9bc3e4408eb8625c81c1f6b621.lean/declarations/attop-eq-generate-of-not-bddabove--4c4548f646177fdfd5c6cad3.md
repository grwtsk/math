# atTop_eq_generate_of_not_bddAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cf35ed92a409e5acf84c90305ecc7d1dd638619",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4091e8e0921cd9c2d70511ea017f5d9bdf861a9bc3e4408eb8625c81c1f6b621.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:120cd7fb-185f-c7a2-b837-30935de01996",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a24aa1b6-34ee-88c9-e254-d0de6e186009",
  "kind": "lemma",
  "lexical_name": "atTop_eq_generate_of_not_bddAbove",
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
  "slug": "attop-eq-generate-of-not-bddabove--4c4548f646177fdfd5c6cad3",
  "source": {
    "blob": "6cf35ed92a409e5acf84c90305ecc7d1dd638619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant4091e8e0921cd9c2d70511ea017f5d9bdf861a9bc3e4408eb8625c81c1f6b621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c4548f646177fdfd5c6cad3e210c906218bb60aeeafd063cefe0ea43632a8bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant4091e8e0921cd9c2d70511ea017f5d9bdf861a9bc3e4408eb8625c81c1f6b621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a24aa1b6-34ee-88c9-e254-d0de6e186009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma atTop_eq_generate_of_not_bddAbove [LinearOrder α] {s : Set α} (hs : ¬ BddAbove s) :
    (atTop : Filter α) = generate (Ici '' s) := by
  refine atTop_eq_generate_of_forall_exists_le fun x ↦ ?_
  obtain ⟨y, hy, hy'⟩ := not_bddAbove_iff.mp hs x
  exact ⟨y, hy, hy'.le⟩

end Filter

open Filter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant4091e8e0921cd9c2d70511ea017f5d9bdf861a9bc3e4408eb8625c81c1f6b621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant4091e8e0921cd9c2d70511ea017f5d9bdf861a9bc3e4408eb8625c81c1f6b621.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cf35ed92a409e5acf84c90305ecc7d1dd638619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
