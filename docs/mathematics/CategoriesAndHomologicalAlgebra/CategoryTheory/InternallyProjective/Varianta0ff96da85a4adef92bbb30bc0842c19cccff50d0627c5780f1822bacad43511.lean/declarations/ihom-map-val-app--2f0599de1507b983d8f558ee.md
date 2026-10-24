# ihom_map_val_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b07332d-11c2-d66f-68c2-8996610a2a0b",
  "kind": "lemma",
  "lexical_name": "ihom_map_val_app",
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
  "slug": "ihom-map-val-app--2f0599de1507b983d8f558ee",
  "source": {
    "blob": "56768d60784b10db6478a851b12f5ba963f39aa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InternallyProjective/Varianta0ff96da85a4adef92bbb30bc0842c19cccff50d0627c5780f1822bacad43511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f0599de1507b983d8f558eec56ee00b743da60c91c9b0a9dbe2c0d90f3fc140",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InternallyProjective/Varianta0ff96da85a4adef92bbb30bc0842c19cccff50d0627c5780f1822bacad43511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b07332d-11c2-d66f-68c2-8996610a2a0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ihom_map_val_app (A B P : LightCondMod.{u} R) (S : LightProfinite) (e : A ⟶ B)
    (x : (P ⟶[LightCondMod R] A).obj.obj ⟨S⟩) :
    (((ihom P).map e).hom.app ⟨S⟩) x = (ihomPoints R P B S).symm (ihomPoints R P A S x ≫ e) := by
  apply (ihomPoints R P B S).injective
  simp only [ihomPoints_apply, ← MonoidalClosed.uncurry_natural_right,
    ← Adjunction.homEquiv_naturality_right_symm, Equiv.apply_symm_apply]
  congr
  apply (coherentTopology LightProfinite.{u}).yonedaEquiv.injective
  simp [dsimp% GrothendieckTopology.yonedaEquiv_comp]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InternallyProjective/Varianta0ff96da85a4adef92bbb30bc0842c19cccff50d0627c5780f1822bacad43511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InternallyProjective/Varianta0ff96da85a4adef92bbb30bc0842c19cccff50d0627c5780f1822bacad43511.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56768d60784b10db6478a851b12f5ba963f39aa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
