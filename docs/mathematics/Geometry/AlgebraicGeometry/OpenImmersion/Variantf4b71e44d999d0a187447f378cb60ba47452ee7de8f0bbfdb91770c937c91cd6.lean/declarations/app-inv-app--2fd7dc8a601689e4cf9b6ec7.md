# app_inv_app'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92322ca3-60f1-46a2-3dea-5e6262860fcc",
  "kind": "theorem",
  "lexical_name": "app_inv_app'",
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
  "slug": "app-inv-app--2fd7dc8a601689e4cf9b6ec7",
  "source": {
    "blob": "7b5cad5c5347d96072ffac32f1c447d094d643a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1281,
    "line": 1273,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fd7dc8a601689e4cf9b6ec7484cfd22544933352b13f84f87b0ac33c73ff782",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92322ca3-60f1-46a2-3dea-5e6262860fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1273–1281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem app_inv_app' (U : Opens Y) (hU : (U : Set Y) ⊆ Set.range f.base) :
    f.c.app (op U) ≫ H.invApp _ ((Opens.map f.base).obj U) =
      Y.presheaf.map
        (eqToHom <|
            le_antisymm (Set.image_preimage_subset f.base U.1) <|
              (Set.image_preimage_eq_inter_range (f := f.base) (t := U.1)).symm ▸
                Set.subset_inter_iff.mpr ⟨fun _ h => h, hU⟩).op :=
  PresheafedSpace.IsOpenImmersion.app_invApp f.1 U

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean#L1273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b5cad5c5347d96072ffac32f1c447d094d643a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
