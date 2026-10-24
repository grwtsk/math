# restrictHomEquivHom_naturality_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f20b8749-8ea7-9835-dcaf-bc39a14330a2",
  "kind": "lemma",
  "lexical_name": "restrictHomEquivHom_naturality_right",
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
  "slug": "restricthomequivhom-naturality-right--2fa319037b27011eb7ee7edf",
  "source": {
    "blob": "ced1ba6d6f0a95c7992a7d0489e0b2eac6d37151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 462,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fa319037b27011eb7ee7edf58d2d750b891bc83d070d60a66fee94970eeded0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f20b8749-8ea7-9835-dcaf-bc39a14330a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrictHomEquivHom_naturality_right
    (f : G.op ⋙ ℱ ⟶ G.op ⋙ ℱ'.obj) {𝒢'} (g : ℱ' ⟶ 𝒢') :
    restrictHomEquivHom (f ≫ whiskerLeft G.op g.hom) =
      restrictHomEquivHom f ≫ g.hom := by
  apply (restrictHomEquivHom (G := G)).symm.injective
  simpa only [Equiv.symm_apply_apply] using
    (restrictHomEquivHom_naturality_right_symm (G := G) (restrictHomEquivHom f) g).symm

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced1ba6d6f0a95c7992a7d0489e0b2eac6d37151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
