# TorsionRoundedState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45ac5d5b1d82bb362278c267173fc1c8b460a3642cd77e82f0bcaa5de3e7ce52",
  "kind": "structure",
  "lexical_name": "TorsionRoundedState",
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
  "slug": "torsionroundedstate--5d052c4d895b2bf6d4ebf409",
  "source": {
    "blob": "7bd07553217180c9f5a405d8c885ab2deadb6864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 22,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d052c4d895b2bf6d4ebf40910a3818a29575a47adbaec3ea4a8db6b9ef474e5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45ac5d5b1d82bb362278c267173fc1c8b460a3642cd77e82f0bcaa5de3e7ce52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TorsionRoundedState
    {IntegralCohomology : Type u}
    {RealCohomology : Type v}
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup RealCohomology]
    [NormedSpace ℝ RealCohomology]
    [FiniteDimensional ℝ RealCohomology]
    {ContinuousTorus : Type w}
    {Phase : Type x}
    {PhaseTorsion : Type y}
    [AddCommGroup ContinuousTorus]
    [AddCommGroup Phase]
    [AddCommGroup PhaseTorsion]
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)
    (gram : PositiveGram RealCohomology)
    (extension :
      BocksteinExtension ContinuousTorus Phase PhaseTorsion) where
  point : RealCohomology
  rounding :
    FiniteRoundingCertificate lattice gram point
  branch :
    RoundedBranch lattice gram point
  branchRetained :
    branch.integral ∈ rounding.minimizers
  /-- Quotient the continuous residue into `V / Λ`. -/
  continuousQuotient : RealCohomology →+ ContinuousTorus
  /-- The exact homology degree whose Smith coordinates model this phase. -/
  torsionChain : FiniteIntegralChain
  torsionDegree : Nat
  torsionLedger :
    TorsionLedger torsionChain torsionDegree
  /--
  Executable finiteness and the exact UCT/Smith coordinate equivalence for the
  Bockstein target.  This channel is independent of the free Gram geometry.
  -/
  torsionRepresentation :
    UCTBocksteinTorsionRepresentation
      torsionLedger PhaseTorsion
  totalPhase : Phase
  phaseTorsion : PhaseTorsion
  /-- A per-state lift is enough; no global splitting is inferred. -/
  torsionLift : Phase
  torsionLift_bockstein :
    extension.bockstein torsionLift = phaseTorsion
  /--
  The phase class is exactly the included continuous residue plus its finite
  torsion lift.
  -/
  phase_decomposition :
    totalPhase =
      extension.inclusion (continuousQuotient branch.residue) +
        torsionLift
  splitting :
    Option (BocksteinSplitting extension)
  splitting_agrees :
    ∀ selected,
      splitting = some selected →
        torsionLift = selected.lift phaseTorsion
  stateDigest : Digest
  stateCertificate : ObjectAddress

namespace TorsionRoundedState

variable
    {IntegralCohomology : Type u}
    {RealCohomology : Type v}
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup RealCohomology]
    [NormedSpace ℝ RealCohomology]
    [FiniteDimensional ℝ RealCohomology]
    {ContinuousTorus : Type w}
    {Phase : Type x}
    {PhaseTorsion : Type y}
    [AddCommGroup ContinuousTorus]
    [AddCommGroup Phase]
    [AddCommGroup PhaseTorsion]
    {lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology}
    {gram : PositiveGram RealCohomology}
    {extension :
      BocksteinExtension ContinuousTorus Phase PhaseTorsion}
    (state : TorsionRoundedState lattice gram extension)

/-- The selected branch still reconstructs the original real class exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bd07553217180c9f5a405d8c885ab2deadb6864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
