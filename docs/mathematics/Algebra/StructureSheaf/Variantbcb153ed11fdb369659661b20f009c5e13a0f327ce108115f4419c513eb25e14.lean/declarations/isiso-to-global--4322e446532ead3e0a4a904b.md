# isIso_to_global

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a5d62cfeb4e44ab0a6197d145f46493ae673aff23081dafe6d26de5021ce4dc",
  "kind": "instance",
  "lexical_name": "isIso_to_global",
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
  "slug": "isiso-to-global--4322e446532ead3e0a4a904b",
  "source": {
    "blob": "bf3b21039e02b82b04f228d342b97c2be8cf694e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1006,
    "line": 996,
    "path": "GRWTSK/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4322e446532ead3e0a4a904bec1e1f54095443584e69ae9554ff8dbb7e2c5bfb",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a5d62cfeb4e44ab0a6197d145f46493ae673aff23081dafe6d26de5021ce4dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 996–1006.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isIso_to_global : IsIso (toOpen R ⊤) := by
  let hom := CommRingCat.ofHom (algebraMap R (Localization.Away (1 : R)))
  haveI : IsIso hom :=
    IsIso.of_iso (IsLocalization.atOne R (Localization.Away (1 : R))).toRingEquiv.toCommRingCatIso
  rw [to_global_factors R]
  infer_instance
#align algebraic_geometry.structure_sheaf.is_iso_to_global AlgebraicGeometry.StructureSheaf.isIso_to_global

/-- The ring isomorphism between the ring `R` and the global sections `Γ(X, 𝒪ₓ)`. -/
-- Porting note : was @[simps (config := { rhsMd := Tactic.Transparency.semireducible })]
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean#L996).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf3b21039e02b82b04f228d342b97c2be8cf694e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
