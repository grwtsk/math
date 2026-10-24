# Homology.RefinedFinitePrismaticSurfaceModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e57504ea1b92d366ee75bc3c9c537525e080a80b3be843d034cc335a2c3b507",
  "kind": "structure",
  "lexical_name": "Homology.RefinedFinitePrismaticSurfaceModel",
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
  "slug": "homology-refinedfiniteprismaticsurfacemodel--c45e6b02070e247d96a8fbd4",
  "source": {
    "blob": "6d504eaa827ba73bab26e5e3659dad1a7f543a3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c45e6b02070e247d96a8fbd497ab33a667f28ebc3062568033dbb52cc4ec76b7",
  "verification": {
    "reference": "docs/verification/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e57504ea1b92d366ee75bc3c9c537525e080a80b3be843d034cc335a2c3b507`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Homology.RefinedFinitePrismaticSurfaceModel (n : Nat) where
  base : Homology.FinitePrismaticSurfaceModel n
  prismaticPrime : Nat
  boundedPrism : Homology.BoundedPrismCertificate prismaticPrime
  deltaRing : Homology.DeltaRingCertificate prismaticPrime
  deltaRing_matches_prism :
    deltaRing.deltaRing = boundedPrism.prism.A
  distinguished : Homology.DistinguishedElementCertificate boundedPrism.prism
  frobenius :
    Homology.FrobeniusLiftCertificate n boundedPrism.prism.A
  filtration : Homology.FiltrationCertificate prismaticPrime
  frobenius_matrix_matches :
    frobenius.phi = base.frob_phi
  frobenius_bounded :
    ∀ i j, frobenius.phi i j ≤ base.prism.prism_d

/-- The refined surface inherits the original Frobenius bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d504eaa827ba73bab26e5e3659dad1a7f543a3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
