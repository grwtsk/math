# restrictionLTOfCoconeIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a0dae6fa3b82aee11b139aa75d32b63203cf8f9c214fbef1e7f8d6c2643131d",
  "kind": "def",
  "lexical_name": "restrictionLTOfCoconeIso",
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
  "slug": "restrictionltofcoconeiso--601028adba7edc57353635ea",
  "source": {
    "blob": "5a472da9cbf939437306651eaf5d0df118619195",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 141,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:601028adba7edc57353635ea560a707b444ddfff6e5939d2af7aae5d764925be",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a0dae6fa3b82aee11b139aa75d32b63203cf8f9c214fbef1e7f8d6c2643131d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictionLTOfCoconeIso :
    SmallObject.restrictionLT (ofCocone c) (le_refl j) ≅ F :=
  NatIso.ofComponents (fun ⟨i, hi⟩ ↦ ofCoconeObjIso c i hi)
    (by intros; apply ofCoconeObjIso_hom_naturality)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
variable {c} in
/-- If `c` is a colimit cocone, then so is `coconeOfLE (ofCocone c) (le_refl j)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a472da9cbf939437306651eaf5d0df118619195` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
