# ReviewedCandidate.toOwnedAssignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d47a906a11553acebd3b0335030ee3c33cc9559f085e53723c6fbd9619152769",
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
  "slug": "reviewedcandidate-toownedassignment--b3c8b00ff93e289926ed9e3c",
  "source": {
    "blob": "1c2dc997c32f4c6904936bca23b15b0c43b9c989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE94a162bd5ff65ba/Variant3245d015b73dbbc0bd7120cd677582ef4920fc53f4914eafe183fbbdc459e405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3c8b00ff93e289926ed9e3c7831f67ac0da448a8fc30a3043793d3a31302d36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE94a162bd5ff65ba/Variant3245d015b73dbbc0bd7120cd677582ef4920fc53f4914eafe183fbbdc459e405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d47a906a11553acebd3b0335030ee3c33cc9559f085e53723c6fbd9619152769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–34.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE94a162bd5ff65ba/Variant3245d015b73dbbc0bd7120cd677582ef4920fc53f4914eafe183fbbdc459e405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE94a162bd5ff65ba/Variant3245d015b73dbbc0bd7120cd677582ef4920fc53f4914eafe183fbbdc459e405.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c2dc997c32f4c6904936bca23b15b0c43b9c989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
