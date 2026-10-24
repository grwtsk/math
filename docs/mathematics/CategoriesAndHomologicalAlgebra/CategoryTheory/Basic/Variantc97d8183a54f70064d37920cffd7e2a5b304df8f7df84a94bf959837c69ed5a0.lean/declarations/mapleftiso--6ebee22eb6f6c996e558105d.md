# mapLeftIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9e5a17bf6ac90d66dde0a221fea9043f887a1f1b5f6f84d59cfa048bb22ce7f",
  "kind": "def",
  "lexical_name": "mapLeftIso",
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
  "slug": "mapleftiso--6ebee22eb6f6c996e558105d",
  "source": {
    "blob": "bed894b27301159832d73ff295ea5aece3891946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 355,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc97d8183a54f70064d37920cffd7e2a5b304df8f7df84a94bf959837c69ed5a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ebee22eb6f6c996e558105d6a19f59fd1ab576e25c0d6080979195ba6b75cb6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc97d8183a54f70064d37920cffd7e2a5b304df8f7df84a94bf959837c69ed5a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9e5a17bf6ac90d66dde0a221fea9043f887a1f1b5f6f84d59cfa048bb22ce7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapLeftIso (i : L₁ ≅ L₂) : Comma L₁ R ≌ Comma L₂ R where
  functor := mapLeft _ i.inv
  inverse := mapLeft _ i.hom
  unitIso := (mapLeftId _ _).symm ≪≫ mapLeftEq _ _ _ i.hom_inv_id.symm ≪≫ mapLeftComp _ _ _
  counitIso := (mapLeftComp _ _ _).symm ≪≫ mapLeftEq _ _ _ i.inv_hom_id ≪≫ mapLeftId _ _

/-- A natural transformation `R₁ ⟶ R₂` induces a functor `Comma L R₁ ⥤ Comma L R₂`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc97d8183a54f70064d37920cffd7e2a5b304df8f7df84a94bf959837c69ed5a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc97d8183a54f70064d37920cffd7e2a5b304df8f7df84a94bf959837c69ed5a0.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bed894b27301159832d73ff295ea5aece3891946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
