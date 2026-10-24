# arrowResLEAppIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:270346511c289189d40fca7452c25dd397a44b748d864ab311e63cc1e699c269",
  "kind": "def",
  "lexical_name": "arrowResLEAppIso",
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
  "slug": "arrowresleappiso--d38e75441a5210f46e850978",
  "source": {
    "blob": "afb1d69f0544a201f67f5f0154920085573c869d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 736,
    "line": 725,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d38e75441a5210f46e850978e303357e9b560625d37fd7589b426dea9dca16fd",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:270346511c289189d40fca7452c25dd397a44b748d864ab311e63cc1e699c269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 725–736.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def arrowResLEAppIso (f : X ⟶ Y) (U : Y.Opens) (V : X.Opens) (e : V ≤ f ⁻¹ᵁ U) :
    Arrow.mk ((f.resLE U V e).appTop) ≅ Arrow.mk (f.appLE U V e) :=
  Arrow.isoMk U.topIso V.topIso <| by
  simp only [Opens.map_top, Arrow.mk_left, Arrow.mk_right, Functor.id_obj, Scheme.Opens.topIso_hom,
    eqToHom_op, Arrow.mk_hom, Scheme.Hom.map_appLE]
  rw [Scheme.Hom.appTop, ← Scheme.Hom.appLE_eq_app, Scheme.Hom.resLE_appLE, Scheme.Hom.appLE_map]

end MorphismRestrict

/-- The restriction of an open cover to an open subset. -/
@[simps! J obj map]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean#L725).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afb1d69f0544a201f67f5f0154920085573c869d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
