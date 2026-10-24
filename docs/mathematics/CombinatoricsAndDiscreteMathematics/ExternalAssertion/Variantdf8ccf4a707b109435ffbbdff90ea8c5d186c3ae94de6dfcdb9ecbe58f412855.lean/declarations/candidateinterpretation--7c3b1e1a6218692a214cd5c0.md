# CandidateInterpretation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee56fdd60f9bbe9240fdf1c42eee183eed103786233574ef149cf9272bc947b1",
  "kind": "structure",
  "lexical_name": "CandidateInterpretation",
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
  "slug": "candidateinterpretation--7c3b1e1a6218692a214cd5c0",
  "source": {
    "blob": "299e55aee89fb785996f4ab414438bb5957263c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExternalAssertion/Variantdf8ccf4a707b109435ffbbdff90ea8c5d186c3ae94de6dfcdb9ecbe58f412855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c3b1e1a6218692a214cd5c0a42fc46ca39c44c39153f0c0e936abb753d578c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExternalAssertion/Variantdf8ccf4a707b109435ffbbdff90ea8c5d186c3ae94de6dfcdb9ecbe58f412855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee56fdd60f9bbe9240fdf1c42eee183eed103786233574ef149cf9272bc947b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CandidateInterpretation
    (text : TextCarrier) where
  source : Finset (Span text)
  proposedReading : ReadingClass
  proposedMeaning : MeaningPayload
  producer : EvidenceSourceKind
  authoritative : Bool := false

end Mathematics.SemanticTokenization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ExternalAssertion/Variantdf8ccf4a707b109435ffbbdff90ea8c5d186c3ae94de6dfcdb9ecbe58f412855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExternalAssertion/Variantdf8ccf4a707b109435ffbbdff90ea8c5d186c3ae94de6dfcdb9ecbe58f412855.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `299e55aee89fb785996f4ab414438bb5957263c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
