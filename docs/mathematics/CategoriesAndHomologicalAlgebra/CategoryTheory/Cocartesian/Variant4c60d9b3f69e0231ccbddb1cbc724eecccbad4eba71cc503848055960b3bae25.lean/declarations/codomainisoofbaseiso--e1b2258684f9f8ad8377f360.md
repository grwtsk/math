# codomainIsoOfBaseIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f95a1af243f4c038ae3112a4d18fbbb9424e229f68891b7c776332e7cdf9e2d3",
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
  "slug": "codomainisoofbaseiso--e1b2258684f9f8ad8377f360",
  "source": {
    "blob": "2fee884398a53ac223e64702c19f6ce77225d041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 354,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1b2258684f9f8ad8377f36099f935c9e5cd2690f7a58851a5dcaf4bbb83f5c8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f95a1af243f4c038ae3112a4d18fbbb9424e229f68891b7c776332e7cdf9e2d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–363.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fee884398a53ac223e64702c19f6ce77225d041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
