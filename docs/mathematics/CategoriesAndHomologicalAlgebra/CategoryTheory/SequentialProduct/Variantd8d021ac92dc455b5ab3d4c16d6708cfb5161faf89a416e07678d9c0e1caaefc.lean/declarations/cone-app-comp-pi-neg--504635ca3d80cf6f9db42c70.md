# cone_π_app_comp_Pi_π_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de188f2d7bc1e11cbde59ef4c99f0171a296ca1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab18f56f-45f0-de9a-132f-e2340047c1f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2f228fa-14b6-16c2-abf8-233968b7a351",
  "kind": "lemma",
  "lexical_name": "cone_π_app_comp_Pi_π_neg",
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
  "slug": "cone-app-comp-pi-neg--504635ca3d80cf6f9db42c70",
  "source": {
    "blob": "de188f2d7bc1e11cbde59ef4c99f0171a296ca1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 157,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:504635ca3d80cf6f9db42c70d4fa2eaa3e4ea0ad95455051c9e7896d14b43734",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2f228fa-14b6-16c2-abf8-233968b7a351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma cone_π_app_comp_Pi_π_neg (m n : ℕ) (h : ¬(n < m)) : (cone f).π.app ⟨m⟩ ≫ Pi.π _ n =
    Pi.π _ n ≫ f n ≫ eqToHom (functorObj_eq_neg h).symm := by
  simp [cone_π_app, dite_eq_right h]

set_option backward.isDefEq.respectTransparency false in
/--
The cone over the tower
```
⋯ → ∏_{n < m} M n × ∏_{n ≥ m} N n → ⋯ → ∏ N
```
with cone point `∏ M` is indeed a limit cone.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de188f2d7bc1e11cbde59ef4c99f0171a296ca1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
