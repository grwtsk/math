# isConnected_of_isInitial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9bf090980ae4ad4678be3ccf99a96fb2226cc0f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:284f5701-271a-01db-f01b-3bdacc9049fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f1ab1d5-e5f9-69ed-4406-f382e1d061a8",
  "kind": "lemma",
  "lexical_name": "isConnected_of_isInitial",
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
  "slug": "isconnected-of-isinitial--fda4e98de8288caaed09f82e",
  "source": {
    "blob": "9bf090980ae4ad4678be3ccf99a96fb2226cc0f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fda4e98de8288caaed09f82eae460b66c429e4bd7e392bd326a7d431dbe3af75",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f1ab1d5-e5f9-69ed-4406-f382e1d061a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isConnected_of_isInitial {x : C} (h : Limits.IsInitial x) : IsConnected C := by
  letI : Nonempty C := ⟨x⟩
  apply isConnected_of_zigzag
  intro j₁ j₂
  use [x, j₂]
  simp only [List.chain_cons, List.Chain.nil, and_true, ne_eq, reduceCtorEq, not_false_eq_true,
    List.getLast_cons, List.cons_ne_self, List.getLast_singleton]
  exact ⟨Zag.symm <| Zag.of_hom <| h.to _, Zag.of_hom <| h.to _⟩

/-- Prove that a category is connected by supplying an explicit terminal object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf090980ae4ad4678be3ccf99a96fb2226cc0f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
