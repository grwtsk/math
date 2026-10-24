# pullbackLimitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b016e9adbe80041789061cfeb80f00a7054e00fb872205523bd0c1df54ae1538",
  "kind": "def",
  "lexical_name": "pullbackLimitCone",
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
  "slug": "pullbacklimitcone--f9d60e89ba2f5cb71a4db6d5",
  "source": {
    "blob": "3ecb05d3c144f2413d9d79a26420d42b20227c69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Varianta2ccd8566c26f8f13d524dd988213cf6380a51bfa3a5721ef9f0129053685b16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9d60e89ba2f5cb71a4db6d5d566a2b271ccfb4e9cbfca9f8424b4224a1fc603",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Varianta2ccd8566c26f8f13d524dd988213cf6380a51bfa3a5721ef9f0129053685b16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b016e9adbe80041789061cfeb80f00a7054e00fb872205523bd0c1df54ae1538`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackLimitCone (f : X ⟶ Z) (g : Y ⟶ Z) : Limits.LimitCone (cospan f g) where
  cone := pullbackCone f g
  isLimit :=
    PullbackCone.isLimitAux _ (fun s => ↾fun x => ⟨⟨s.fst x, s.snd x⟩, congr_hom s.condition x⟩)
      (by aesop) (by aesop) fun _ _ w =>
      ConcreteCategory.ext <| TypeCat.Fun.ext <| funext fun x => Subtype.ext <|
        Prod.ext (congr_hom (w WalkingCospan.left) x) (congr_hom (w WalkingCospan.right) x)

end Types

namespace PullbackCone

variable {X Y S : Type v} {f : X ⟶ S} {g : Y ⟶ S} {c : PullbackCone f g}

namespace IsLimit

variable (hc : IsLimit c)

/-- A limit pullback cone in the category of types identifies to the explicit pullback. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Varianta2ccd8566c26f8f13d524dd988213cf6380a51bfa3a5721ef9f0129053685b16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Varianta2ccd8566c26f8f13d524dd988213cf6380a51bfa3a5721ef9f0129053685b16.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ecb05d3c144f2413d9d79a26420d42b20227c69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
