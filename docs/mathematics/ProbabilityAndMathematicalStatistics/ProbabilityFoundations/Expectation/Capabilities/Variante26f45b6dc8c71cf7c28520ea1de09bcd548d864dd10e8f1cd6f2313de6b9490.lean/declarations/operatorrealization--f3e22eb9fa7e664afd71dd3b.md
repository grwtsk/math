# OperatorRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90b9bfad72286bbe630d8769e42dafda0cb53bc7f9d8c5410b8654b7d88070bc",
  "kind": "structure",
  "lexical_name": "OperatorRealization",
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
  "slug": "operatorrealization--f3e22eb9fa7e664afd71dd3b",
  "source": {
    "blob": "3697ae44294b8e62fc47c0099cdea9de0ade2bc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 139,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3e22eb9fa7e664afd71dd3b7d426bb8891b0f9ebd476aa060b9556d1bccf74a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90b9bfad72286bbe630d8769e42dafda0cb53bc7f9d8c5410b8654b7d88070bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OperatorRealization {Outcome Operator State : Type*}
    [Fintype Outcome]
    (packet : FinitePacket Outcome)
    (semantics : OperatorSemantics Operator State) where
  operator : Operator
  state : State
  operatorSelfAdjoint : semantics.selfAdjointOnStatedDomain operator
  statePositiveTraceClass : semantics.positiveTraceClass state
  stateTraceOne : semantics.trace state = 1
  evaluates : ∀ observable,
    semantics.functionalExpectation operator state observable =
      packet.spectralExpectation observable

/-- Provider vocabulary for unitary transport.  Conjugacy is deliberately a
relation so a provider must state the domains and analytic meaning appropriate
to its operator class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3697ae44294b8e62fc47c0099cdea9de0ade2bc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
