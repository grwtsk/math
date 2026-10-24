# whiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4eada87b21965e27469dca56ed8cbb81f086c5f8e1fe942e3ed67ae994d5add1",
  "kind": "instance",
  "lexical_name": "whiskerRight",
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
  "slug": "whiskerright--0ada78cc1de0a3319854b26c",
  "source": {
    "blob": "96474b1ede798bfcb79c6c34469ae8164140456e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 425,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant1ad86778ca8a5377dc465c7c13660203eaa0609707b091d86b20aee87de46c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ada78cc1de0a3319854b26ca87318d19593f2921b3187c37f5094eab1b8fc0c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant1ad86778ca8a5377dc465c7c13660203eaa0609707b091d86b20aee87de46c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4eada87b21965e27469dca56ed8cbb81f086c5f8e1fe942e3ed67ae994d5add1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance whiskerRight [NatTrans.CommShift τ A] :
    NatTrans.CommShift (Functor.whiskerRight τ G) A := ⟨fun a => by
  ext X
  simp only [Functor.whiskerRight_twice, comp_app, Functor.commShiftIso_comp_hom_app,
    Functor.associator_hom_app, Functor.whiskerRight_app, Functor.comp_map,
    Functor.associator_inv_app, comp_id, id_comp, assoc, ← Functor.commShiftIso_hom_naturality, ←
    G.map_comp_assoc, shift_app_comm, Functor.whiskerLeft_app]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant1ad86778ca8a5377dc465c7c13660203eaa0609707b091d86b20aee87de46c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant1ad86778ca8a5377dc465c7c13660203eaa0609707b091d86b20aee87de46c2c.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96474b1ede798bfcb79c6c34469ae8164140456e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
