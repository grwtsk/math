# forget₂AddCommGroupPreservesLimitsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d14982745430db09a37e8fe064a1f56db8709dd0cfee024770aea9bd61f164c3",
  "kind": "def",
  "lexical_name": "forget₂AddCommGroupPreservesLimitsAux",
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
  "slug": "forget-addcommgrouppreserveslimitsaux--6f125d1eacb50fd6bcb2d962",
  "source": {
    "blob": "dcdd78dcfaa888f0a5e16d9295e5d498c673e871",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f125d1eacb50fd6bcb2d962838bab610fea2b4bf02b07fdf33366e9255d761d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d14982745430db09a37e8fe064a1f56db8709dd0cfee024770aea9bd61f164c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forget₂AddCommGroupPreservesLimitsAux (F : J ⥤ ModuleCatMax.{v, w, u} R) :
    IsLimit ((forget₂ (ModuleCat R) AddCommGroupCat).mapCone (limitCone F)) :=
  AddCommGroupCat.limitConeIsLimit
    (F ⋙ forget₂ (ModuleCatMax.{v, w, u} R) _ : J ⥤ AddCommGroupCat.{max v w})
#align Module.forget₂_AddCommGroup_preserves_limits_aux ModuleCat.forget₂AddCommGroupPreservesLimitsAux

/-- The forgetful functor from R-modules to abelian groups preserves all limits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdd78dcfaa888f0a5e16d9295e5d498c673e871` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
