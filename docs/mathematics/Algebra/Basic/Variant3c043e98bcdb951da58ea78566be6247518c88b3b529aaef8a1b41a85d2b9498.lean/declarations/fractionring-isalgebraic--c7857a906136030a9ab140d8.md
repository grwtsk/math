# FractionRing.isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8730fae4f6355cd33fda81cb6dbee87e3ff2d7a025541cf208c0e4f9288633e9",
  "kind": "instance",
  "lexical_name": "FractionRing.isAlgebraic",
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
  "slug": "fractionring-isalgebraic--c7857a906136030a9ab140d8",
  "source": {
    "blob": "acb56c60131de223b4dc6123ed343581caa2254e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 284,
    "path": "GRWTSK/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7857a906136030a9ab140d818b8bcab579eb09a2dcede9d6a06fb1662f15d3a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8730fae4f6355cd33fda81cb6dbee87e3ff2d7a025541cf208c0e4f9288633e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private instance FractionRing.isAlgebraic :
    letI : IsDomain R := (FaithfulSMul.algebraMap_injective R S).isDomain _
    letI : Algebra (FractionRing R) (FractionRing S) := FractionRing.liftAlgebra R _
    Algebra.IsAlgebraic (FractionRing R) (FractionRing S) := by
  letI : IsDomain R := (FaithfulSMul.algebraMap_injective R S).isDomain _
  letI : Algebra (FractionRing R) (FractionRing S) := FractionRing.liftAlgebra R _
  have := FractionRing.isScalarTower_liftAlgebra R (FractionRing S)
  have := (IsFractionRing.isAlgebraic_iff' R S (FractionRing S)).1 inferInstance
  constructor
  intro
  exact (IsFractionRing.isAlgebraic_iff R (FractionRing R) (FractionRing S)).1
      (Algebra.IsAlgebraic.isAlgebraic _)

/-- A (random) homomorphism from an algebraic extension of R into an algebraically
  closed extension of R. -/
@[stacks 09GU]
noncomputable irreducible_def lift : S →ₐ[R] M := by
  letI : IsDomain R := (FaithfulSMul.algebraMap_injective R S).isDomain _
  letI := FractionRing.liftAlgebra R M
  letI := FractionRing.liftAlgebra R (FractionRing S)
  have := FractionRing.isScalarTower_liftAlgebra R M
  have := FractionRing.isScalarTower_liftAlgebra R (FractionRing S)
  let f : FractionRing S →ₐ[FractionRing R] M := lift_aux (FractionRing R) (FractionRing S) M
  exact (f.restrictScalars R).comp ((Algebra.ofId S (FractionRing S)).restrictScalars R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acb56c60131de223b4dc6123ed343581caa2254e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
