# functorHomMk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39f52a5e253fadd179a99ee5e0ffb44d691858badbcee042c324115898b78c50",
  "kind": "def",
  "lexical_name": "functorHomMk'",
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
  "slug": "functorhommk--c4299f7e61c4f6d8be685322",
  "source": {
    "blob": "09288978b7be53504d510d0c56592ec8c5e5f440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 511,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4299f7e61c4f6d8be6853222383f3f5a1d1457e5fe0ce33aa67a032b3be2ebf",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39f52a5e253fadd179a99ee5e0ffb44d691858badbcee042c324115898b78c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorHomMk'
    {obj₁ obj₂ obj₃ : J ⥤ C}
    {mor₁ : obj₁ ⟶ obj₂} {mor₂ : obj₂ ⟶ obj₃} {mor₃ : obj₃ ⟶ obj₁ ⋙ shiftFunctor C (1 : ℤ)}
    {obj₁' obj₂' obj₃' : J ⥤ C}
    {mor₁' : obj₁' ⟶ obj₂'} {mor₂' : obj₂' ⟶ obj₃'}
    {mor₃' : obj₃' ⟶ obj₁' ⋙ shiftFunctor C (1 : ℤ)}
    (hom₁ : obj₁ ⟶ obj₁') (hom₂ : obj₂ ⟶ obj₂') (hom₃ : obj₃ ⟶ obj₃')
    (comm₁ : mor₁ ≫ hom₂ = hom₁ ≫ mor₁')
    (comm₂ : mor₂ ≫ hom₃ = hom₂ ≫ mor₂')
    (comm₃ : mor₃ ≫ whiskerRight hom₁ (shiftFunctor C (1 : ℤ)) = hom₃ ≫ mor₃') :
    functorMk mor₁ mor₂ mor₃ ⟶ functorMk mor₁' mor₂' mor₃' :=
  functorHomMk _ _ hom₁ hom₂ hom₃ comm₁ comm₂ comm₃

set_option backward.isDefEq.respectTransparency false in
/-- Constructor for natural isomorphisms between functors to the
category of triangles. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09288978b7be53504d510d0c56592ec8c5e5f440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
