# restrictUnitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:988e0d0f3c7a9be60fba76ccdabf9ed5a436e0de6713cb35586dbabe81c6845b",
  "kind": "def",
  "lexical_name": "restrictUnitIso",
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
  "slug": "restrictunitiso--4d69e572ff993fd279f05a9e",
  "source": {
    "blob": "21c5027a7a2f5fc598166f622d14354d98699f08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 398,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Sheaf/Variant27e8fdb3acea1379594c8214d57bae2492cd91a06783d10b00ce0c1a4294694e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d69e572ff993fd279f05a9efbc70bd6069eebc01ece8e7ccfab98cacf30c38d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Sheaf/Variant27e8fdb3acea1379594c8214d57bae2492cd91a06783d10b00ce0c1a4294694e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:988e0d0f3c7a9be60fba76ccdabf9ed5a436e0de6713cb35586dbabe81c6845b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictUnitIso (f : X ⟶ Y) [IsOpenImmersion f] :
    restrict (.unit <| Y.ringCatSheaf) f ≅ .unit X.ringCatSheaf := by
  refine (fullyFaithfulForget _).preimageIso <| PresheafOfModules.isoMk (fun U ↦ ?_) ?_
  · refine ModuleCat.isoMk
      ((forget₂ CommRingCat RingCat ⋙ forget₂ _ Ab).mapIso (f.appIso U.unop)) ?_
    intro (r : Γ(X, U.unop))
    ext (x : Γ(Y, f ''ᵁ U.unop))
    change r * (f.appIso U.unop).hom x = (f.appIso U.unop).hom ((f.appIso U.unop).inv r * x)
    simp
  · intro U V g
    have : Y.presheaf.map (homOfLE (by grw [leOfHom g.unop])).op ≫
        (f.appIso _).hom = (f.appIso U.unop).hom ≫ X.presheaf.map g := by
      simp [Hom.appIso_hom']
    ext x
    exact congr($(this) x)

/-- The restriction of a module along an open immersion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Sheaf/Variant27e8fdb3acea1379594c8214d57bae2492cd91a06783d10b00ce0c1a4294694e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Sheaf/Variant27e8fdb3acea1379594c8214d57bae2492cd91a06783d10b00ce0c1a4294694e.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21c5027a7a2f5fc598166f622d14354d98699f08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
