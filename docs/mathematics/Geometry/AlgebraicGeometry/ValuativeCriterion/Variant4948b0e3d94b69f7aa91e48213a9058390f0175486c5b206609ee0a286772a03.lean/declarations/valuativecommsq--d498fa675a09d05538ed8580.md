# ValuativeCommSq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:538b60b204bba20609fb4922a5d7fe41a7831b1a094b99350bbf3d0b77365a6a",
  "kind": "structure",
  "lexical_name": "ValuativeCommSq",
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
  "slug": "valuativecommsq--d498fa675a09d05538ed8580",
  "source": {
    "blob": "333066e40f0a638d44d10d0b33079537438b611d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 57,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d498fa675a09d05538ed8580fa4ab4397b603b2f9e2522a1139719a810a2800a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:538b60b204bba20609fb4922a5d7fe41a7831b1a094b99350bbf3d0b77365a6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ValuativeCommSq {X Y : Scheme.{u}} (f : X ⟶ Y) where
  /-- The valuation ring of a valuative commutative square. -/
  R : Type u
  [commRing : CommRing R]
  [domain : IsDomain R]
  [valuationRing : ValuationRing R]
  /-- The field of fractions of a valuative commutative square. -/
  K : Type u
  [field : Field K]
  [algebra : Algebra R K]
  [isFractionRing : IsFractionRing R K]
  /-- The top map in a valuative commutative map. -/
  (i₁ : Spec (.of K) ⟶ X)
  /-- The bottom map in a valuative commutative map. -/
  (i₂ : Spec (.of R) ⟶ Y)
  (commSq : CommSq i₁ (Spec.map (CommRingCat.ofHom (algebraMap R K))) f i₂)

namespace ValuativeCommSq

attribute [instance] commRing domain valuationRing field algebra isFractionRing

end ValuativeCommSq

/-- A morphism `f : X ⟶ Y` satisfies the existence part of the valuative criterion if
every valuative commutative square over `f` has (at least) a lift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `333066e40f0a638d44d10d0b33079537438b611d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
