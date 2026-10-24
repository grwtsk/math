# IncompatibleEndpointLinearScaleBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a84fbc15e69d8a992041d1438fa175beb4a33afe8521f139a0d566b77f56e556",
  "kind": "def",
  "lexical_name": "IncompatibleEndpointLinearScaleBound",
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
  "slug": "incompatibleendpointlinearscalebound--a623905c813099e1bf6f05d4",
  "source": {
    "blob": "aa5b568f8e02f958ecfeb5e8341b9105a6e2a35e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a623905c813099e1bf6f05d4f8e99e7bc8f6cd7bcde118950ff9c205a9be3bd0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a84fbc15e69d8a992041d1438fa175beb4a33afe8521f139a0d566b77f56e556`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IncompatibleEndpointLinearScaleBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
    coreLongIncompatibleTrivialBudgetPacket j +
        coreLongEndpointTrivialBudgetPacket j ≤
      C * (j + 2 : ℝ) * (((2 ^ j : ℕ) : ℝ))

/-- Even after a uniform O(j) one-depth payment, summing over all core depths
produces an O(j 2^j) certificate.  This theorem makes that scale loss explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa5b568f8e02f958ecfeb5e8341b9105a6e2a35e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
