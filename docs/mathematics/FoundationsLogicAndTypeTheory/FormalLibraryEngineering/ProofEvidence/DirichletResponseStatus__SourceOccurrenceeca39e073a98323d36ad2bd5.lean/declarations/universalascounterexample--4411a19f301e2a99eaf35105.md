# universalASCounterexample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db59071f020e09c6b33db2ad06c6e8023dda2d799ba4c749f498b0e7d7244e85",
  "kind": "def",
  "lexical_name": "universalASCounterexample",
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
  "slug": "universalascounterexample--4411a19f301e2a99eaf35105",
  "source": {
    "blob": "1273d518e0a1f18187946945b02c104d799aa981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProofEvidence/DirichletResponseStatus.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4411a19f301e2a99eaf35105d432e7c8d12551dd917cce0c3137efb4ea0d8aab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/DirichletResponseStatus__SourceOccurrenceeca39e073a98323d36ad2bd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db59071f020e09c6b33db2ad06c6e8023dda2d799ba4c749f498b0e7d7244e85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def universalASCounterexample :
    ExternalResearchPacket PPNCP04.UniversalASConstructionObligation where
  metadata := { metadata "universal-as-actual-band-refutation"
      "Actual signed prime-band counterexample to universal AS"
      "euler-p04-rh/ASRefutation.lean"
      "No nonnegative reserve with a polynomial initial budget can satisfy AS uniformly on all admissible actual prime subsets."
      "ASBN interface replacement" with
    sourceKind := .counterexample
    contributors := ["Native source-preserving formalization"]
    contentHash := some "8f1ee39f9ba20cbdceca013e06783b9752b3318c74eebc16204ec45c18958a55"
    hypotheses := ["The failed interface requires nonnegative reserve and polynomial initial budget."]
    quantifiedDomain := "Every proposed legal reserve and constants C,q,eta; an actual admissible failed transition exists."
    constantsAndDependencies := ["Source P(T)=primeBand(3/4,T).",
      "Positive constant: BandGrowth.growthConstant.",
      "Actual energy lower bound c exp(T)/(1+T)^2 eventually for all real T.",
      "Unconditional Chebyshev estimates and prime-harmonic upper bound."]
    claimedSourceMap := "Literal primeState and sourceEnergy; composite delays vanish beyond the horizon; all Mobius signs remain."
    limitations := ["Refutes universal AS, not P04, RH, or the full completed pickup.",
      "Selected complete-chain construction and the full-mass narrow interface remain open."] }
  evidence := .refuted ASRefutation.universal_AS_refuted

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/DirichletResponseStatus__SourceOccurrenceeca39e073a98323d36ad2bd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProofEvidence/DirichletResponseStatus.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1273d518e0a1f18187946945b02c104d799aa981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
