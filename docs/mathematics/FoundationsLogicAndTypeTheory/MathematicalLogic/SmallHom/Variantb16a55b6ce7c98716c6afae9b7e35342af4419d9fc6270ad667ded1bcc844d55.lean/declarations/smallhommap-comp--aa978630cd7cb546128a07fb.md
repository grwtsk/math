# smallHomMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f239c5d-3fa0-7be7-38db-513e52c16b09",
  "kind": "lemma",
  "lexical_name": "smallHomMap_comp",
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
  "slug": "smallhommap-comp--aa978630cd7cb546128a07fb",
  "source": {
    "blob": "2e49605493428f64f1fd975d1bbe644831f0ae66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 326,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantb16a55b6ce7c98716c6afae9b7e35342af4419d9fc6270ad667ded1bcc844d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa978630cd7cb546128a07fbc74c55c41fc1ce67c21df178095c74fc5ff2077a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantb16a55b6ce7c98716c6afae9b7e35342af4419d9fc6270ad667ded1bcc844d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f239c5d-3fa0-7be7-38db-513e52c16b09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smallHomMap_comp (f : SmallHom.{w} W₁ X Y) (g : SmallHom.{w} W₁ Y Z) :
    Φ.smallHomMap (f.comp g) = (Φ.smallHomMap f).comp (Φ.smallHomMap g) := by
  apply (SmallHom.equiv W₂ W₂.Q).injective
  simp [Φ.equiv_smallHomMap W₁.Q W₂.Q (Φ.localizedFunctor W₁.Q W₂.Q) (CatCommSq.iso _ _ _ _),
    SmallHom.equiv_comp]

end

section

variable {X Y : C₁} [HasSmallLocalizedHom.{w} W₁ X Y] {X' Y' : C₂}
  [HasSmallLocalizedHom.{w'} W₂ X' X']
  [HasSmallLocalizedHom.{w'} W₂ X' Y']
  [HasSmallLocalizedHom.{w'} W₂ Y' Y']
  (eX : Φ.functor.obj X ≅ X') (eY : Φ.functor.obj Y ≅ Y')

/-- The action of a localizer morphism `Φ` on `SmallHom`. In this version, we allow
the replacement of objects `Φ.functor.obj` by isomorphic objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantb16a55b6ce7c98716c6afae9b7e35342af4419d9fc6270ad667ded1bcc844d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantb16a55b6ce7c98716c6afae9b7e35342af4419d9fc6270ad667ded1bcc844d55.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e49605493428f64f1fd975d1bbe644831f0ae66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
