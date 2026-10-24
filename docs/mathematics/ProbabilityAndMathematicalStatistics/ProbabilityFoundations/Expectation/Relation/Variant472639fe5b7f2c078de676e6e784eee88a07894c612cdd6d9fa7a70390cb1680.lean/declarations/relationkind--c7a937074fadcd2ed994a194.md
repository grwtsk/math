# RelationKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb861ee30845b4b88bc664999bb6248ce526365bb41e4bcfa1fc262738ed6af1",
  "kind": "inductive",
  "lexical_name": "RelationKind",
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
  "slug": "relationkind--c7a937074fadcd2ed994a194",
  "source": {
    "blob": "fa0c1febd8739e339d7b2b509aa75498b86f97ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 46,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Relation/Variant472639fe5b7f2c078de676e6e784eee88a07894c612cdd6d9fa7a70390cb1680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7a937074fadcd2ed994a19478dc5aa17db7dbcdb6b96564607c9aa360d793ea",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Relation/Variant472639fe5b7f2c078de676e6e784eee88a07894c612cdd6d9fa7a70390cb1680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb861ee30845b4b88bc664999bb6248ce526365bb41e4bcfa1fc262738ed6af1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive RelationKind
  -- identity and lifecycle
  | sameConcept
  | aliasOf
  | supersedes
  | deprecatedBy
  -- taxonomic
  | instanceOf
  | specializes
  | generalizes
  | substructureOf
  | memberOfFamily
  -- logical
  | assumes
  | implies
  | equivalentTo
  | contradicts
  | refutes
  | proves
  | discharges
  -- constructive
  | constructs
  | induces
  | restricts
  | extends
  | completes
  | quotients
  | dualizes
  | generatedUnder
  -- representational
  | formalizes
  | implements
  | represents
  | encodes
  | decodes
  | renders
  | approximates
  | reconstructs
  -- structural
  | contains
  | incidentTo
  | boundaryOf
  | fiberOf
  | sectionOf
  | projectionOf
  -- dynamic
  | transports
  | preserves
  | evolvesTo
  | foldsTo
  | surgeriesTo
  | refines
  -- rhetorical/navigation
  | similarTo
  | analogousTo
  | opposedTo
  | contrastsWith
  | explains
  | motivates
  deriving DecidableEq, Inhabited

/-- Governed relation metadata. Projection profiles store `RelationKindId`
rather than independently spelling relation names. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Relation/Variant472639fe5b7f2c078de676e6e784eee88a07894c612cdd6d9fa7a70390cb1680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Relation/Variant472639fe5b7f2c078de676e6e784eee88a07894c612cdd6d9fa7a70390cb1680.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa0c1febd8739e339d7b2b509aa75498b86f97ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
