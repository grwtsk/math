# toN_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6a624e9-5f7a-fdee-a85a-795e6eabcfa6",
  "kind": "lemma",
  "lexical_name": "toN_eq_iff",
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
  "slug": "ton-eq-iff--08bdcd8f6b7edab4415c4a4b",
  "source": {
    "blob": "dc64cc79c02ea257718fbf66de96923a8e3d26c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 282,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonDegenerateSimplices/Variant534aa9e6e9de3fe3a726466834fa9af3def7c14e21cd84333f10c5e1e10638f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08bdcd8f6b7edab4415c4a4b1dbc90edd64478026b6a4b4fd39fd7f2fdebde59",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonDegenerateSimplices/Variant534aa9e6e9de3fe3a726466834fa9af3def7c14e21cd84333f10c5e1e10638f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6a624e9-5f7a-fdee-a85a-795e6eabcfa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toN_eq_iff {x : X.S} {y : X.N} :
    x.toN = y ↔ y.subcomplex = x.subcomplex :=
  ⟨by rintro rfl; simp, fun h ↦ x.existsUnique_n.unique (by simp) h⟩

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonDegenerateSimplices/Variant534aa9e6e9de3fe3a726466834fa9af3def7c14e21cd84333f10c5e1e10638f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonDegenerateSimplices/Variant534aa9e6e9de3fe3a726466834fa9af3def7c14e21cd84333f10c5e1e10638f6.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc64cc79c02ea257718fbf66de96923a8e3d26c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
