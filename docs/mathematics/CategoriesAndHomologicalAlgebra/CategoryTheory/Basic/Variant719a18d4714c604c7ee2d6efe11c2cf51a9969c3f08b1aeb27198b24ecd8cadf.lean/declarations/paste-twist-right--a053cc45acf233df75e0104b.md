# paste_twist_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b3e40c0-75a0-f278-8043-15b35b2a3f3a",
  "kind": "lemma",
  "lexical_name": "paste_twist_right",
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
  "slug": "paste-twist-right--a053cc45acf233df75e0104b",
  "source": {
    "blob": "3d8afc54fa203c3bf7d6ee6ab5b22bf39a62aebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 405,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant719a18d4714c604c7ee2d6efe11c2cf51a9969c3f08b1aeb27198b24ecd8cadf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a053cc45acf233df75e0104bbe94661d3a71eff9fee2bbdcab240c84f6d72f93",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant719a18d4714c604c7ee2d6efe11c2cf51a9969c3f08b1aeb27198b24ecd8cadf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b3e40c0-75a0-f278-8043-15b35b2a3f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma paste_twist_right {X Y Z S : C} {f : X ⟶ S} {g : Y ⟶ S} {i : Z ⟶ S}
    {Pfg : C} {fstfg : Pfg ⟶ X} {sndfg : Pfg ⟶ Y} (hfg : IsPullback fstfg sndfg f g)
    {Pfi : C} {fstfi : Pfi ⟶ X} {sndfi : Pfi ⟶ Z} (hfi : IsPullback fstfi sndfi f i)
    {R : C} (rY : R ⟶ Y) (rZ : R ⟶ Z) (hrw : rY ≫ g = rZ ≫ i)
    {Psndfgr : C} (fstsndfgr : Psndfgr ⟶ Pfg) (sndsndfgr : Psndfgr ⟶ R)
    (hsndfgr : IsPullback fstsndfgr sndsndfgr sndfg rY)
    {t : Psndfgr ⟶ Pfi} (ht₁ : t ≫ fstfi = fstsndfgr ≫ fstfg) (ht₂ : t ≫ sndfi = sndsndfgr ≫ rZ) :
    IsPullback t sndsndfgr sndfi rZ := by
  refine .of_right ?_ ht₂ hfi
  rw [← hrw, ht₁]
  exact .paste_horiz hsndfgr hfg

set_option backward.isDefEq.respectTransparency false in
/-- This is a `HasPullback` variant of `CategoryTheory.IsPullback.paste_twist_right` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant719a18d4714c604c7ee2d6efe11c2cf51a9969c3f08b1aeb27198b24ecd8cadf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant719a18d4714c604c7ee2d6efe11c2cf51a9969c3f08b1aeb27198b24ecd8cadf.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8afc54fa203c3bf7d6ee6ab5b22bf39a62aebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
