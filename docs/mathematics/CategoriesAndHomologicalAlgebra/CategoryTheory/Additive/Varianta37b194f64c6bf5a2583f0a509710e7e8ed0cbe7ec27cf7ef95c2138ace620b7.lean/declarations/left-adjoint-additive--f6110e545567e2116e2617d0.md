# left_adjoint_additive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6850dd2d47a7efe1151c7a7e2cf448130d5e8678",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a37b194f64c6bf5a2583f0a509710e7e8ed0cbe7ec27cf7ef95c2138ace620b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d578d41-c4f3-d056-dd32-cec0f317b898",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67a4c577-3485-0f35-6004-869a6c4aa446",
  "kind": "lemma",
  "lexical_name": "left_adjoint_additive",
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
  "slug": "left-adjoint-additive--f6110e545567e2116e2617d0",
  "source": {
    "blob": "6850dd2d47a7efe1151c7a7e2cf448130d5e8678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Varianta37b194f64c6bf5a2583f0a509710e7e8ed0cbe7ec27cf7ef95c2138ace620b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6110e545567e2116e2617d0502275dcc498ac31360e916f9e29fa4eaf10683e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Varianta37b194f64c6bf5a2583f0a509710e7e8ed0cbe7ec27cf7ef95c2138ace620b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67a4c577-3485-0f35-6004-869a6c4aa446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma left_adjoint_additive [G.Additive] : F.Additive where
  map_add {X Y} f g := (adj.homEquiv _ _).injective (by simp [homEquiv_unit])

variable [F.Additive]

set_option backward.defeqAttrib.useBackward true in
/-- If we have an adjunction `adj : F ⊣ G` of functors between preadditive categories,
and if `F` is additive, then the hom set equivalence upgrades to an `AddEquiv`.
Note that `F` is additive if and only if `G` is, by `Adjunction.right_adjoint_additive` and
`Adjunction.left_adjoint_additive`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Varianta37b194f64c6bf5a2583f0a509710e7e8ed0cbe7ec27cf7ef95c2138ace620b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Varianta37b194f64c6bf5a2583f0a509710e7e8ed0cbe7ec27cf7ef95c2138ace620b7.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6850dd2d47a7efe1151c7a7e2cf448130d5e8678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
