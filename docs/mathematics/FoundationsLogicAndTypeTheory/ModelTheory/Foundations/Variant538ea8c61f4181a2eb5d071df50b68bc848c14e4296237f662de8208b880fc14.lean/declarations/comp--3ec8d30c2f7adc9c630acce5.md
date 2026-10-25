# comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78b97508aee645d4d3eee8bfd8337402759644d59c560540e38a2683ccbc6d7b",
  "kind": "def",
  "lexical_name": "comp",
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
  "slug": "comp--3ec8d30c2f7adc9c630acce5",
  "source": {
    "blob": "6993a469a8e3a08edcc7daffa51496abf318d034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ec8d30c2f7adc9c630acce5874d17669cf05b12a674e5a52b2422b0005e075b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78b97508aee645d4d3eee8bfd8337402759644d59c560540e38a2683ccbc6d7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comp
    {first middle last : Foundation}
    (left : FoundationInterpretation first middle)
    (right : FoundationInterpretation middle last) :
    FoundationInterpretation first last := by
  cases left with
  | identity leftArtifact =>
      cases right with
      | identity rightArtifact =>
          exact .identity first
            (VersionId.composite leftArtifact rightArtifact)
      | interpretation rightEvidence =>
          exact .interpretation {
            artifact := VersionId.composite leftArtifact rightEvidence.artifact
            designation := "identity followed by external interpretation"
            sourceEvidenceArtifacts :=
              leftArtifact :: rightEvidence.sourceEvidenceArtifacts
            evidenceNonempty := by simp
          }
  | interpretation leftEvidence =>
      cases right with
      | identity rightArtifact =>
          exact .interpretation {
            artifact := VersionId.composite leftEvidence.artifact rightArtifact
            designation := "external interpretation followed by identity"
            sourceEvidenceArtifacts :=
              leftEvidence.sourceEvidenceArtifacts ++ [rightArtifact]
            evidenceNonempty := by simp
          }
      | interpretation rightEvidence =>
          exact .interpretation {
            artifact := VersionId.composite
              leftEvidence.artifact rightEvidence.artifact
            designation := "composite external foundation interpretation"
            sourceEvidenceArtifacts :=
              leftEvidence.sourceEvidenceArtifacts ++
                rightEvidence.sourceEvidenceArtifacts
            evidenceNonempty := by
              intro hEmpty
              have leftEmpty : leftEvidence.sourceEvidenceArtifacts = [] := by
                have lengths := congrArg List.length hEmpty
                have parts :
                    leftEvidence.sourceEvidenceArtifacts = [] ∧
                      rightEvidence.sourceEvidenceArtifacts = [] := by
                  simpa using lengths
                exact parts.1
              exact leftEvidence.evidenceNonempty leftEmpty
          }

end FoundationInterpretation

/-- Status of a foundation claim whose metalogic is verified outside Lean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6993a469a8e3a08edcc7daffa51496abf318d034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
