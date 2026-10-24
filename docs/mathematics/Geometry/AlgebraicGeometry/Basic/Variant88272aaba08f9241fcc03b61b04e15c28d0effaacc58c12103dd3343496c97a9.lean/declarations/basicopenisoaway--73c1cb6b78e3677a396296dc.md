# basicOpenIsoAway

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86f81de152a134962beed345b29d2c04bd1669c646796c48b5cf8ec7b629efb2",
  "kind": "def",
  "lexical_name": "basicOpenIsoAway",
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
  "slug": "basicopenisoaway--73c1cb6b78e3677a396296dc",
  "source": {
    "blob": "101f00dc8f8be4e93d24cab460a9d6cba83ee260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 168,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73c1cb6b78e3677a396296dc8ab5accd9251dc1c1cc874b04c70c555fd99ed89",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86f81de152a134962beed345b29d2c04bd1669c646796c48b5cf8ec7b629efb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def basicOpenIsoAway : CommRingCat.of (Away 𝒜 f) ≅ Γ(Proj 𝒜, basicOpen 𝒜 f) :=
  have : IsIso (awayToSection 𝒜 f) := by
    have := basicOpenToSpec_app_top 𝒜 f
    rw [← Iso.inv_comp_eq, Iso.eq_comp_inv] at this
    rw [← this, ← basicOpenIsoSpec_hom 𝒜 f f_deg hm]
    infer_instance
  asIso (awayToSection 𝒜 f)

/-- The open immersion `Spec (A_f)₀ ⟶ Proj A`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `101f00dc8f8be4e93d24cab460a9d6cba83ee260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
