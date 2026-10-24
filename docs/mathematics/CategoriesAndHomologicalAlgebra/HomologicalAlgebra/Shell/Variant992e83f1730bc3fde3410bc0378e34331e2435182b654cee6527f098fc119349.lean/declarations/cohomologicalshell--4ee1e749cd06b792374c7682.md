# CohomologicalShell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9639d87c101c19ca6123e936c968c957c1a580492a8fc4f7354145e2f3ed2444",
  "kind": "structure",
  "lexical_name": "CohomologicalShell",
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
  "slug": "cohomologicalshell--4ee1e749cd06b792374c7682",
  "source": {
    "blob": "2de5a19a4fe344399df980e0b77abd4b21619ed9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Shell/Variant992e83f1730bc3fde3410bc0378e34331e2435182b654cee6527f098fc119349.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ee1e749cd06b792374c768249da63c0a3dbe2080dfe0730ed6ab367da7e0f1d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Shell/Variant992e83f1730bc3fde3410bc0378e34331e2435182b654cee6527f098fc119349.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9639d87c101c19ca6123e936c968c957c1a580492a8fc4f7354145e2f3ed2444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CohomologicalShell
    (IntegralCohomology : Type u)
    (RealCohomology : Type v)
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup RealCohomology]
    [NormedSpace ℝ RealCohomology]
    [FiniteDimensional ℝ RealCohomology]
    (ContinuousTorus : Type w)
    (Phase : Type x)
    (PhaseTorsion : Type y)
    [AddCommGroup ContinuousTorus]
    [AddCommGroup Phase]
    [AddCommGroup PhaseTorsion] where
  shellId : ObjectAddress
  stage : Nat
  degree : Nat
  previousHomologyDegree : Nat
  degree_is_successor :
    degree = Nat.succ previousHomologyDegree
  chain : FiniteIntegralChain
  previousIntegralTorsionLedger :
    TorsionLedger chain previousHomologyDegree
  integralTorsionLedger :
    TorsionLedger chain degree
  lattice :
    FreeCohomologyLattice IntegralCohomology RealCohomology
  /--
  Integral torsion killed by real realization is exactly the UCT character
  dual of torsion in the preceding homology degree.
  -/
  integralCohomologyTorsionUCT :
    lattice.integralTorsion ≃+
      CharacterModule previousIntegralTorsionLedger.Coordinate
  /--
  The Bockstein target in `H^(r+1)(K; ℤ)` is canonically the character
  dual of torsion in `H_r(K; ℤ)`.  It is not torsion in `H_(r+1)`.
  -/
  phaseTorsionUCT :
    PhaseTorsion ≃+
      CharacterModule integralTorsionLedger.Coordinate
  /--
  Identifying phase torsion with the homology coordinates themselves is a
  noncanonical choice and is therefore optional, explicit data.
  -/
  chosenPhaseTorsionSelfDuality :
    Option (PhaseTorsion ≃+ integralTorsionLedger.Coordinate)
  cohomologyGram :
    PositiveGram RealCohomology
  roundingExistence :
    RoundingExistenceCertificate lattice cohomologyGram
  phase :
    OrdinaryBocksteinPhase
      ContinuousTorus Phase PhaseTorsion
  phase_degree_agrees :
    phase.degree = degree
  state :
    TorsionRoundedState
      lattice cohomologyGram phase.extension
  /--
  The state-level Bockstein carrier is not a second, merely addressed torsion
  ledger. Its chain, degree, ledger object, and UCT coordinate equivalence are
  exactly the shell fields above.
  -/
  state_torsionChain_eq :
    state.torsionChain = chain
  state_torsionDegree_eq :
    state.torsionDegree = degree
  state_torsionLedger_eq :
    HEq state.torsionLedger integralTorsionLedger
  state_phaseTorsionUCT_eq :
    HEq state.torsionRepresentation.coordinates phaseTorsionUCT
  shellDigest : Digest
  shellCertificate : ObjectAddress

end

end Mathematics.Homology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Shell/Variant992e83f1730bc3fde3410bc0378e34331e2435182b654cee6527f098fc119349.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Shell/Variant992e83f1730bc3fde3410bc0378e34331e2435182b654cee6527f098fc119349.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2de5a19a4fe344399df980e0b77abd4b21619ed9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
