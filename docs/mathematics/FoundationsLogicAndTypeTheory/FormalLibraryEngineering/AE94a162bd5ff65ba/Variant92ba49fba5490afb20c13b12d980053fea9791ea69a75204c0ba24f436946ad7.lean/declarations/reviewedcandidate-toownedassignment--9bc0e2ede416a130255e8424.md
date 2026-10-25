# ReviewedCandidate.toOwnedAssignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:824b69d58de2f1f64baea3c82edb817aabdb0be33d52aeaffd01fd1b20789730",
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
  "slug": "reviewedcandidate-toownedassignment--9bc0e2ede416a130255e8424",
  "source": {
    "blob": "01c3d038779f949c94876a11bff11dc3d8ee86ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE94a162bd5ff65ba/Variant92ba49fba5490afb20c13b12d980053fea9791ea69a75204c0ba24f436946ad7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bc0e2ede416a130255e84245a3ed9cc193ed3b1842258ab1f8757952de19aa5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE94a162bd5ff65ba/Variant92ba49fba5490afb20c13b12d980053fea9791ea69a75204c0ba24f436946ad7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:824b69d58de2f1f64baea3c82edb817aabdb0be33d52aeaffd01fd1b20789730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–42.

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

end Mathematics.Discovery
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE94a162bd5ff65ba/Variant92ba49fba5490afb20c13b12d980053fea9791ea69a75204c0ba24f436946ad7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE94a162bd5ff65ba/Variant92ba49fba5490afb20c13b12d980053fea9791ea69a75204c0ba24f436946ad7.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01c3d038779f949c94876a11bff11dc3d8ee86ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
