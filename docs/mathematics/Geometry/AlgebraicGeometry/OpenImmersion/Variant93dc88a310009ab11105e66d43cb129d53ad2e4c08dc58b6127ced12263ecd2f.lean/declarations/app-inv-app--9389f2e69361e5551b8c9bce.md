# app_inv_app'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4840c3b01c4996cb4862762efb493c8d4fe546f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 843,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a862538b-037f-e4b2-7924-917b16edc137",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d30a2fb4-1d62-474d-1a1e-c9bc1914d613",
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
  "slug": "app-inv-app--9389f2e69361e5551b8c9bce",
  "source": {
    "blob": "4840c3b01c4996cb4862762efb493c8d4fe546f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 851,
    "line": 843,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9389f2e69361e5551b8c9bcea32a47df2b062b181cc6e27dbcc7d216f4b6f7f5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d30a2fb4-1d62-474d-1a1e-c9bc1914d613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 843–851.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem app_inv_app' (U : Opens Y) (hU : (U : Set Y) ⊆ Set.range f.hom.base) :
    f.hom.c.app (op U) ≫ invApp f ((Opens.map f.hom.base).obj U) =
      Y.presheaf.map
        (eqToHom <|
            le_antisymm (Set.image_preimage_subset f.hom.base U.1) <|
              (Set.image_preimage_eq_inter_range (f := f.hom.base) (t := U.1)).symm ▸
                Set.subset_inter_iff.mpr ⟨fun _ h => h, hU⟩).op :=
  PresheafedSpace.IsOpenImmersion.app_invApp f.hom U

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean#L843).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4840c3b01c4996cb4862762efb493c8d4fe546f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
