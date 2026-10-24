# topCatAdjunctionUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0a83f92b92a3c3551bc183dcffb5e602dd19c99fe5bde3cc088b85e9c463de4",
  "kind": "def",
  "lexical_name": "topCatAdjunctionUnit",
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
  "slug": "topcatadjunctionunit--634e8accfed721d776b39f75",
  "source": {
    "blob": "fd34675411dcf210eb7c07ccf7df8a1bf461dc89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:634e8accfed721d776b39f7567dd0150393898b65658de6b130a3aca03a79801",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0a83f92b92a3c3551bc183dcffb5e602dd19c99fe5bde3cc088b85e9c463de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def topCatAdjunctionUnit (X : LightCondSet.{u}) : X ⟶ X.toTopCat.toLightCondSet where
  val := {
    app := fun S x ↦ {
      toFun := fun s ↦ X.val.map ((of PUnit.{u+1}).const s).op x
      continuous_toFun := by
        suffices ∀ (i : (T : LightProfinite.{u}) × X.val.obj ⟨T⟩),
          Continuous (fun (a : i.fst) ↦ X.coinducingCoprod ⟨i, a⟩) from this ⟨_, _⟩
        rw [← continuous_sigma_iff]
        apply continuous_coinduced_rng }
    naturality := fun _ _ _ ↦ by
      ext
      simp only [TopCat.toSheafCompHausLike_val_obj, Opposite.op_unop, types_comp_apply,
        TopCat.toSheafCompHausLike_val_map, ← FunctorToTypes.map_comp_apply]
      rfl }

/-- The adjunction `lightCondSetToTopCat ⊣ topCatToLightCondSet` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd34675411dcf210eb7c07ccf7df8a1bf461dc89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
