# ZeroSphereAbelianDifferenceModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a814b4cc70b793ec062e15d15eb4745653fda64c395297d63672af4ac4352eda",
  "kind": "structure",
  "lexical_name": "ZeroSphereAbelianDifferenceModel",
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
  "slug": "zerosphereabeliandifferencemodel--d071c5689942d48a6c235478",
  "source": {
    "blob": "d4e323b29365c6df43ff51bb35ef66ec5474f98e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 121,
    "path": "GRWTSK/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d071c5689942d48a6c2354781779bb15582a95d8eccc33e70f8712efc9a63ce8",
  "verification": {
    "reference": "docs/verification/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a814b4cc70b793ec062e15d15eb4745653fda64c395297d63672af4ac4352eda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ZeroSphereAbelianDifferenceModel
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    (Θ : TangentialObstructionTheory certificate) where
  AbelianComponent : Type uO
  abelianComponentAddGroup : AddCommGroup AbelianComponent
  endpointClass : Θ.HomotopyFiberPoint → AbelianComponent
  samePathComponent_iff_endpointClass_eq : ∀ x y,
    Θ.samePathComponent x y ↔ endpointClass x = endpointClass y
  differenceToObstruction :
    letI := abelianComponentAddGroup
    letI := Θ.obstructionAddCommGroup
    AbelianComponent →+ Θ.Obstruction
  boundaryClass_eq_ordered_difference : ∀ (hp : p = 0) θ,
    letI := abelianComponentAddGroup
    letI := Θ.obstructionAddCommGroup
    Θ.boundaryClass θ =
      differenceToObstruction
        (endpointClass (Θ.zeroSphereEndpoints hp θ).positive -
          endpointClass (Θ.zeroSphereEndpoints hp θ).negative)

namespace TangentialObstructionTheory

variable
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}

/-- The actual obstruction map of the selected attaching problem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e323b29365c6df43ff51bb35ef66ec5474f98e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
