# id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6995a5e0a7ae95100c0ef2edc67a83202ef5b79fd8c7cacaa2fadde2c8b4a6b4",
  "kind": "def",
  "lexical_name": "id",
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
  "slug": "id--dcd97afc1a21f53f5db24c66",
  "source": {
    "blob": "4c5945c7a33a8a27bccdfef128a1c2a2dfc23c63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 111,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Relation/Variant87e0d727e16c738e64a07f1b4d79bf9d7b3ee367bd8ffd6eb4aa778980fc7ce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcd97afc1a21f53f5db24c66452fa7e9b3a7de92a175fb079ad818339a38e09b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Relation/Variant87e0d727e16c738e64a07f1b4d79bf9d7b3ee367bd8ffd6eb4aa778980fc7ce4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6995a5e0a7ae95100c0ef2edc67a83202ef5b79fd8c7cacaa2fadde2c8b4a6b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def id : RelationKind → RelationKindId
  | .sameConcept => ⟨"relation-kind:sameConcept"⟩
  | .aliasOf => ⟨"relation-kind:aliasOf"⟩
  | .supersedes => ⟨"relation-kind:supersedes"⟩
  | .deprecatedBy => ⟨"relation-kind:deprecatedBy"⟩
  | .instanceOf => ⟨"relation-kind:instanceOf"⟩
  | .specializes => ⟨"relation-kind:specializes"⟩
  | .generalizes => ⟨"relation-kind:generalizes"⟩
  | .substructureOf => ⟨"relation-kind:substructureOf"⟩
  | .memberOfFamily => ⟨"relation-kind:memberOfFamily"⟩
  | .assumes => ⟨"relation-kind:assumes"⟩
  | .implies => ⟨"relation-kind:implies"⟩
  | .equivalentTo => ⟨"relation-kind:equivalentTo"⟩
  | .contradicts => ⟨"relation-kind:contradicts"⟩
  | .refutes => ⟨"relation-kind:refutes"⟩
  | .proves => ⟨"relation-kind:proves"⟩
  | .discharges => ⟨"relation-kind:discharges"⟩
  | .constructs => ⟨"relation-kind:constructs"⟩
  | .induces => ⟨"relation-kind:induces"⟩
  | .restricts => ⟨"relation-kind:restricts"⟩
  | .extends => ⟨"relation-kind:extends"⟩
  | .completes => ⟨"relation-kind:completes"⟩
  | .quotients => ⟨"relation-kind:quotients"⟩
  | .dualizes => ⟨"relation-kind:dualizes"⟩
  | .generatedUnder => ⟨"relation-kind:generatedUnder"⟩
  | .formalizes => ⟨"relation-kind:formalizes"⟩
  | .implements => ⟨"relation-kind:implements"⟩
  | .represents => ⟨"relation-kind:represents"⟩
  | .encodes => ⟨"relation-kind:encodes"⟩
  | .decodes => ⟨"relation-kind:decodes"⟩
  | .renders => ⟨"relation-kind:renders"⟩
  | .approximates => ⟨"relation-kind:approximates"⟩
  | .reconstructs => ⟨"relation-kind:reconstructs"⟩
  | .contains => ⟨"relation-kind:contains"⟩
  | .incidentTo => ⟨"relation-kind:incidentTo"⟩
  | .boundaryOf => ⟨"relation-kind:boundaryOf"⟩
  | .fiberOf => ⟨"relation-kind:fiberOf"⟩
  | .sectionOf => ⟨"relation-kind:sectionOf"⟩
  | .projectionOf => ⟨"relation-kind:projectionOf"⟩
  | .transports => ⟨"relation-kind:transports"⟩
  | .preserves => ⟨"relation-kind:preserves"⟩
  | .evolvesTo => ⟨"relation-kind:evolvesTo"⟩
  | .foldsTo => ⟨"relation-kind:foldsTo"⟩
  | .surgeriesTo => ⟨"relation-kind:surgeriesTo"⟩
  | .refines => ⟨"relation-kind:refines"⟩
  | .similarTo => ⟨"relation-kind:similarTo"⟩
  | .analogousTo => ⟨"relation-kind:analogousTo"⟩
  | .opposedTo => ⟨"relation-kind:opposedTo"⟩
  | .contrastsWith => ⟨"relation-kind:contrastsWith"⟩
  | .explains => ⟨"relation-kind:explains"⟩
  | .motivates => ⟨"relation-kind:motivates"⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Relation/Variant87e0d727e16c738e64a07f1b4d79bf9d7b3ee367bd8ffd6eb4aa778980fc7ce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Relation/Variant87e0d727e16c738e64a07f1b4d79bf9d7b3ee367bd8ffd6eb4aa778980fc7ce4.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c5945c7a33a8a27bccdfef128a1c2a2dfc23c63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
