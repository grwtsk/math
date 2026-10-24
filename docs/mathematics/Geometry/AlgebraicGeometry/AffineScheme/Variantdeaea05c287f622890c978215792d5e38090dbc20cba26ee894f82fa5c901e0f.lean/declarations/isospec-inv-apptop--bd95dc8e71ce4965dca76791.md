# isoSpec_inv_appTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7680e28662a38691282f29c9258387d17f22a59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/deaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93a102b4-ce64-c72e-e6c6-15b70f999202",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d2fb46c-1042-32bf-6988-ab995fdeb512",
  "kind": "lemma",
  "lexical_name": "isoSpec_inv_appTop",
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
  "slug": "isospec-inv-apptop--bd95dc8e71ce4965dca76791",
  "source": {
    "blob": "c7680e28662a38691282f29c9258387d17f22a59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 338,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantdeaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd95dc8e71ce4965dca7679111dca29efc62e5ca709633e9abcc444b31715720",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variantdeaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d2fb46c-1042-32bf-6988-ab995fdeb512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isoSpec_inv_appTop :
    hU.isoSpec.inv.appTop = U.topIso.hom ≫ (Scheme.ΓSpecIso Γ(X, U)).inv := by
  simp_rw [Scheme.Opens.toScheme_presheaf_obj, isoSpec_inv, Scheme.isoSpec, asIso_inv,
    Scheme.comp_app, Scheme.Opens.topIso_hom, Scheme.ΓSpecIso_inv_naturality,
    Scheme.inv_appTop, -- `check_compositions` reports defeq problems starting after this step.
    IsIso.inv_comp_eq]
  rw [Scheme.toSpecΓ_appTop]
  -- We need `erw` here because the goal has
  -- `Scheme.ΓSpecIso Γ(↑U, ⊤)).hom ≫ Scheme.ΓSpecIso Γ(X, U.ι ''ᵁ ⊤)).inv`
  -- and `Γ(X, U.ι ''ᵁ ⊤)` is non-reducibly defeq to `Γ(↑U, ⊤)`.
  erw [Iso.hom_inv_id_assoc]
  simp only [Opens.map_top]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variantdeaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantdeaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7680e28662a38691282f29c9258387d17f22a59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
