# le_of_zeroHypercover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb5750ea8477deeda472cfa6da00108dbd5219ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 916,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93f089b5-73c1-b03b-f4e7-1889db2203df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56e0a6c2-1785-d8bf-2544-a8b710613862",
  "kind": "lemma",
  "lexical_name": "le_of_zeroHypercover",
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
  "slug": "le-of-zerohypercover--e8a9bc52508bc58a1073d06a",
  "source": {
    "blob": "bb5750ea8477deeda472cfa6da00108dbd5219ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 923,
    "line": 916,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantda659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8a9bc52508bc58a1073d06aa46c461bf41a73694db7487df71e4978212d7eac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantda659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56e0a6c2-1785-d8bf-2544-a8b710613862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 916–923.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_of_zeroHypercover {J K : Precoverage C}
    (h : ∀ ⦃X : C⦄ ⦃E : ZeroHypercover.{max u v} J X⦄, E.presieve₀ ∈ K X) :
    J ≤ K := by
  intro X R hR
  obtain ⟨E, rfl⟩ := R.exists_eq_preZeroHypercover
  exact h (E := ⟨E, hR⟩)

/-- A precoverage is `w`-small, if every `0`-hypercover is `w`-small. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantda659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantda659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean#L916).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5750ea8477deeda472cfa6da00108dbd5219ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
