# isLimitConeOfIsRightKanExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0142960fd37ceb131798c42fdd73b158f1919dc78570ef26045fa1694823f673",
  "kind": "def",
  "lexical_name": "isLimitConeOfIsRightKanExtension",
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
  "slug": "islimitconeofisrightkanextension--6d5eabb2b65039bbaa7d7fd5",
  "source": {
    "blob": "a50fa1316f9dc53423892fe3334995da4c207a4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 621,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408f70ef44de01a78e59922d00d77188504612b6c51dbf7b53e008d9c767c902.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d5eabb2b65039bbaa7d7fd574c1ed45164ae4dba15bc472f3a9d12bede370dd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408f70ef44de01a78e59922d00d77188504612b6c51dbf7b53e008d9c767c902.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0142960fd37ceb131798c42fdd73b158f1919dc78570ef26045fa1694823f673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isLimitConeOfIsRightKanExtension {c : Cone F} (hc : IsLimit c) :
    IsLimit (F'.coneOfIsRightKanExtension α c) where
  lift s := hc.lift (Cone.mk _ (whiskerLeft L s.π ≫ α))
  fac s := by
    have : (Functor.const _).map (hc.lift (Cone.mk _ (whiskerLeft L s.π ≫ α))) ≫
        F'.liftOfIsRightKanExtension α ((const D).obj c.pt) c.π = s.π :=
      F'.hom_ext_of_isRightKanExtension α _ _ (by aesop_cat)
    exact congr_app this
  uniq s m hm := hc.hom_ext (fun j ↦ by
    have := hm (L.obj j)
    nth_rw 1 [← F'.liftOfIsRightKanExtension_fac_app α ((const D).obj c.pt)]
    dsimp at this ⊢
    rw [← assoc, this, IsLimit.fac, NatTrans.comp_app, whiskerLeft_app])

variable [HasLimit F] [HasLimit F']

/-- If `F' : D ⥤ H` is a right Kan extension of `F : C ⥤ H` along `L : C ⥤ D`, the limit over `F'`
is isomorphic to the limit over `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408f70ef44de01a78e59922d00d77188504612b6c51dbf7b53e008d9c767c902.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408f70ef44de01a78e59922d00d77188504612b6c51dbf7b53e008d9c767c902.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a50fa1316f9dc53423892fe3334995da4c207a4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
