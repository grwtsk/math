# CertifiedSeparator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d70a63466bc04c8e70ab7bc23011f0e63580c71510af86318ee83cea54960651",
  "kind": "structure",
  "lexical_name": "CertifiedSeparator",
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
  "slug": "certifiedseparator--da701403ef8c73000fc3a378",
  "source": {
    "blob": "81f50af88cc202007486f4eb737d9c2ea76f5b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 40,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SeparatorObligation/Variant5736e0314701802838e6b1bc0945b1e4d939c0bea6e3c93607596dc500085fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da701403ef8c73000fc3a378c9510ad3303f8a791dba745b1ddcf9e994de6798",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SeparatorObligation/Variant5736e0314701802838e6b1bc0945b1e4d939c0bea6e3c93607596dc500085fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d70a63466bc04c8e70ab7bc23011f0e63580c71510af86318ee83cea54960651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedSeparator
    {Element : Type u}
    {OldProbe : Type v}
    {NewProbe : Type w}
    [DecidableEq Element]
    (oldEncode : Element → IncidenceCode OldProbe)
    (newEncode : Element → IncidenceCode NewProbe)
    (extension : ProbeExtension OldProbe NewProbe)
    (obligation : SeparatorObligation Element OldProbe) where
  conservative :
    ConservativeRefinement oldEncode newEncode extension
  separates :
    ∀ left ∈ obligation.residue.candidateFiber,
      ∀ right ∈ obligation.residue.candidateFiber,
        left ≠ right →
          newEncode left ≠ newEncode right

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SeparatorObligation/Variant5736e0314701802838e6b1bc0945b1e4d939c0bea6e3c93607596dc500085fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SeparatorObligation/Variant5736e0314701802838e6b1bc0945b1e4d939c0bea6e3c93607596dc500085fb6.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f50af88cc202007486f4eb737d9c2ea76f5b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
