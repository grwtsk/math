# WeightOneCMRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d05e2760f3252fccbf443cd22163d4dd8d2f07b691ad3428f375ad13e0c7c80f",
  "kind": "structure",
  "lexical_name": "WeightOneCMRealization",
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
  "slug": "weightonecmrealization--7a7bd192e508855e36f6989f",
  "source": {
    "blob": "e632f5554fdc09dafe2880ed91b404169b0b3d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 55,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a7bd192e508855e36f6989f696ef9b1777eaeec342d51a1357207fba0bc5dd2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d05e2760f3252fccbf443cd22163d4dd8d2f07b691ad3428f375ad13e0c7c80f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WeightOneCMRealization
    (v : OddSignRow E)
    (X : SignControlledXi E v) where
  /-- Opaque geometric object supplied by the Riemann existence theorem. -/
  geometricCarrier : Type*
  /-- Opaque rational H1 realization. -/
  H1 : Type*
  [H1_addCommGroup : AddCommGroup H1]
  [H1_moduleQ : Module ℚ H1]
  [H1_finiteDimensional : FiniteDimensional ℚ H1]
  /-- Rational comparison with the original CM field vector space. -/
  h1Equiv : H1 ≃ₗ[ℚ] E
  /-- Actual complexified first cohomology carrier. -/
  H1C : Type*
  [H1C_addCommGroup : AddCommGroup H1C]
  [H1C_moduleC : Module ℂ H1C]
  /-- Comparison from actual complexified H1 to the canonical CM coordinate model. -/
  h1ComplexCoordinates : H1C ≃ₗ[ℂ] (G → ℂ)
  /-- Rational H1 includes into actual complexified H1. -/
  h1ToComplex : H1 →ₗ[ℚ] H1C
  /-- The rational inclusion agrees with the rational CM-field coordinates. -/
  h1ToComplex_coordinates :
    ∀ h σ,
      h1ComplexCoordinates (h1ToComplex h) σ =
        CMArchimedeanPositivity.fieldCoordinates E (h1Equiv h) σ
  /-- Complexified coordinate comparison carrying the Hodge decomposition. -/
  complexCoordinates : (G → ℂ) ≃ₗ[ℂ] (G → ℂ)
  /-- The supplied Hodge operator agrees with the locally constructed one
  after the chosen coordinate comparison. -/
  weil_compatibility :
    ∀ z,
      complexCoordinates
          (CMCoordinateHodge.weilOperator v z) =
        CMCoordinateHodge.weilOperator v (complexCoordinates z)
  /-- The supplied polarization restricts to the scaled integral form on the
  selected lattice. -/
  polarization_integral :
    ∀ a b : Fin n → ℤ,
      (CMLatticePolarization.latticeScale E X : ℚ) *
          CMTracePolarization.tracePairing E X.xi
            (CMLatticePolarization.latticeVector E a)
            (CMLatticePolarization.latticeVector E b) =
        (CMLatticePolarization.integralPairing E X a b : ℚ)
  /-- Marker that the geometric carrier is projective/polarized in the sense
  required by the external classical theorem.

  This proposition is intentionally supplied, not proved locally. -/
  isPolarizedProjective : Prop
  polarizedProjective_proof : isPolarizedProjective

/-- Actual H^(1,0) subspace pulled back from the canonical coordinate model. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e632f5554fdc09dafe2880ed91b404169b0b3d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
