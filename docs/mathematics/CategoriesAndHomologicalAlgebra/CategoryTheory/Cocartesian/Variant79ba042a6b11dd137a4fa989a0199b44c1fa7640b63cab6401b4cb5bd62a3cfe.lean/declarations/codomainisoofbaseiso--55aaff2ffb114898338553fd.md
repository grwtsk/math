# codomainIsoOfBaseIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85d67427759c1398b71990707a2240edb0a61ba0c65127ae04612d43caa0f843",
  "kind": "def",
  "lexical_name": "codomainIsoOfBaseIso",
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
  "slug": "codomainisoofbaseiso--55aaff2ffb114898338553fd",
  "source": {
    "blob": "edcb0a9863c3679ce141202c592e756caf4b0f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 362,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55aaff2ffb114898338553fd2e7293e7a48e2990987236a8983d0e9cc69fd8b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85d67427759c1398b71990707a2240edb0a61ba0c65127ae04612d43caa0f843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def codomainIsoOfBaseIso {R S S' : 𝒮} {a b b' : 𝒳} {f : R ⟶ S} {f' : R ⟶ S'}
  {g : S ≅ S'} (h : f' = f ≫ g.hom) (φ : a ⟶ b) (φ' : a ⟶ b') [IsStronglyCocartesian p f φ]
    [IsStronglyCocartesian p f' φ'] : b ≅ b' where
  hom := map p f φ h φ'
  inv := @map _ _ _ _ p _ _ _ _ f' φ' _ _ _ _ _ (congrArg (· ≫ g.inv) h.symm) φ
    (by simp; infer_instance)

end IsStronglyCocartesian

end CategoryTheory.Functor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edcb0a9863c3679ce141202c592e756caf4b0f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
