# map_id_comp_H0Iso_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f05fa81-9ceb-c504-fde8-ff30ca761432",
  "kind": "theorem",
  "lexical_name": "map_id_comp_H0Iso_hom",
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
  "slug": "map-id-comp-h0iso-hom--4ab67f76432b84afff6c0b34",
  "source": {
    "blob": "60c03580b51d8bfe83313f16c6d9534dc701bcc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 273,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6be84f13879a5f242f0380b709373880f89c99d44becbec3c022da30858c3d7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ab67f76432b84afff6c0b342c9214c89508fbbf2a527157a4c3776c1a74bf70",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6be84f13879a5f242f0380b709373880f89c99d44becbec3c022da30858c3d7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f05fa81-9ceb-c504-fde8-ff30ca761432`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_id_comp_H0Iso_hom {A B : Rep k G} (f : A ⟶ B) :
    map (MonoidHom.id G) f 0 ≫ (H0Iso B).hom = (H0Iso A).hom ≫ (invariantsFunctor k G).map f := by
  simp only [← cancel_mono (shortComplexH0 B).f, Category.assoc, map_H0Iso_hom_f]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6be84f13879a5f242f0380b709373880f89c99d44becbec3c022da30858c3d7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6be84f13879a5f242f0380b709373880f89c99d44becbec3c022da30858c3d7a.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60c03580b51d8bfe83313f16c6d9534dc701bcc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
