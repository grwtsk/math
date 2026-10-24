# isIso_pushoutSection_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2615f0da-4eca-d981-30b7-fe8c67ac889b",
  "kind": "lemma",
  "lexical_name": "isIso_pushoutSection_iff",
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
  "slug": "isiso-pushoutsection-iff--f1214708cffc54e78273fd24",
  "source": {
    "blob": "e0e723945703bc1866e0abaa9e2a95e3088e19cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 241,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant7dd238d5d9cb7a2edd4534a51b5e9452f013727d705027456dea840442f84f90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1214708cffc54e78273fd24dcd91772501d7c1176022692cd155bd0f8b8c780",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Flat/Variant7dd238d5d9cb7a2edd4534a51b5e9452f013727d705027456dea840442f84f90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2615f0da-4eca-d981-30b7-fe8c67ac889b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_pushoutSection_iff :
    IsIso (pushoutSection H hUST hUSX hUY) ↔ IsPushout (iX.appLE US UX hUSX) (f.appLE US UT hUST)
      (g.appLE UX UY (by simp [*])) (iY.appLE UT UY (by simp [*])) :=
  ⟨fun _ ↦ .of_iso (.of_hasPushout _ _) (.refl _) (.refl _) (.refl _)
    (asIso (pushoutSection H hUST hUSX hUY)) (by simp) (by simp) (by simp) (by simp),
    fun h ↦ inferInstanceAs (IsIso h.isoPushout.inv)⟩

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] IsAffineOpen.isoSpec_hom in
attribute [local simp ←] Scheme.Hom.resLE_eq_morphismRestrict in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Flat/Variant7dd238d5d9cb7a2edd4534a51b5e9452f013727d705027456dea840442f84f90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant7dd238d5d9cb7a2edd4534a51b5e9452f013727d705027456dea840442f84f90.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0e723945703bc1866e0abaa9e2a95e3088e19cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
