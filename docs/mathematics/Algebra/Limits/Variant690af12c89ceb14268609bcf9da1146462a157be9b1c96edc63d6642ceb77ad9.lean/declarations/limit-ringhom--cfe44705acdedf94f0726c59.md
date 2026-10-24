# limitπRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3094f24c6e7efcf2b17f87c92c8a26ba92a4e66cb44f110f7b53c7297972833f",
  "kind": "def",
  "lexical_name": "limitπRingHom",
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
  "slug": "limit-ringhom--cfe44705acdedf94f0726c59",
  "source": {
    "blob": "04142bdf0b6950e779c8f0a06d817af551045358",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 69,
    "path": "GRWTSK/Algebra/Limits/Variant690af12c89ceb14268609bcf9da1146462a157be9b1c96edc63d6642ceb77ad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfe44705acdedf94f0726c59775b4c3962b34d9b7a5c1cbf8c42b1b18b7174ee",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variant690af12c89ceb14268609bcf9da1146462a157be9b1c96edc63d6642ceb77ad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3094f24c6e7efcf2b17f87c92c8a26ba92a4e66cb44f110f7b53c7297972833f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitπRingHom (F : J ⥤ SemiRingCatMax.{v, u}) (j) :
    (Types.limitCone.{v, u} (F ⋙ forget SemiRingCat)).pt →+* (F ⋙ forget SemiRingCat).obj j :=
  -- Porting note : if `f` and `g` were inlined, it does not compile
  letI f : J ⥤ AddMonCat.{max v u} := F ⋙ forget₂ SemiRingCatMax.{v, u} AddCommMonCat.{max v u} ⋙
    forget₂ AddCommMonCat AddMonCat
  { AddMonCat.limitπAddMonoidHom f j,
    MonCat.limitπMonoidHom (F ⋙ forget₂ SemiRingCat MonCat.{max v u}) j with
    toFun := (Types.limitCone (F ⋙ forget SemiRingCat)).π.app j }
set_option linter.uppercaseLean3 false in
#align SemiRing.limit_π_ring_hom SemiRingCat.limitπRingHom

namespace HasLimits

-- The next two definitions are used in the construction of `HasLimits SemiRingCat`.
-- After that, the limits should be constructed using the generic limits API,
-- e.g. `limit F`, `limit.cone F`, and `limit.isLimit F`.
/-- Construction of a limit cone in `SemiRingCat`.
(Internal use only; use the limits API.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Limits/Variant690af12c89ceb14268609bcf9da1146462a157be9b1c96edc63d6642ceb77ad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variant690af12c89ceb14268609bcf9da1146462a157be9b1c96edc63d6642ceb77ad9.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04142bdf0b6950e779c8f0a06d817af551045358` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
