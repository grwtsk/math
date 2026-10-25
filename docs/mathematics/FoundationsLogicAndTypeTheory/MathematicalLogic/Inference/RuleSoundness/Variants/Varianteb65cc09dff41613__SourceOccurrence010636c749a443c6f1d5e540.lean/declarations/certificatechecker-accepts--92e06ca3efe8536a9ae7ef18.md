# CertificateChecker.Accepts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee1946106915b2fc108fec5b14d924345de2b59e068da5a79d03b4056bb51945",
  "kind": "def",
  "lexical_name": "CertificateChecker.Accepts",
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
  "slug": "certificatechecker-accepts--92e06ca3efe8536a9ae7ef18",
  "source": {
    "blob": "4153791eb7a4143cd72ed997202c8bea64266d2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92e06ca3efe8536a9ae7ef188d176f08f01a229ca22dba4ef8dff5f6a475e0dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee1946106915b2fc108fec5b14d924345de2b59e068da5a79d03b4056bb51945`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CertificateChecker.Accepts
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    (snapshot : Snapshot) (certificate : Certificate) (judgment : Judgment) : Prop :=
  checker.check snapshot certificate = .accept ∧
    checker.conclusion certificate = judgment

/-- Sound acceptance establishes the meaning of the exact accepted judgment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4153791eb7a4143cd72ed997202c8bea64266d2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
