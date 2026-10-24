# Simple.of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3ff8a18-cbc9-11bf-c72b-521f2cbcd395",
  "kind": "theorem",
  "lexical_name": "Simple.of_iso",
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
  "slug": "simple-of-iso--8fc579798b39c5b1d74d4a15",
  "source": {
    "blob": "0619c135844fcdae76096067ef608f49086f8932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fc579798b39c5b1d74d4a15fa181da3ff4089f88e5b469d7c521499f39e3510",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3ff8a18-cbc9-11bf-c72b-521f2cbcd395`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Simple.of_iso {X Y : C} [Simple Y] (i : X ≅ Y) : Simple X :=
  { mono_isIso_iff_nonzero := fun f m => by
      constructor
      · intro h w
        have j : IsIso (f ≫ i.hom) := by infer_instance
        rw [Simple.mono_isIso_iff_nonzero] at j
        subst w
        simp at j
      · intro h
        have j : IsIso (f ≫ i.hom) := by
          apply isIso_of_mono_of_nonzero
          intro w
          apply h
          simpa using (cancel_mono i.inv).2 w
        rw [← Category.comp_id f, ← i.hom_inv_id, ← Category.assoc]
        infer_instance }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0619c135844fcdae76096067ef608f49086f8932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
