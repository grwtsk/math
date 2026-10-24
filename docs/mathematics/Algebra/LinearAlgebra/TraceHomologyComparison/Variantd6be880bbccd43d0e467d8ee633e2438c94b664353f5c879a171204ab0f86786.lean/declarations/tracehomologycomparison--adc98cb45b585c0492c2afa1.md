# TraceHomologyComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:403b2581605f1319aa91beb8b32eb3d23e63b6f8daf295025bf7923e0e0c5b83",
  "kind": "structure",
  "lexical_name": "TraceHomologyComparison",
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
  "slug": "tracehomologycomparison--adc98cb45b585c0492c2afa1",
  "source": {
    "blob": "b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 437,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adc98cb45b585c0492c2afa1dce6580cf86707906f4212d04f3f892100ad5c90",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:403b2581605f1319aa91beb8b32eb3d23e63b6f8daf295025bf7923e0e0c5b83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TraceHomologyComparison
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (certificate : FramedSurgeryCertificate T R embedding) where
  theory : TracePairHomologySemantics.{uH, uK, uS} T R
  incomingCompare : (k : Nat) →
    letI := theory.relativeAddCommGroup certificate.trace .incoming k
    letI := theory.relativeModule certificate.trace .incoming k
    theory.RelativeHomology certificate.trace .incoming k ≃ₗ[R]
      (SingleHandleComplex.complex R (p + 1)).homology k
  dualCompare : (k : Nat) →
    letI := theory.relativeAddCommGroup certificate.trace .outgoing k
    letI := theory.relativeModule certificate.trace .outgoing k
    theory.RelativeHomology certificate.trace .outgoing k ≃ₗ[R]
      (SingleHandleComplex.complex R q).homology k
  incomingBoundaryTargetCompare :
    letI := theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
    letI := certificate.incomingRelative.boundaryTargetAddCommGroup
    theory.BoundaryHomology certificate.trace .incoming ((p + 1) - 1) ≃+
      certificate.incomingRelative.BoundaryTarget
  dualBoundaryTargetCompare :
    letI := theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
    letI := certificate.dualRelative.boundaryTargetAddCommGroup
    theory.BoundaryHomology certificate.trace .outgoing (q - 1) ≃+
      certificate.dualRelative.BoundaryTarget
  incoming_boundary_natural :
    letI := theory.relativeAddCommGroup certificate.trace .incoming (p + 1)
    letI := theory.relativeModule certificate.trace .incoming (p + 1)
    letI := theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
    letI := theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
    letI := certificate.incomingRelative.carrierAddCommGroup (p + 1)
    letI := certificate.incomingRelative.boundaryTargetAddCommGroup
    ∀ x,
      incomingBoundaryTargetCompare
          (theory.connecting certificate.trace .incoming (p + 1)
            (Nat.zero_lt_succ p) x) =
        certificate.incomingRelative.boundary
          (certificate.incomingRelative.atIndex.symm
            (SingleHandleComplex.homologyLinearEquiv R (p + 1)
              (incomingCompare (p + 1) x)))
  dual_boundary_natural :
    letI := theory.relativeAddCommGroup certificate.trace .outgoing q
    letI := theory.relativeModule certificate.trace .outgoing q
    letI := theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
    letI := theory.boundaryModule certificate.trace .outgoing (q - 1)
    letI := certificate.dualRelative.carrierAddCommGroup q
    letI := certificate.dualRelative.boundaryTargetAddCommGroup
    ∀ x,
      dualBoundaryTargetCompare
          (theory.connecting certificate.trace .outgoing q certificate.q_pos x) =
        certificate.dualRelative.boundary
          (certificate.dualRelative.atIndex.symm
            (SingleHandleComplex.homologyLinearEquiv R q
              (dualCompare q x)))
  incoming_generator_geometric :
    letI := theory.relativeAddCommGroup certificate.trace .incoming (p + 1)
    letI := theory.relativeModule certificate.trace .incoming (p + 1)
    letI := theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
    letI := theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
    theory.RepresentsAttachingSphere certificate.trace ((p + 1) - 1)
      (theory.connecting certificate.trace .incoming (p + 1)
        (Nat.zero_lt_succ p)
        ((incomingCompare (p + 1)).symm
          (SingleHandleComplex.homologyGenerator R (p + 1))))
  dual_generator_geometric :
    letI := theory.relativeAddCommGroup certificate.trace .outgoing q
    letI := theory.relativeModule certificate.trace .outgoing q
    letI := theory.boundaryAddCommGroup certificate.trace .outgoing (q - 1)
    letI := theory.boundaryModule certificate.trace .outgoing (q - 1)
    theory.RepresentsBeltSphere certificate.trace (q - 1)
      (theory.connecting certificate.trace .outgoing q certificate.q_pos
        ((dualCompare q).symm (SingleHandleComplex.homologyGenerator R q)))

namespace TraceHomologyComparison

variable
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}

/-- The incoming relative group of the certificate's actual trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
