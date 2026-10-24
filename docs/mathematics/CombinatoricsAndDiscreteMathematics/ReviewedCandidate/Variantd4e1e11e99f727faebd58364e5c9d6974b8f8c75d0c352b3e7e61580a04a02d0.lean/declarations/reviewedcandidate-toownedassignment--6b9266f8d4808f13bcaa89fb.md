# ReviewedCandidate.toOwnedAssignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25984679592841bddcdb444bb8b494d752580cfc032341211083aad05c28563a",
  "kind": "def",
  "lexical_name": "ReviewedCandidate.toOwnedAssignment",
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
  "slug": "reviewedcandidate-toownedassignment--6b9266f8d4808f13bcaa89fb",
  "source": {
    "blob": "0075c4b19dca2524d7b84372679864b27e8d4406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b9266f8d4808f13bcaa89fb0848199ed3f006c5f1d6bf910055285c8321be0e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25984679592841bddcdb444bb8b494d752580cfc032341211083aad05c28563a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ReviewedCandidate.toOwnedAssignment
    (reviewed : ReviewedCandidate)
    (sourceDigest semanticFingerprint : Digest) : Assignment where
  entityId := reviewed.candidate.entityId
  disposition := .ownedBy reviewed.concept.id
  references := ∅
  sourceDigest := sourceDigest
  semanticFingerprint := semanticFingerprint
  evidence := reviewed.evidence
  evidenceDigest := reviewed.evidence.digest

/-- Candidate authority has no theorem-authority constructor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0075c4b19dca2524d7b84372679864b27e8d4406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
