# limitπLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd8a421f4584d9c7321d933a5328dea6fdadaef55c486407a8e93e16bc63ecf5",
  "kind": "def",
  "lexical_name": "limitπLinearMap",
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
  "slug": "limit-linearmap--e95cc35d90ba5b1b01ba5460",
  "source": {
    "blob": "6eb8e46e41c9d11d718538de7efd521aaade0d63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 86,
    "path": "GRWTSK/Algebra/LinearAlgebra/Limits/Variantbedd51e3d9d0d1bc2f64eccee4149304da0f3df84113eddfbe1f71807ea55cce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e95cc35d90ba5b1b01ba54605c868806d11e7580430380357d65de172a04cc7d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Limits/Variantbedd51e3d9d0d1bc2f64eccee4149304da0f3df84113eddfbe1f71807ea55cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd8a421f4584d9c7321d933a5328dea6fdadaef55c486407a8e93e16bc63ecf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitπLinearMap (j) :
    (Types.Small.limitCone (F ⋙ forget (ModuleCat.{w} R))).pt →ₗ[R]
      (F ⋙ forget (ModuleCat R)).obj j where
  toFun := (Types.Small.limitCone (F ⋙ forget (ModuleCat R))).π.app j
  map_smul' _ _ := by
    simp only [Types.Small.limitCone_π_app,
      ← Shrink.linearEquiv_apply (F ⋙ forget (ModuleCat R)).sections R, map_smul]
    simp only [Shrink.linearEquiv_apply]
    rfl
  map_add' _ _ := by
    simp only [Types.Small.limitCone_π_app, ← Equiv.addEquiv_apply, map_add]
    rfl

namespace HasLimits

-- The next two definitions are used in the construction of `HasLimits (ModuleCat R)`.
-- After that, the limits should be constructed using the generic limits API,
-- e.g. `limit F`, `limit.cone F`, and `limit.isLimit F`.
/-- Construction of a limit cone in `ModuleCat R`.
(Internal use only; use the limits API.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Limits/Variantbedd51e3d9d0d1bc2f64eccee4149304da0f3df84113eddfbe1f71807ea55cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Limits/Variantbedd51e3d9d0d1bc2f64eccee4149304da0f3df84113eddfbe1f71807ea55cce.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb8e46e41c9d11d718538de7efd521aaade0d63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
