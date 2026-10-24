# IsMeasurableRatCDF.stieltjesFunctionAux_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a3ad3d4-c001-008c-2bf8-a5d44d9bab85",
  "kind": "lemma",
  "lexical_name": "IsMeasurableRatCDF.stieltjesFunctionAux_eq",
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
  "slug": "ismeasurableratcdf-stieltjesfunctionaux-eq--3ac604b8c052eb234a22c6a5",
  "source": {
    "blob": "f98e2baed6cca7c73b9785b97e113d27decf38cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 300,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ac604b8c052eb234a22c6a5b12e54523e33d6fba9c16ec37631015074268682",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a3ad3d4-c001-008c-2bf8-a5d44d9bab85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsMeasurableRatCDF.stieltjesFunctionAux_eq (a : α) (r : ℚ) :
    IsMeasurableRatCDF.stieltjesFunctionAux f a r = f a r := by
  rw [← hf.iInf_rat_gt_eq a r, IsMeasurableRatCDF.stieltjesFunctionAux]
  refine Equiv.iInf_congr ?_ ?_
  · exact
      { toFun := fun t ↦ ⟨t.1, mod_cast t.2⟩
        invFun := fun t ↦ ⟨t.1, mod_cast t.2⟩ }
  · intro t
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98e2baed6cca7c73b9785b97e113d27decf38cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
