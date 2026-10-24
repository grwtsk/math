# glueDataT_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65f4bd00-5a7a-ecd5-5990-5005d246a681",
  "kind": "lemma",
  "lexical_name": "glueDataT_fst",
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
  "slug": "gluedatat-fst--8cff00be822d26b9dfc679be",
  "source": {
    "blob": "cdc31c03361e5e97798706fdc1030713093fd5b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 229,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cff00be822d26b9dfc679be4c01e083d628e5132aa63a743a382ce339f6258b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65f4bd00-5a7a-ecd5-5990-5005d246a681`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma glueDataT_fst (U V : X.affineOpens) :
    I.glueDataT U V ≫ pullback.fst _ _ ≫ glueDataObjι _ _ =
      pullback.snd _ _ ≫ X.homOfLE inf_le_right := by
  refine (pullback.lift_fst_assoc _ _ _ _).trans ?_
  conv_lhs => enter [2]; rw [glueDataObjι]
  rw [Scheme.Hom.liftQuotient_comp_assoc, Category.assoc, Category.assoc, Iso.hom_inv_id,
    Category.comp_id]

/-- (Implementation) `t'` in the glue data for `𝒪ₓ/I`. -/
private noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc31c03361e5e97798706fdc1030713093fd5b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
