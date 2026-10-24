# opcyclesMap_comp_descOpcycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34869f99-bffb-6719-10ff-b1592d864eaf",
  "kind": "lemma",
  "lexical_name": "opcyclesMap_comp_descOpcycles",
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
  "slug": "opcyclesmap-comp-descopcycles--4756dceee99f78625cfaf96c",
  "source": {
    "blob": "a9e421efbbf09a3d5dc713becaa060d5c5472e14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1212,
    "line": 1207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variantbe410915b8ad4ae26880240b457cf21a9bc34726a439bd369d473da49495d14f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4756dceee99f78625cfaf96cab97167ab8a60cec70bd303b345a6c09d6c35399",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variantbe410915b8ad4ae26880240b457cf21a9bc34726a439bd369d473da49495d14f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34869f99-bffb-6719-10ff-b1592d864eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1207–1212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opcyclesMap_comp_descOpcycles (φ : S₁ ⟶ S) [S₁.HasRightHomology] :
    opcyclesMap φ ≫ S.descOpcycles k hk =
      S₁.descOpcycles (φ.τ₂ ≫ k) (by rw [← φ.comm₁₂_assoc, hk, comp_zero]) := by
  simp only [← cancel_epi (S₁.pOpcycles), p_opcyclesMap_assoc, p_descOpcycles]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variantbe410915b8ad4ae26880240b457cf21a9bc34726a439bd369d473da49495d14f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variantbe410915b8ad4ae26880240b457cf21a9bc34726a439bd369d473da49495d14f.lean#L1207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9e421efbbf09a3d5dc713becaa060d5c5472e14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
