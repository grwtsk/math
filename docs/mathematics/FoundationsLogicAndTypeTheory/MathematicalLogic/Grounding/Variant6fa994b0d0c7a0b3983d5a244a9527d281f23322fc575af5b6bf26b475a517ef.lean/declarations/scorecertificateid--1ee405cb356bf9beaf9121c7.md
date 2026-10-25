# scoreCertificateId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e2b6e6637bb40cb5b2a4838784f8e7737dc10fa050cffcede8b150304ade56b",
  "kind": "def",
  "lexical_name": "scoreCertificateId",
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
  "slug": "scorecertificateid--1ee405cb356bf9beaf9121c7",
  "source": {
    "blob": "c5e36f3f6dc6a0bdcd93c776b265705d93aa4e36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variant6fa994b0d0c7a0b3983d5a244a9527d281f23322fc575af5b6bf26b475a517ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ee405cb356bf9beaf9121c763534091600d7ae2ea9f7bc42cd0a9de43ee6e32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variant6fa994b0d0c7a0b3983d5a244a9527d281f23322fc575af5b6bf26b475a517ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e2b6e6637bb40cb5b2a4838784f8e7737dc10fa050cffcede8b150304ade56b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def scoreCertificateId
    (certificate : CertifiedRhetoricalGram)
    (score : RhetoricalNavigationScore) : StableId :=
  ⟨"daf:rhetorical-score:" ++ certificate.traceDigest.value ++ ":" ++
    toString (relationProfileTag score.profile) ++ ":" ++
    toString score.reportIndex⟩

/-- Digest of one theorem-cell rhetorical coordinate.  It binds the accepted
trace, exact concept bytes, role, point position, and symbolic factor column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variant6fa994b0d0c7a0b3983d5a244a9527d281f23322fc575af5b6bf26b475a517ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variant6fa994b0d0c7a0b3983d5a244a9527d281f23322fc575af5b6bf26b475a517ef.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5e36f3f6dc6a0bdcd93c776b265705d93aa4e36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
