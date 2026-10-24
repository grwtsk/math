# pullback_fst_of_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3aa126003abc6d7391f9e72a641ea92d84afd1a9767c0712c9c728a569cf2c8",
  "kind": "instance",
  "lexical_name": "pullback_fst_of_right",
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
  "slug": "pullback-fst-of-right--17c11c4410456d68e8b86785",
  "source": {
    "blob": "83eaa0289eaf8fd200ee135abb4e3faa358d9a94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 526,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17c11c4410456d68e8b86785a31c40da437852f0f998cb85b9e895329fc7ad1f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3aa126003abc6d7391f9e72a641ea92d84afd1a9767c0712c9c728a569cf2c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pullback_fst_of_right : IsOpenImmersion (pullback.fst : pullback g f ⟶ _) := by
  rw [← pullbackSymmetry_hom_comp_snd]
  -- Porting note : was just `infer_instance`, it is a bit weird that no explicit class instance is
  -- provided but still class inference fail to find this
  exact LocallyRingedSpace.IsOpenImmersion.comp (H := inferInstance) _
#align algebraic_geometry.IsOpenImmersion.pullback_fst_of_right AlgebraicGeometry.IsOpenImmersion.pullback_fst_of_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83eaa0289eaf8fd200ee135abb4e3faa358d9a94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
