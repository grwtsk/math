# basicOpenToSpec_app_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6ae5261-42f1-22ee-01fe-474b285257fd",
  "kind": "lemma",
  "lexical_name": "basicOpenToSpec_app_top",
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
  "slug": "basicopentospec-app-top--f9602bac76135514fb685566",
  "source": {
    "blob": "817ed1571c3c72c45bd0935b33f5bc9f1ac84a41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 141,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9602bac76135514fb68556633559049bad0b14d9b28df8184d3e751e71264d4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6ae5261-42f1-22ee-01fe-474b285257fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma basicOpenToSpec_app_top :
    (basicOpenToSpec 𝒜 f).app ⊤ = (Scheme.ΓSpecIso _).hom ≫ awayToSection 𝒜 f ≫
      (basicOpen 𝒜 f).topIso.inv := by
  rw [basicOpenToSpec]
  simp only [Scheme.comp_coeBase, TopologicalSpace.Opens.map_comp_obj,
    TopologicalSpace.Opens.map_top, Scheme.comp_app, Scheme.Opens.topIso_inv, eqToHom_op]
  erw [Scheme.comp_app]
  simp

/-- The structure map `Proj A ⟶ Spec A₀`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `817ed1571c3c72c45bd0935b33f5bc9f1ac84a41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
