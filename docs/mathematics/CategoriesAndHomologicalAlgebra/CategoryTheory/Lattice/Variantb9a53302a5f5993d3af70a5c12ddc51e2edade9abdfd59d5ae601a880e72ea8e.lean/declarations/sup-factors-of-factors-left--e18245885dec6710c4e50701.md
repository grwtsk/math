# sup_factors_of_factors_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b76e9db851fcb3fa332f44a2a9a755a4419ad5c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 525,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c151b4b-8fca-dc99-d094-01beea922cc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac1b67fc-0f2a-94c3-982f-14c9b813befe",
  "kind": "theorem",
  "lexical_name": "sup_factors_of_factors_left",
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
  "slug": "sup-factors-of-factors-left--e18245885dec6710c4e50701",
  "source": {
    "blob": "b76e9db851fcb3fa332f44a2a9a755a4419ad5c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 525,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e18245885dec6710c4e5070127d07d48cfd4388bea291a8c93dfaf24d006c4d2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac1b67fc-0f2a-94c3-982f-14c9b813befe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_factors_of_factors_left {A B : C} {X Y : Subobject B} {f : A ⟶ B} (P : X.Factors f) :
    (X ⊔ Y).Factors f :=
  factors_of_le f le_sup_left P
#align category_theory.subobject.sup_factors_of_factors_left CategoryTheory.Subobject.sup_factors_of_factors_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b76e9db851fcb3fa332f44a2a9a755a4419ad5c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
